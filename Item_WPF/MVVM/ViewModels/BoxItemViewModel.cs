using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

namespace Item_WPF.MVVM.ViewModels
{
    public class BoxItemViewModel : ViewModelBase
    {
        private ContextGurpsModel _context;
        public ObservableCollection<AnyBoxNameType> AnyBoxNameType111 { get; set; }
        public ObservableCollection<AnyBoxNameType> AnyBoxNameTypeAll { get; set; }
        public ObservableCollection<ItemClass> ItemsClass { get; set; }
        private AnyBoxNameType _bx;
        public AnyBoxNameType Bx
        {
            get
            {
                return this._bx;
            }

            set
            {
                if (this._bx != value)
                {
                    this._bx = value;
                    this.NotifyPropertyChanged("Bx");
                };
            }
        }
        private BoxItem _boxItemforWork;
        public BoxItem BoxItemforWork
        {
            get { return this._boxItemforWork; }
            set
            {
                if (this._boxItemforWork != value)
                {
                    this._boxItemforWork = value;
                    this.NotifyPropertyChanged("BoxItemforWork");
                }
            }
        }
        public Item ItemToBox { get; set; }
        public ObservableCollection<BoxItem> BoxItem { get; set; }
        #region public ObservableCollection<Item> ItemsFromDb
        public ObservableCollection<Item> ItemsFromDb
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
        private int _Test;
        public int Test
        {
            get { return this._Test; }
            set
            {
                if (this._Test != value)
                {
                    this._Test = value;
                    this.NotifyPropertyChanged("Test");
                    this.NotifyPropertyChanged("BoxItem");
                }
            }
        }
        public BoxItemViewModel(object parameter)
        {
            int Boxindex = Convert.ToInt32(parameter);
            this._context = new ContextGurpsModel();
            this.AnyBoxNameType111 = new ObservableCollection<AnyBoxNameType>(this._context.AnyBoxNameTypeDbSet.Where(p => p.ParentBoxName == null));
            this.AnyBoxNameTypeAll = new ObservableCollection<AnyBoxNameType>(this._context.AnyBoxNameTypeDbSet);
            this.BoxItem = new ObservableCollection<BoxItem>();
            this.ItemsClass = new ObservableCollection<ItemClass>(this._context.ItemClassDbSet);
            this.BoxItemforWork = null;

            this.AnyBoxNameType111.CollectionChanged += new NotifyCollectionChangedEventHandler(this.anyBoxNameType111_CollectionChanged);
            this.AnyBoxNameTypeAll.CollectionChanged += new NotifyCollectionChangedEventHandler(this.anyBoxNameTypeAll_CollectionChanged);
            this.AddCommand = new ViewModelCommand(this.Add, true);
            this.RemCommand = new ViewModelCommand(this.Rem, true);
            this.DellCommand = new ViewModelCommand(this.Dell, true);

            this.SelectedItemChangedCommand = new ViewModelCommand(this.SelectedItemChanged, true);

            this.Save = new ViewModelCommand(this.SaveChanges);
            this.AddNewMainBoxCommand = new ViewModelCommand(this.AddNewMainBox, true);
            this.AddNewSubMainBoxCommand = new ViewModelCommand(this.AddNewSubMainBox, true);
            this.PropertyDependencyMap.Add("SelectedItClassforSort", new[] { "ItemsFromDb" });



        }

        #region Command
        #region Command public ViewModelCommand SelectedItemChangedCommand { get; set; }
        private void SelectedItemChanged(object parameter)
        {
            int vx = Convert.ToInt32(parameter);

            // AnyBoxNameType vx = (parameter as AnyBoxNameType);
            this.BoxItem = new ObservableCollection<BoxItem>(this._context.BoxItemDbSet.Where(p => p.BoxName == vx));
            this.BoxItem.CollectionChanged += new NotifyCollectionChangedEventHandler(this.boxItem_CollectionChanged);
            this.NotifyPropertyChanged("BoxItem");
        }

        // private ViewModelCommand _SelectedItemChangedCommand;
        public ViewModelCommand SelectedItemChangedCommand { get; set; }
        #endregion


        #region Command public ViewModelCommand AddCommand { get; set; }
        private void Add(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            this.BoxItemforWork = this.BoxItem.Where(p => p.BoxName == param).FirstOrDefault(p => p.Item == this.ItemToBox);

            if (this.ItemToBox != null)
            {
                if (this.BoxItemforWork == null)
                {
                    this.BoxItem.Add(new BoxItem { Item = this.ItemToBox, BoxName = param, CountItems = 1 });
                    this.NotifyPropertyChanged("BoxItem");
                }
                else
                {
                    this.BoxItemforWork.CountItems += 1;
                    this.NotifyPropertyChanged("BoxItem");
                }
            }

            this.BoxItemforWork = null;
        }

        public ViewModelCommand AddCommand { get; set; }
        #endregion
        #region public ViewModelCommand RemCommand { get; set; }
        private void Rem(object parameter)
        {
            if (this.BoxItemforWork != null)
            {
                if (this.BoxItemforWork.CountItems > 1) this.BoxItemforWork.CountItems -= 1;
                else this.BoxItem.Remove(this.BoxItemforWork);
            }
        }

        public ViewModelCommand RemCommand { get; set; }
        #endregion
        #endregion
        private void boxItem_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (BoxItem item in e.OldItems)
                {
                    this._context.BoxItemDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (BoxItem item in e.NewItems)
                {
                    this._context.BoxItemDbSet.Add(/*new BoxItem { Item = itemtobox, BoxName = Test, CountItems = 1 }*/item);
                }

                this.SaveChanges(1);
            }
        }

        private void SaveChanges(object parameter)
        {
            this._context.SaveChanges();
        }

        public ViewModelCommand Save { get; set; }


        private void anyBoxNameTypeAll_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AnyBoxNameType item in e.OldItems)
                {
                    this._context.AnyBoxNameTypeDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    this._context.AnyBoxNameTypeDbSet.Add(item);
                }

                this.SaveChanges(1);
                this.NotifyPropertyChanged("AnyBoxNameTypes");
            }
        }

        private void anyBoxNameType111_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AnyBoxNameType item in e.OldItems)
                {
                    this._context.AnyBoxNameTypeDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    this._context.AnyBoxNameTypeDbSet.Add(item);
                }

                this.SaveChanges(1);
                this.NotifyPropertyChanged("AnyBoxNameTypes");
            }
        }

        #region public ViewModelCommand AddNewBoxCommand { get; set; }
        private void AddNewMainBox(object parameter)
        {
            this.AnyBoxNameType111.Add(new AnyBoxNameType { NameOfBox = "newBox", TypeOfBox = 1 });
            this.SaveChanges(1);

            this.NotifyPropertyChanged("AnyBoxNameType111");
        }

        public ViewModelCommand AddNewMainBoxCommand { get; set; }
        #endregion

        #region public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        private void AddNewSubMainBox(object parameter)
        {
            int param = Convert.ToInt32(parameter);

            this.AnyBoxNameType111.Add
                (
                new AnyBoxNameType
                {
                    NameOfBox = "newSubBox",
                    TypeOfBox = 1,
                    ParentBoxName = param
                }
                );
            this.SaveChanges(1);
            this.NotifyPropertyChanged("AnyBoxNameType111");
        }

        public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        #endregion

        #region public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        private void Dell(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            this.Bx = this._context.AnyBoxNameTypeDbSet.First(p => p.Id == param);
            this.AnyBoxNameTypeAll.Remove(this.Bx);
            this.NotifyPropertyChanged("AnyBoxNameType111");
        }

        public ViewModelCommand DellCommand { get; set; }
        #endregion

    }
}
