using Item_WPF.addin;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Item_WPF.MVVM.ViewModels
{
    public class BoxItemViewModel : ViewModelBase
    {
        private item1Entities _context;
        public ObservableCollection<AnyBoxNameType> anyBoxNameType111 { get; set; }
        public ObservableCollection<ItemClass> ItemsClass { get; set; }
        private AnyBoxNameType _bx;
        public AnyBoxNameType bx
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
        public BoxItem BoxItemforWork { get; set; }
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

            boxItem = new ObservableCollection<BoxItem>(_context.BoxItems);
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClasses);


            boxItem.CollectionChanged += new NotifyCollectionChangedEventHandler(boxItem_CollectionChanged);
            anyBoxNameType111.CollectionChanged += new NotifyCollectionChangedEventHandler(anyBoxNameType111_CollectionChanged);

            AddCommand = new ViewModelCommand(Add, true);
            RemCommand = new ViewModelCommand(Rem, true);
            Save = new DelegateCommand(SaveChanges);
            AddNewMainBoxCommand = new ViewModelCommand(AddNewMainBox, true);
            AddNewSubMainBoxCommand = new ViewModelCommand(AddNewSubMainBox, true);

            PropertyDependencyMap.Add("SelectedItClassforSort", new[] { "ItemsFromDB" });
        }
        #region Command
        #region Command public ViewModelCommand AddCommand { get; set; }
        private void Add(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            BoxItemforWork = null;
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
                //  SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (BoxItem item in e.NewItems)
                {
                    _context.BoxItems.Add(/*new BoxItem { ITEM = itemtobox, BoxName = Test, CountItems = 1 }*/item);
                }
            }
        }
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }
        public DelegateCommand Save { get; set; }


        private void anyBoxNameType111_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AnyBoxNameType item in e.OldItems)
                {
                    _context.AnyBoxNameTypes.Remove(item);
                }
                //  SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AnyBoxNameType item in e.NewItems)
                {
                    _context.AnyBoxNameTypes.Add(item);
                }
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
                    AnyBoxNameType2 = anyBoxNameType111.FirstOrDefault(p => p.id == param)
                }
                );
            SaveChanges(1);
            NotifyPropertyChanged("anyBoxNameType111");
        }

        public ViewModelCommand AddNewSubMainBoxCommand { get; set; }
        #endregion


    }
}
