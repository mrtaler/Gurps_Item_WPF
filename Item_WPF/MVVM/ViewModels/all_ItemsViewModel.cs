using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;
using Item_WPF.MVVM.View;

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
                if (this.SelectedItClassforSort == 1 || this.SelectedItClassforSort == 0 || this.SelectedItClassforSort == null)
                    return new ObservableCollection<Item>(this._context.ItemDbSet);
                else return new ObservableCollection<Item>(this._context.ItemDbSet.Where(p => p.UsItemClass == this.SelectedItClassforSort));
            }
        }
        #endregion
        #region public int? SelectedItClassforSort
        private int? _SelectedItClassforSort;
        public int? SelectedItClassforSort
        {
            get
            {
                return this._SelectedItClassforSort;
            }

            set
            {
                if (this._SelectedItClassforSort != value)
                {
                    this._SelectedItClassforSort = value;
                    this.NotifyPropertyChanged("SelectedItClassforSort");
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
                return this._SelectedItemForWork;
            }

            set
            {
                if (this._SelectedItemForWork != value)
                {
                    this._SelectedItemForWork = value;
                    this.NotifyPropertyChanged("SelectedItemForWork");
                }
            }
        }
        #endregion

        public all_ItemsViewModel(Window owner, object param)
        {
            this.Owner = owner;
            this._context = new ContextGurpsModel();
            string Param = param as string;

            // SelectedItClassforSort = _context.ItemClasses.FirstOrDefault(p => p.name.Contains(Param)).id;
            this.ItemsClass = new ObservableCollection<ItemClass>(this._context.ItemClassDbSet);

            this.Refresh = new ViewModelCommand(this.Refreshnew);
            this.CSelItem = new ViewModelCommand(this.CSelectedItem);
            this.Save = new ViewModelCommand(this.SaveChanges);
            this.CDelItem = new ViewModelCommand(this.DelItem);
            this.CNewItem = new ViewModelCommand(this.NewItem);
            this.PropertyDependencyMap.Add("SelectedItClassforSort", new[] { "Items" });
        }

        #region Command Refrekshnew
        private void Refreshnew(object parame)
        {
            this._context?.Dispose();
            this._context = new ContextGurpsModel();

            // Items = new ObservableCollection<Item>(_context.ITEMs);
            this.SelectedItClassforSort = 1;

            // else Items = new ObservableCollection<Item>(_context.ITEMs.Where(p => p.usItemClass == SelectedItClassforSort));
        }

        public ViewModelCommand Refresh { get; set; }
        #endregion
        #region Command CSelectedItem
        private void CSelectedItem(object parameter)
        {
            if (this.SelectedItemForWork != null)
            {
                // if (SelectedItemForWork.used == false)// созаем сущьность для сравнения
                // {
                if (this.SelectedItemForWork.ItemSubClass.ItemClass.Name == "Weapon")
                {
                    this.SelectedItemForWork.Used = true;
                    this.SelectedItemForWork.Dt = DateTime.UtcNow;
                    this.SaveChanges(1);
                    Weapon weapToEdit =
                        this._context.WeaponDbSet.First(p => p.UiIndex == this.SelectedItemForWork.UiIndex);
                    WeaponEditView avView = new WeaponEditView(weapToEdit, this._context);
                    avView.Owner = this.Owner;
                    bool? result = avView.ShowDialog();

                    if (result.HasValue && (result == true))
                    {
                        this._context?.Dispose();
                        this._context = new ContextGurpsModel();
                        this.NotifyPropertyChanged("SelectedItClassforSort");
                    }
                }
                else if (this.SelectedItemForWork.ItemSubClass.ItemClass.Name == "Attachment")
                {
                    this.SelectedItemForWork.Used = true;
                    this.SelectedItemForWork.Dt = DateTime.UtcNow;
                    this.SaveChanges(1);

                    // ? todo remove
                    /*     AttacmentEditView attachNr = new AttacmentEditView((Attachment)SelectedItemForWork);
                         attachNr.ShowDialog();*/
                }

                // }
                // else MessageBox.Show("no");                
            }
        }

        public ViewModelCommand CSelItem { get; set; }
        #endregion
        #region Command DelItem
        private void DelItem(object parameter)
        {
            // if (item.used == false)
            // {
            InputBoxView ib = new InputBoxView();
            InputBoxViewModel ib_datacontext = new InputBoxViewModel("Password for Del entity", "Type Password", string.Empty);
            ib.DataContext = ib_datacontext;
            ib.ShowDialog();
            this.pass = ib_datacontext.passinput;
            if (this.pass == "123")
            {
                MessageBox.Show("Correct Pass");
                this._context.ItemDbSet.Remove(this.SelectedItemForWork);
                this.Items.Remove(this.SelectedItemForWork);
                this._context.SaveChanges();
            }
            else MessageBox.Show("This rows is used");
        }

        public ViewModelCommand CDelItem { get; set; }
        #endregion
        #region Command Save
        private void SaveChanges(object parameter)
        {
            this._context.SaveChanges();
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
            this._context?.Dispose();
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
