using Item_WPF.addin;

using Item_WPF.MVVM.Models;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using GurpsDb;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.ViewModels
{
    class SelectItemsViewModel : IDisposable
    {
        private ContextGurpsModel _context;
        private Window _win;
        private string _parametr;
        public ObservableCollection<GurpsDb.GurpsModel.Item> Items { get; set; }
        public ItemsForSortModel SelectedItems { get; set; }
        public ObservableCollection<ItemsForSortModel> IttForSort { get; set; }
        public SelectItemsViewModel(string parametr, int? mount, Window win)
        {
            _win = win;
            CSelectItem = new ViewModelCommand(SelectItem);
            CSelectItemClose = new ViewModelCommand(SelectItemClose);
            SelectedItems = new ItemsForSortModel();
            _context = new ContextGurpsModel();
            Items = new ObservableCollection<GurpsDb.GurpsModel.Item>(_context.ItemDbSet);

            _parametr = parametr;
            #region if (parametr=="Weapon")
            if (parametr == "Weapon")
            {
                IttForSort = new ObservableCollection<ItemsForSortModel>(_context.ItemDbSet.
                Where(p => p.ItemSubClass.ItemClass.Name == parametr).
                Select(p => new
                {
                    _uiIndex = p.UiIndex,
                    _szItemName = p.SzItemName,
                    _ItemClassname = p.ItemSubClass.ItemClass.Name,
                    _TL1name_TL = p.Tl1.NameTl,
                    _LC1Name_LC = p.Lc1.NameLc,
                    _usPrice = p.UsPrice
                })./*AsEnumerable().*/
                Select(an => new ItemsForSortModel
                {
                    Id = an._uiIndex,
                    Name = an._szItemName,
                    Class = an._ItemClassname,
                    Tl = an._TL1name_TL,
                    Lc = an._LC1Name_LC,
                    Price = an._usPrice
                }));
            }
            #endregion
            #region else if (parametr=="Attachment")
            else if (parametr == "Attachment")
            {

                ObservableCollection<GurpsDb.GurpsModel.Item> ITTFORSelect = new ObservableCollection<GurpsDb.GurpsModel.Item>(_context.ItemDbSet
                    .Where(p => p.ItemSubClass.ItemClass.Name == parametr));
                var q = (from p in _context.AvailableAttachSlotDbSet
                         where p.RAttachmentmount == mount && p.RAttachmentslot == 31958
                         select p.Item).ToList();

                IttForSort = new ObservableCollection<ItemsForSortModel>(//_context.AvailableAttachSlots.
                q.


                Where(p => p.ItemSubClass.ItemClass.Name == parametr).
                //Select(P => P.Item).
                Select(p => new
                {
                    _uiIndex = p.UiIndex,
                    _szItemName = p.SzItemName,
                    _ItemClassname = p.ItemSubClass.ItemClass.Name,
                    _TL1name_TL = p.Tl1.NameTl,
                    _LC1Name_LC = p.Lc1.NameLc,
                    _usPrice = p.UsPrice
                }).
                /*AsEnumerable().*/
                Select(an => new ItemsForSortModel
                {
                    Id = an._uiIndex,
                    Name = an._szItemName,
                    Class = an._ItemClassname,
                    Tl = an._TL1name_TL,
                    Lc = an._LC1Name_LC,
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
                                        where p.G_SubAttachClass == attslot && p.id_Attachmentmount == attmount
                                        select p).ToList();
                List<Item> itemsAtt = new List<Item>();
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
