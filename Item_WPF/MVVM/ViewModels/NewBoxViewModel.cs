using Item_WPF.addin;
using System.Collections.ObjectModel;
using GurpsDb;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

namespace Item_WPF.MVVM.ViewModels
{
    class NewBoxViewModel : ViewModelBase
    {
        private ContextGurpsModel _context;
        public ObservableCollection<TypeOfBox> BoxType { get; set; }
        public ObservableCollection<AnyBoxNameType> ParentBoxName { get; set; }
        public AnyBoxNameType NewBox { get; set; }
        public NewBoxViewModel()
        {
            NewBox = new AnyBoxNameType();
            _context = new ContextGurpsModel();
            BoxType = new ObservableCollection<TypeOfBox>(_context.TypeOfBoxeDbSet);
            ParentBoxName = new ObservableCollection<AnyBoxNameType>(_context.AnyBoxNameTypeDbSet);

            SaveCommand = new ViewModelCommand(Save);
        }
        private void Save(object parameter)
        {
            _context.AnyBoxNameTypeDbSet.Add(NewBox);
            NewBox = new AnyBoxNameType()
            {
                NameOfBox = "new",
                ParentBoxName = null,
                TypeOfBox = 1
            };
            NotifyPropertyChanged("NewBox");
            // NotifyPropertyChanged("ParentBoxName");


            _context.SaveChanges();
        }

        public ViewModelCommand SaveCommand { get; set; }
    }
}
