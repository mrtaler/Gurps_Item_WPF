using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using System;

using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;

namespace Item_WPF.MVVM.ViewModels
{
    public class BoxItemViewModel : ViewModelBase
    {
        private item1Entities _context;
        public ObservableCollection<AnyBoxNameType> anyBoxNameType111 { get; set; }
        public ObservableCollection<AnyBoxNameType> anyBoxNameTypeAll { get; set; }
        public ObservableCollection<ItemClass> ItemsClass { get; set; }
        private ItemEntityModel.AnyBoxNameType _bx;
        public ItemEntityModel.AnyBoxNameType bx
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
                    NotifyPropertyChanged("bx");
                };
            }
        }
        private ItemEntityModel.BoxItem _BoxItemforWork;
        public ItemEntityModel.BoxItem BoxItemforWork
        {
            get { return _BoxItemforWork; }
            set
            {
                if (_BoxItemforWork != value)
                {
                    _BoxItemforWork = value;                   
                    NotifyPropertyChanged("boxItem");
                }
            }
        }
        public ITEM itemtobox { get; set; }
        public ObservableCollection<BoxItem> boxItem { get; set; }
        #region public ObservableCollection<ITEM> ItemsFromDB
        public ObservableCollection<ITEM> ItemsFromDB
        {
            get
            {
                if (SelectedItClassforSort == 1 || SelectedItClassforSort == 0 || SelectedItClassforSort == null)
                    return new ObservableCollection<ITEM>(_context.ITEMs);
                else return new ObservableCollection<ITEM>(_context.ITEMs.Where(p => p.usItemClass == SelectedItClassforSort));
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
                    NotifyPropertyChanged("boxItem");
                }
            }
        }
        public BoxItemViewModel(object parameter)
        {
            int Boxindex = Convert.ToInt32(parameter);
            _context = new item1Entities();
            anyBoxNameType111 = new ObservableCollection<AnyBoxNameType>(_context.AnyBoxNameTypes.Where(p => p.ParentBoxName == null));
            anyBoxNameTypeAll = new ObservableCollection<AnyBoxNameType>(_context.AnyBoxNameTypes);
           boxItem = new ObservableCollection<BoxItem>();
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClasses);
            BoxItemforWork = null;

            anyBoxNameType111.CollectionChanged += new NotifyCollectionChangedEventHandler(anyBoxNameType111_CollectionChanged);
            anyBoxNameTypeAll.CollectionChanged += new NotifyCollectionChangedEventHandler(anyBoxNameTypeAll_CollectionChanged);
            AddCommand = new ViewModelCommand(Add, true);
            RemCommand = new ViewModelCommand(Rem, true);
            DellCommand = new ViewModelCommand(Dell, true);


            SelectedItemChangedCommand=new ViewModelCommand(SelectedItemChanged, true);



            Save = new ViewModelCommand(SaveChanges);
            AddNewMainBoxCommand = new ViewModelCommand(AddNewMainBox, true);
            AddNewSubMainBoxCommand = new ViewModelCommand(AddNewSubMainBox, true);
            PropertyDependencyMap.Add("SelectedItClassforSort", new[] { "ItemsFromDB" });
            
            

        }
        #region Command
        #region Command public ViewModelCommand SelectedItemChangedCommand { get; set; }
        private void SelectedItemChanged(object parameter)
        {
            int vx = System.Convert.ToInt32(parameter);
            // AnyBoxNameType vx = (parameter as AnyBoxNameType);
            
       
                boxItem = new ObservableCollection<BoxItem>(_context.BoxItems.Where(p => p.BoxName == vx));
            boxItem.CollectionChanged += new NotifyCollectionChangedEventHandler(boxItem_CollectionChanged);
            NotifyPropertyChanged("boxItem");
        }
        //private ViewModelCommand _SelectedItemChangedCommand;
        public ViewModelCommand SelectedItemChangedCommand { get; set; }
         #endregion


        #region Command public ViewModelCommand AddCommand { get; set; }
        private void Add(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            BoxItemforWork = boxItem.Where(p => p.BoxName == param).FirstOrDefault(p => p.ITEM == itemtobox);

            if (itemtobox != null)
            {
                if (BoxItemforWork == null)
                {
                    boxItem.Add(new BoxItem { ITEM = itemtobox, BoxName = param, CountItems = 1 });
                    NotifyPropertyChanged("boxItem");
                }
                else
                {
                    BoxItemforWork.CountItems += 1;
                    NotifyPropertyChanged("boxItem");
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
                else boxItem.Remove(BoxItemforWork);
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
                    _context.BoxItems.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (BoxItem item in e.NewItems)
                {
                    _context.BoxItems.Add(/*new BoxItem { ITEM = itemtobox, BoxName = Test, CountItems = 1 }*/item);
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
                    _context.AnyBoxNameTypes.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    _context.AnyBoxNameTypes.Add(item);
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
                    _context.AnyBoxNameTypes.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    _context.AnyBoxNameTypes.Add(item);
                }
                SaveChanges(1);
                NotifyPropertyChanged("AnyBoxNameTypes");
            }
        }
        #region public ViewModelCommand AddNewBoxCommand { get; set; }
        private void AddNewMainBox(object parameter)
        {
            anyBoxNameType111.Add(new AnyBoxNameType { nameOfBox = "newBox", TypeOfBox = 1 });
            SaveChanges(1);

            NotifyPropertyChanged("anyBoxNameType111");
        }

        public ViewModelCommand AddNewMainBoxCommand { get; set; }
        #endregion

        #region public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        private void AddNewSubMainBox(object parameter)
        {
            int param = Convert.ToInt32(parameter);

            anyBoxNameType111.Add
                (
                new AnyBoxNameType
                {
                    nameOfBox = "newSubBox",
                    TypeOfBox = 1,
                    ParentBoxName = param
                }
                );
            SaveChanges(1);
            NotifyPropertyChanged("anyBoxNameType111");
        }

        public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        #endregion

        #region public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        private void Dell(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            bx = _context.AnyBoxNameTypes.First(p => p.id == param);
            anyBoxNameTypeAll.Remove(bx);          
            NotifyPropertyChanged("anyBoxNameType111");
        }

        public ViewModelCommand DellCommand { get; set; }
        #endregion       
       
    }   
}
