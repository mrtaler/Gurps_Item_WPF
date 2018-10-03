using Item_WPF.addin;
using System;

using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using GurpsDb;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

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
                return _bx;
            }
            set
            {
                if (_bx != value)
                {
                    _bx = value;
                    NotifyPropertyChanged("Bx");
                };
            }
        }
        private BoxItem _boxItemforWork;
        public BoxItem BoxItemforWork
        {
            get { return _boxItemforWork; }
            set
            {
                if (_boxItemforWork != value)
                {
                    _boxItemforWork = value;
                    NotifyPropertyChanged("BoxItemforWork");
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
        private int _Test;
        public int Test
        {
            get { return _Test; }
            set
            {
                if (_Test != value)
                {
                    _Test = value;
                    NotifyPropertyChanged("Test");
                    NotifyPropertyChanged("BoxItem");
                }
            }
        }
        public BoxItemViewModel(object parameter)
        {
            int Boxindex = Convert.ToInt32(parameter);
            _context = new ContextGurpsModel();
            AnyBoxNameType111 = new ObservableCollection<AnyBoxNameType>(_context.AnyBoxNameTypeDbSet.Where(p => p.ParentBoxName == null));
            AnyBoxNameTypeAll = new ObservableCollection<AnyBoxNameType>(_context.AnyBoxNameTypeDbSet);
            BoxItem = new ObservableCollection<BoxItem>();
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClassDbSet);
            BoxItemforWork = null;

            AnyBoxNameType111.CollectionChanged += new NotifyCollectionChangedEventHandler(anyBoxNameType111_CollectionChanged);
            AnyBoxNameTypeAll.CollectionChanged += new NotifyCollectionChangedEventHandler(anyBoxNameTypeAll_CollectionChanged);
            AddCommand = new ViewModelCommand(Add, true);
            RemCommand = new ViewModelCommand(Rem, true);
            DellCommand = new ViewModelCommand(Dell, true);


            SelectedItemChangedCommand = new ViewModelCommand(SelectedItemChanged, true);



            Save = new ViewModelCommand(SaveChanges);
            AddNewMainBoxCommand = new ViewModelCommand(AddNewMainBox, true);
            AddNewSubMainBoxCommand = new ViewModelCommand(AddNewSubMainBox, true);
            PropertyDependencyMap.Add("SelectedItClassforSort", new[] { "ItemsFromDb" });



        }
        #region Command
        #region Command public ViewModelCommand SelectedItemChangedCommand { get; set; }
        private void SelectedItemChanged(object parameter)
        {
            int vx = System.Convert.ToInt32(parameter);
            // AnyBoxNameType vx = (parameter as AnyBoxNameType);


            BoxItem = new ObservableCollection<BoxItem>(_context.BoxItemDbSet.Where(p => p.BoxName == vx));
            BoxItem.CollectionChanged += new NotifyCollectionChangedEventHandler(boxItem_CollectionChanged);
            NotifyPropertyChanged("BoxItem");
        }
        //private ViewModelCommand _SelectedItemChangedCommand;
        public ViewModelCommand SelectedItemChangedCommand { get; set; }
        #endregion


        #region Command public ViewModelCommand AddCommand { get; set; }
        private void Add(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            BoxItemforWork = BoxItem.Where(p => p.BoxName == param).FirstOrDefault(p => p.Item == ItemToBox);

            if (ItemToBox != null)
            {
                if (BoxItemforWork == null)
                {
                    BoxItem.Add(new BoxItem { Item = ItemToBox, BoxName = param, CountItems = 1 });
                    NotifyPropertyChanged("BoxItem");
                }
                else
                {
                    BoxItemforWork.CountItems += 1;
                    NotifyPropertyChanged("BoxItem");
                }
            }
            BoxItemforWork = null;
        }
        public ViewModelCommand AddCommand { get; set; }
        #endregion
        #region public ViewModelCommand RemCommand { get; set; }
        private void Rem(object parameter)
        {
            if (BoxItemforWork != null)
            {
                if (BoxItemforWork.CountItems > 1) BoxItemforWork.CountItems -= 1;
                else BoxItem.Remove(BoxItemforWork);
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
                    _context.BoxItemDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (BoxItem item in e.NewItems)
                {
                    _context.BoxItemDbSet.Add(/*new BoxItem { Item = itemtobox, BoxName = Test, CountItems = 1 }*/item);
                }
                SaveChanges(1);
            }
        }
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }
        public ViewModelCommand Save { get; set; }


        private void anyBoxNameTypeAll_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AnyBoxNameType item in e.OldItems)
                {
                    _context.AnyBoxNameTypeDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    _context.AnyBoxNameTypeDbSet.Add(item);
                }
                SaveChanges(1);
                NotifyPropertyChanged("AnyBoxNameTypes");
            }
        }
        private void anyBoxNameType111_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AnyBoxNameType item in e.OldItems)
                {
                    _context.AnyBoxNameTypeDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    _context.AnyBoxNameTypeDbSet.Add(item);
                }
                SaveChanges(1);
                NotifyPropertyChanged("AnyBoxNameTypes");
            }
        }
        #region public ViewModelCommand AddNewBoxCommand { get; set; }
        private void AddNewMainBox(object parameter)
        {
            AnyBoxNameType111.Add(new AnyBoxNameType { NameOfBox = "newBox", TypeOfBox = 1 });
            SaveChanges(1);

            NotifyPropertyChanged("AnyBoxNameType111");
        }

        public ViewModelCommand AddNewMainBoxCommand { get; set; }
        #endregion

        #region public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        private void AddNewSubMainBox(object parameter)
        {
            int param = Convert.ToInt32(parameter);

            AnyBoxNameType111.Add
                (
                new AnyBoxNameType
                {
                    NameOfBox = "newSubBox",
                    TypeOfBox = 1,
                    ParentBoxName = param
                }
                );
            SaveChanges(1);
            NotifyPropertyChanged("AnyBoxNameType111");
        }

        public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        #endregion

        #region public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        private void Dell(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            Bx = _context.AnyBoxNameTypeDbSet.First(p => p.Id == param);
            AnyBoxNameTypeAll.Remove(Bx);
            NotifyPropertyChanged("AnyBoxNameType111");
        }

        public ViewModelCommand DellCommand { get; set; }
        #endregion

    }
}
