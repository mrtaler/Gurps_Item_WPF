using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace Item_WPF
{
    public class MainWindowViewModel : INotifyPropertyChanged, IDisposable
    {
        private item1Entities context;
        /// <summary>
        /// Коллекция патронов .
        /// </summary>
        public ObservableCollection<AMMO> _ammoOK { get; private set; }
        public MainWindowViewModel()
        {
            context = new item1Entities();
            _ammoOK = new ObservableCollection<AMMO>(context.AMMOes);
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
        }
        private void SaveChanges()
        {
            context.SaveChanges();
        }
        public ActionCommand Save { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            if (PropertyChanged == null)
            {
                return;
            }
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        public void Dispose()
        {
            // мы должны освободить ресурсы контекста при удалении ViewModel
            context.Dispose();
        }
    }
    public class ActionCommand : ICommand
    {
        private Action _action;
        private bool _isExecutable;

        public bool IsExecutable
        {
            get { return _isExecutable; }
            set
            {
                _isExecutable = value;
                if (CanExecuteChanged == null)
                {
                    return;
                }
                CanExecuteChanged(this, new EventArgs());

            }
        }

        public ActionCommand(Action action)
        {
            _action = action;
        }

        /// <summary>
        /// Предикат показывает можно ли запускать команды при заданном аргументе.
        /// </summary>
        /// <param name="parameter"></param>
        /// <returns></returns>
        public bool CanExecute(object parameter)
        {
            return IsExecutable;
        }

        public event EventHandler CanExecuteChanged;

        /// <summary>
        /// Что должна выполнять команда
        /// </summary>
        /// <param name="parameter"></param>
        public void Execute(object parameter)
        {
            _action();
        }
    }

}