using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Item_WPF.addin;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Select_Items.xaml
    /// </summary>
    public partial class SelectItems : Window
    {
        private bool _re33 = false;
        private int _attSlot = 0;

        public SelectItems()
        {
            InitializeComponent();
        }
        public SelectItems(int t1, string typeName)
        {
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {
                ItemsDataGrid.ItemsSource = (from p in context.ITEMs
                                              where p.ItemClass.name == typeName
                                              select new
                                              {
                                                  p.uiIndex,
                                                  p.szItemName,
                                                  p.ItemClass.name,
                                                  p.TL1.name_TL,
                                                  p.LC1.Name_LC,
                                                  p.usPrice
                                              }).ToList();// шрузим таблицу итем вместе с подчненной записью
                ItemsDataGrid.SelectedValuePath = "uiIndex";
            }
        }

        public SelectItems(int att)
        {
            _re33 = true;
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {

                context.Database.Connection.Open();// открываем соединение с бд
                ItemsDataGrid.ItemsSource = context.CombineWeaps.Select(s => new
                {
                    s.id,
                    s.IdWeapon,
                    s.ScopeSelect,
                    s.LaserSelect,
                    s.LightSelect,
                    s.BipodSelect,
                    s.SilenserSelect,
                    s.LauncherSelect,
                    s.BayonetSelect,
                    s.MagazineSelect,
                    s.InternalSelect,
                    s.ExternalSelect,
                    s.StockSelect
                }).ToList(); // gрузим таблицу итем вместе с подчненной записью

                ItemsDataGrid.SelectedValuePath = "id";
                context.Database.Connection.Close();
            }

        }
        /// <summary>
        /// конструктор для поиска аттачей
        /// </summary>
        /// <param name="typeName">тип запускаемого конструктора</param>
        /// <param name="attslot">слот для аттача</param>
        /// <param name="attmount">тип точки крепления аттача</param>
        public SelectItems(string typeName, int attslot, int attmount)
        {
            _attSlot = attslot;
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();// открываем соединение с бд
                List<Attachment> att = (from p in context.Attachments
                                        where p.G_SubAttachClass1.ATTACHMENTSLOT1 == attslot && p.id_Attachmentmount == attmount
                                        select p).ToList();
                List<ITEM> itemsAtt = new List<ITEM>();
                foreach (var itt in att)
                {
                    var qwery = (from p in context.ITEMs
                                 where p.ItemClass.name == typeName && p.ubClassIndex == itt.uiIndex
                                 select p).First();
                    itemsAtt.Add(qwery);
                }
                ItemsDataGrid.ItemsSource = (from p in itemsAtt
                                              select new
                                              {
                                                  p.uiIndex,
                                                  p.szItemName,
                                                  p.ItemClass.name,
                                                  p.TL1.name_TL,
                                                  p.LC1.Name_LC,
                                                  p.usPrice
                                              }).ToList();
                ItemsDataGrid.SelectedValuePath = "uiIndex";
                context.Database.Connection.Close();
            }
        }

        private void Select_button_Click(object sender, RoutedEventArgs e)
        {
            Combine_weap main = this.Owner as Combine_weap;


            if (main != null)
            {
                if (_re33)
                {
                    string s = "selected saved weapon";
                    main.Label.Content = s + " " + Convert.ToInt32(ItemsDataGrid.SelectedValue);
                }
                else
                {
                    if (ItemsDataGrid.SelectedIndex != -1)
                    {
                        main.IdItemWeaposn = Convert.ToInt32(ItemsDataGrid.SelectedValue);// нходим ИД выделенной строки

                        if (ItemsDataGrid.SelectedItems.Count == 0) return;
                        var selectedCell = ItemsDataGrid.SelectedCells[2];
                        var cellContent = selectedCell.Column.GetCellContent(selectedCell.Item);
                        if ((cellContent as TextBlock).Text == "Gun")
                            WeaponCombine.IdWeaponItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        //if (cellContent is TextBlock) MessageBox.Show((cellContent as TextBlock).Text);

                        
                        else if (_attSlot == 1) WeaponCombine.IdScopeItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 2) WeaponCombine.IdLaserItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 3) WeaponCombine.IdLightItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 4) WeaponCombine.IdBipodItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 5) WeaponCombine.IdSilenserItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 6) WeaponCombine.IdLauncherItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 7) WeaponCombine.IdStockItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 8) WeaponCombine.IdBayonetItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 9) WeaponCombine.IdMagazineItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 10) WeaponCombine.IdInternalItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        else if (_attSlot == 11) WeaponCombine.IdExternalItem = Convert.ToInt32(ItemsDataGrid.SelectedValue);
                        this.Close();
                    }
                    else this.Close();
                }
            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Combine_weap main = this.Owner as Combine_weap;
            if (main != null)
            {
                main.IdItemWeaposn = 0;
            }
            this.Close();
        }
    }
}
