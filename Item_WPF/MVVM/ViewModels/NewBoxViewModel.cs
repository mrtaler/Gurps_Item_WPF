using System.Collections.ObjectModel;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

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
            this.NewBox = new AnyBoxNameType();
            this._context = new ContextGurpsModel();
            this.BoxType = new ObservableCollection<TypeOfBox>(this._context.TypeOfBoxeDbSet);
            this.ParentBoxName = new ObservableCollection<AnyBoxNameType>(this._context.AnyBoxNameTypeDbSet);

            this.SaveCommand = new ViewModelCommand(this.Save);
        }

        private void Save(object parameter)
        {
            this._context.AnyBoxNameTypeDbSet.Add(this.NewBox);
            this.NewBox = new AnyBoxNameType() { NameOfBox = "new", ParentBoxName = null, TypeOfBox = 1 };
            this.NotifyPropertyChanged("NewBox");

            // NotifyPropertyChanged("ParentBoxName");
            this._context.SaveChanges();
        }

        public ViewModelCommand SaveCommand { get; set; }
    }
}
