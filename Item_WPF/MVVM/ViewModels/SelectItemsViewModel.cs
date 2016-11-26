using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Item_WPF.MVVM.ViewModels
{
    class SelectItemsViewModel : IDisposable
    {
        private item1Entities _context;
        private Window _win;
        private string _parametr;
        public ObservableCollection<ITEM> Items { get; set; }
        public ItemsForSortModel SelectedItems { get; set; }
        public ObservableCollection<ItemsForSortModel> IttForSort { get; set; }
        public SelectItemsViewModel(string Parametr, int? mount, Window win)
        {
            _win = win;
            CSelectItem = new ViewModelCommand(SelectItem, true);
            CSelectItemClose = new ViewModelCommand(SelectItemClose, true);
            SelectedItems = new ItemsForSortModel();
            _context = new item1Entities();
            Items = new ObservableCollection<ITEM>(_context.ITEMs);

            _parametr = Parametr;
            #region if (Parametr=="Weapon")
            if (Parametr == "Weapon")
            {
                IttForSort = new ObservableCollection<ItemsForSortModel>(_context.ITEMs.
                Where(p => p.ItemSubClass.ItemClass.name == Parametr).
                Select(p => new
                {
                    _uiIndex = p.uiIndex,
                    _szItemName = p.szItemName,
                    _ItemClassname = p.ItemSubClass.ItemClass.name,
                    _TL1name_TL = p.TL1.name_TL,
                    _LC1Name_LC = p.LC1.Name_LC,
                    _usPrice = p.usPrice
                })./*AsEnumerable().*/
                Select(an => new ItemsForSortModel
                {
                    ID = an._uiIndex,
                    Name = an._szItemName,
                    Class = an._ItemClassname,
                    TL = an._TL1name_TL,
                    LC = an._LC1Name_LC,
                    Price = an._usPrice
                }));
            }
            #endregion
            #region else if (Parametr=="Attachment")
            else if (Parametr == "Attachment")
            {

                ObservableCollection<ITEM> ITTFORSelect = new ObservableCollection<ITEM>(_context.ITEMs
                    .Where(p => p.ItemSubClass.ItemClass.name == Parametr));
                var q = (from p in _context.AvailableAttachSlots
                         where p.rAttachmentmount == mount && p.rATTACHMENTSLOT == 31958
                         select p.ITEM).ToList();

                IttForSort = new ObservableCollection<ItemsForSortModel>(//_context.AvailableAttachSlots.
                q.


                Where(p => p.ItemSubClass.ItemClass.name == Parametr).
                //Select(P => P.ITEM).
                Select(p => new
                {
                    _uiIndex = p.uiIndex,
                    _szItemName = p.szItemName,
                    _ItemClassname = p.ItemSubClass.ItemClass.name,
                    _TL1name_TL = p.TL1.name_TL,
                    _LC1Name_LC = p.LC1.Name_LC,
                    _usPrice = p.usPrice
                }).
                /*AsEnumerable().*/
                Select(an => new ItemsForSortModel
                {
                    ID = an._uiIndex,
                    Name = an._szItemName,
                    Class = an._ItemClassname,
                    TL = an._TL1name_TL,
                    LC = an._LC1Name_LC,
                    Price = an._usPrice
                }));
            }
            #endregion
        }

        public void Dispose()
        {
            _context.Dispose();
        }
        #region CSelectItem
        private void SelectItem(object parameter)
        {
            _win.Close();
        }
        public ViewModelCommand CSelectItem { get; set; }

        #endregion
        #region CSelectItemClose

        private void SelectItemClose(object parameter)
        {
            SelectedItems = null;
            _win.Close();
            Dispose();
        }

        public ViewModelCommand CSelectItemClose { get; set; }


        #endregion
    }
}
/*
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
                ItemsDataGrid.ItemsSource = .ToList();// шрузим таблицу итем вместе с подчненной записью
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
        /// <param Name="typeName">тип запускаемого конструктора</param>
        /// <param Name="attslot">слот для аттача</param>
        /// <param Name="attmount">тип точки крепления аттача</param>
        public SelectItems(string typeName, int attslot, int attmount)
        {
            _attSlot = attslot;
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();// открываем соединение с бд
                List<Attachment> att = (from p in context.Attachments
                                        where p.G_SubAttachClass == attslot && p.id_Attachmentmount == attmount
                                        select p).ToList();
                List<ITEM> itemsAtt = new List<ITEM>();
                foreach (var itt in att)
                {
                    var qwery = (from p in context.ITEMs
                                 where p.ItemClass.Name == typeName && p.ubClassIndex == itt.uiIndex
                                 select p).First();
                    itemsAtt.Add(qwery);
                }
                ItemsDataGrid.ItemsSource = (from p in itemsAtt
                                              select new
                                              {
                                                  p.uiIndex,
                                                  p.szItemName,
                                                  p.ItemClass.Name,
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
                        if ((cellContent as TextBlock).Text == "Weapon")
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
*/
