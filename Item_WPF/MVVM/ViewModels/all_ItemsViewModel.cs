using Item_WPF.addin;
using Item_WPF.MVVM.View;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class all_ItemsViewModel : ViewModelBase, IDisposable
    {
        protected Window Owner;
        private ContextGurpsModel _context;
        public string pass { get; set; }
        public ObservableCollection<ItemClass> ItemsClass { get; set; }
        #region  public ObservableCollection<Item> Items
        public ObservableCollection<Item> Items
        {
            get
            {
                if (SelectedItClassforSort == 1 || SelectedItClassforSort == 0 || SelectedItClassforSort == null)
                    return new ObservableCollection<Item>(_context.ItemDbSet);
                else return new ObservableCollection<Item>(_context.ItemDbSet.Where(p => p.UsItemClass == SelectedItClassforSort));
            }
        }
        #endregion
        #region public int? SelectedItClassforSort
        private int? _SelectedItClassforSort;
        public int? SelectedItClassforSort
        {
            get
            {
                return _SelectedItClassforSort;
            }
            set
            {
                if (_SelectedItClassforSort != value)
                {
                    _SelectedItClassforSort = value;
                    NotifyPropertyChanged("SelectedItClassforSort");
                }
            }
        }
        #endregion
        #region public  Item SelectedItemForWork
        private Item _SelectedItemForWork;
        public Item SelectedItemForWork
        {
            get
            {
                return _SelectedItemForWork;
            }
            set
            {
                if (_SelectedItemForWork != value)
                {
                    _SelectedItemForWork = value;
                    NotifyPropertyChanged("SelectedItemForWork");
                }
            }
        }
        #endregion

        public all_ItemsViewModel(Window owner, object param)
        {
            Owner = owner;
            _context = new ContextGurpsModel();
            string Param = param as string;
            //SelectedItClassforSort = _context.ItemClasses.FirstOrDefault(p => p.name.Contains(Param)).id;
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClassDbSet);

            Refresh = new ViewModelCommand(Refreshnew);
            CSelItem = new ViewModelCommand(CSelectedItem);
            Save = new ViewModelCommand(SaveChanges);
            CDelItem = new ViewModelCommand(DelItem);
            CNewItem = new ViewModelCommand(NewItem);
            PropertyDependencyMap.Add("SelectedItClassforSort", new[] { "Items" });
        }

        #region Command Refrekshnew
        private void Refreshnew(object parame)
        {
            _context?.Dispose();
            _context = new ContextGurpsModel();
            //  Items = new ObservableCollection<Item>(_context.ITEMs);
            SelectedItClassforSort = 1;
            //else Items = new ObservableCollection<Item>(_context.ITEMs.Where(p => p.usItemClass == SelectedItClassforSort));
        }
        public ViewModelCommand Refresh { get; set; }
        #endregion
        #region Command CSelectedItem
        private void CSelectedItem(object parameter)
        {
            if (SelectedItemForWork != null)
            {
                // if (SelectedItemForWork.used == false)// созаем сущьность для сравнения
                //  {
                int att = _context.ItemClassDbSet.FirstOrDefault(p => p.Name.Contains("Att")).Id;
                int gun = _context.ItemClassDbSet.FirstOrDefault(p => p.Name.Contains("Weapon")).Id;
                if (SelectedItemForWork.ItemSubClass.ItemClass.Id == gun)
                {
                    SelectedItemForWork.Used = true;
                    SelectedItemForWork.Dt = System.DateTime.UtcNow;
                    SaveChanges(1);
                    Weapon weapToEdit = _context.WeaponDbSet.First(p => p.UiIndex == SelectedItemForWork.UiIndex);
                    WeaponEditView avView = new WeaponEditView(weapToEdit);
                    avView.Owner = Owner;
                    bool? result = avView.ShowDialog();

                    if (result.HasValue && (result == true))
                    {
                        _context?.Dispose();
                        _context = new ContextGurpsModel();
                        NotifyPropertyChanged("SelectedItClassforSort");

                    }
                }
                else if (SelectedItemForWork.UsItemClass == att)
                {
                    SelectedItemForWork.Used = true;
                    SelectedItemForWork.Dt = System.DateTime.UtcNow;
                    SaveChanges(1);

                    AttacmentEditView attachNr = new AttacmentEditView(SelectedItemForWork);
                    attachNr.ShowDialog();
                }
                //}
                //else MessageBox.Show("no");                
            }
        }

        public ViewModelCommand CSelItem { get; set; }
        #endregion
        #region Command DelItem
        private void DelItem(object parameter)
        {
            //    if (item.used == false)
            //    {

            InputBoxView ib = new InputBoxView();
            InputBoxViewModel ib_datacontext = new InputBoxViewModel("Password for Del entity", "Type Password", "");
            ib.DataContext = ib_datacontext;
            ib.ShowDialog();
            pass = ib_datacontext.passinput;
            if (pass == "123")
            {
                MessageBox.Show("Correct Pass");
                _context.ItemDbSet.Remove(SelectedItemForWork);
                Items.Remove(SelectedItemForWork);
                _context.SaveChanges();
            }
            else MessageBox.Show("This rows is used");
        }

        public ViewModelCommand CDelItem { get; set; }
        #endregion
        #region Command Save
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }
        public ViewModelCommand Save { get; set; }
        #endregion
        #region Command NewItem
        private void NewItem(object parameter)
        {
            NewItemsView _newItemView = new NewItemsView();
            _newItemView.ShowDialog();
        }
        public ViewModelCommand CNewItem { get; set; }
        #endregion

        #region intrfeis       
        public void Dispose()
        {
            _context?.Dispose();
        }
        #endregion
    }
}
/*
        private void dataGridViewAllItems_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            bool ew2;
            //Item item1 = (Item)e.Row.Item;
            Item item1 = e.Row.DataContext as Item;
            if (item1 != null)
            {
                ew2 = item1.used;
                if (ew2) e.Row.Background = System.Windows.Media.Brushes.LightGreen;
                else e.Row.Background = System.Windows.Media.Brushes.White;
            }
        }
    }
}


*/
