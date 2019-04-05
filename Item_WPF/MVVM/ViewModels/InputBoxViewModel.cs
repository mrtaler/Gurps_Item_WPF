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
                return this._passinput;
            }

            set
            {
                if (this._passinput != value)
                {
                    this._passinput = value;
                    this.RaisePropertyChanged("passinput");
                }
            }
        }
        public string Title_caption { get; set; }
        public string Label_caption { get; set; }

        public InputBoxViewModel(string title_caption, string label_caption, string Pass)
        {
            this.Title_caption = title_caption;
            this.Label_caption = label_caption;
            this.passinput = Pass;
        }

        #region intrfeis
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion

    }
}
