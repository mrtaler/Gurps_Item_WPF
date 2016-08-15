using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    class NewBoxViewModel:ViewModelBase
    {
        private item1Entities _context;
        public ObservableCollection<Type_of_Box> BoxType { get; set; }
        public ObservableCollection<AnyBoxNameType> ParentBoxName { get; set; }
        public AnyBoxNameType NewBox { get; set; }
        public NewBoxViewModel()
        {
            NewBox = new AnyBoxNameType();
            _context = new item1Entities();
            BoxType = new ObservableCollection<Type_of_Box>(_context.Type_of_Box);
            ParentBoxName = new ObservableCollection<AnyBoxNameType>(_context.AnyBoxNameTypes);

            SaveCommand = new DelegateCommand(Save);
        }
        private void Save(object parameter)
        {
            _context.AnyBoxNameTypes.Add(NewBox);
            NewBox = new AnyBoxNameType()
            {
                nameOfBox = "new",
                ParentBoxName = null,
                TypeOfBox = 1
            };
            NotifyPropertyChanged("NewBox");
           // NotifyPropertyChanged("ParentBoxName");


            _context.SaveChanges();
        }

        public DelegateCommand SaveCommand { get; set; }
    }
}
