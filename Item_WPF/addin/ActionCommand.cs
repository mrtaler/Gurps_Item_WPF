using System;
using System.Windows.Input;

namespace Item_WPF.addin
{
    public class ActionCommand : ICommand
    {
        private readonly Action _action;
        private bool _isExecutable;
        private Action<object> addMountslotCommand;

        //      private ObservableCollection<WeaponType> observableCollection;

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

        public ActionCommand(Action action, Action<object> addMountslotCommand)
        {
            this.addMountslotCommand = addMountslotCommand;
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