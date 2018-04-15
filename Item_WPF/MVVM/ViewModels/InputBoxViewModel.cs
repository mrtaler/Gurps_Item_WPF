using System.ComponentModel;

namespace Item_WPF.MVVM.ViewModels
{
    class InputBoxViewModel : INotifyPropertyChanged
    {
        private string _passinput;
        public string passinput
        {
            get
            {
                return _passinput;
            }
            set
            {
                if (_passinput != value)
                {
                    _passinput = value;
                    RaisePropertyChanged("passinput");
                }
            }
        }
        public string Title_caption { get; set; }
        public string Label_caption { get; set; }

        public InputBoxViewModel(string title_caption, string label_caption, string Pass)
        {
            Title_caption = title_caption;
            Label_caption = label_caption;
            passinput = Pass;
        }

        #region intrfeis
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion

    }
}
