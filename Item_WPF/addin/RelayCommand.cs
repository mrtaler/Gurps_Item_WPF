using System;
using System.Windows.Input;

namespace Item_WPF.addin
{
    public class DelegateCommand : ICommand
    {
        private Action<object> _execute;
        private readonly Predicate<object> _canExecute;
        public event EventHandler CanExecuteChanged;

        public DelegateCommand(Action<object> execute, Predicate<object> canExecute)
        {
            _execute = execute;
            _canExecute = canExecute;
        }
        public DelegateCommand(Action<object> execute)
            : this(execute, null)
        {
        }
        public void Execute(object parameter)
        {
            if (!CanExecute(parameter))
            {
                return;
            }

            _execute(parameter);
        }
        public bool CanExecute(object parameter)
        {

            return _canExecute == null
                 || _canExecute(parameter);
        }

        public void RaiseCanExecuteChanged()
        {
            CanExecuteChanged?.Invoke(this, EventArgs.Empty);
        }
    }
    /* public class DelegateCommand : ICommand
    {
        private readonly Action<object> _execute;
        private readonly Predicate<object> _canExecute;
        public event EventHandler CanExecuteChanged;

        public DelegateCommand(Action<object> execute, Predicate<object> canExecute)
        {
            _execute = execute;
            _canExecute = canExecute;
        }
        public DelegateCommand(Action<object> execute)
            : this(execute, null)
        {
        }
        public void Execute(object parameter)
        {
            if (!CanExecute(parameter))
            {
                return;
            }

            _execute(parameter);
        }
        public bool CanExecute(object parameter)
        {
            return _canExecute == null
                 || _canExecute(parameter);
        }

        public void RaiseCanExecuteChanged()
        {
            CanExecuteChanged?.Invoke(this, EventArgs.Empty);
        }
    }*/


    /*   public class RelayCommand : ICommand
       {
           private Action<object> _execute;
           private Predicate<object> _canExecute;
           private event EventHandler CanExecuteChangedInternal;
           public RelayCommand(Action<object> execute)
               : this(execute, DefaultCanExecute)
           {
           }
           public RelayCommand(Action<object> execute, Predicate<object> canExecute)
           {
               if (execute == null)
               {
                   throw new ArgumentNullException("execute");
               }
               if (canExecute == null)
               {
                   throw new ArgumentNullException("canExecute");
               }
               _execute = execute;
               _canExecute = canExecute;
           }
           public event EventHandler CanExecuteChanged
           {
               add
               {
                   CommandManager.RequerySuggested += value;
                   CanExecuteChangedInternal += value;
               }
               remove
               {
                   CommandManager.RequerySuggested -= value;
                   CanExecuteChangedInternal -= value;
               }
           }
           public bool CanExecute(object parameter)
           {
               return _canExecute != null && _canExecute(parameter);
           }
           public void Execute(object parameter)
           {
               _execute(parameter);
           }
           public void OnCanExecuteChanged()
           {
               EventHandler handler = CanExecuteChangedInternal;
               if (handler != null)
               {
                   //DispatcherHelper.BeginInvokeOnUIThread(() => handler.Invoke(this, EventArgs.Empty));
                   handler.Invoke(this, EventArgs.Empty);
               }
           }
           public void Destroy()
           {
               _canExecute = _ => false;
               //_execute = _ => { /*return; };
           }

           private static bool DefaultCanExecute(object parameter)
   {
       return true;
   }
       }

       public class RelayCommand<T> : ICommand
   {
       private readonly Action<T> _execute;
       private readonly Predicate<T> _canExecute;

       /// <summary>
       /// Создано при вызове RaiseCanExecuteChanged.
       /// </summary>
       public event EventHandler CanExecuteChanged;

       /// <summary>
       /// Создает новую команду, которая всегда может выполняться.
       /// </summary>
       /// <param Name="execute">Логика выполнения.</param>
       public RelayCommand(Action<T> execute)
           : this(execute, null)
       {
       }

       /// <summary>
       /// Создает новую команду.
       /// </summary>
       /// <param Name="execute">Логика выполнения.</param>
       /// <param Name="canExecute">Логика состояния выполнения.</param>
       public RelayCommand(Action<T> execute, Predicate<T> canExecute)
       {
           if (execute == null)
               throw new ArgumentNullException("execute");
           _execute = execute;
           _canExecute = canExecute;
       }

       /// <summary>
       /// Определяет, можно ли выполнить эту команду <see cref="RelayCommand"/> в текущем состоянии.
       /// </summary>
       /// <param Name="parameter">
       /// Данные, используемые командой. Если команда не требует передачи данных, этот объект можно установить равным NULL.
       /// </param>
       /// <returns>true, если команда может быть выполнена; в противном случае - false.</returns>
       public bool CanExecute(object parameter)
       {
           return _canExecute == null ? true : _canExecute((T)parameter);
       }

       /// <summary>
       /// Выполняет <see cref="RelayCommand"/> текущей цели команды.
       /// </summary>
       /// <param Name="parameter">
       /// Данные, используемые командой. Если команда не требует передачи данных, этот объект можно установить равным NULL.
       /// </param>
       public void Execute(object parameter)
       {
           _execute((T)parameter);
       }

       /// <summary>
       /// Метод, используемый для создания события <see cref="CanExecuteChanged"/>
       /// чтобы показать, что возвращаемое значение <see cref="CanExecute"/>
       /// метод изменился.
       /// </summary>
       public void RaiseCanExecuteChanged()
       {
           var handler = CanExecuteChanged;
           if (handler != null)
           {
               handler(this, EventArgs.Empty);
           }
       }
   }

    */

    public class ActionCommand : ICommand
    {
        private readonly Action _action;
        private bool _isExecutable;
        private Action<object> param;

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

        public ActionCommand(Action<object> param)
        {
            this.param = param;
        }

        /// <summary>
        /// Предикат показывает можно ли запускать команды при заданном аргументе.
        /// </summary>
        /// <param Name="parameter"></param>
        /// <returns></returns>
        public bool CanExecute(object parameter)
        {
            return IsExecutable;
        }

        public event EventHandler CanExecuteChanged;

        /// <summary>
        /// Что должна выполнять команда
        /// </summary>
        /// <param Name="parameter"></param>
        public void Execute(object parameter)
        {
            _action();
        }
    }


    /*
    /// <summary>
    /// Класс ViewModelCommand – реализующий интерфейс ICommand, вызывает нужную функцию.
    /// </summary>
    public class Command : ICommand
    {
        /// <summary>
        /// Инициализация нового экземпляра класса без параметров <see cref="Command"/>.
        /// </summary>
        /// <param Name="action">Действие.</param>
        /// <param Name="canExecute">Если установлено в<c>true</c> [can execute] (выполнение разрешено).</param>
        public Command(Action action, bool canExecute = true)
        {
            //  Set the action.
            this.action = action;
            this.canExecute = canExecute;
        }

        /// <summary>
        /// Инициализация нового экземпляра класса с параметрами <see cref="Command"/> class.
        /// </summary>
        /// <param Name="parameterizedAction">Параметризированное действие.</param>
        /// <param Name="canExecute"> Если установлено в <c>true</c> [can execute](выполнение разрешено).</param>
        public Command(Action<object> parameterizedAction, bool canExecute = true)
        {
            //  Set the action.
            this.parameterizedAction = parameterizedAction;
            this.canExecute = canExecute;
        }

        /// <summary>
        /// Действие(или параметризованное действие) которое вызывается при активации команды.
        /// </summary>
        protected Action action = null;
        protected Action<object> parameterizedAction = null;

        /// <summary>
        /// Будевое значение, отвечающие за возможность выполнения команды.
        /// </summary>
        private bool canExecute = false;

        /// <summary>
        /// Установка /  получение значения, отвечающего за возможность выполнения команды
        /// </summary>
        /// <value>
        ///     <c>true</c> если выполнение разрешено; если запрещено - <c>false</c>.
        /// </value>
        public bool CanExecute
        {
            get { return canExecute; }
            set
            {
                if (canExecute != value)
                {
                    canExecute = value;
                    EventHandler canExecuteChanged = CanExecuteChanged;
                    if (canExecuteChanged != null)
                        canExecuteChanged(this, EventArgs.Empty);
                }
            }
        }

        /// <summary>
        /// Определяем метод, определющий, что выполнение команды допускается в текущем состоянии
        /// </summary>
        /// <param Name="parameter">Этот параметр используется командой.
        ///  Если команда вызывается без использования параметра,
        ///  то этот объект может быть установлен в  null.</param>
        /// <returns>
        /// > если выполнение команды разрешено; если запрещено - false.
        /// </returns>
        bool ICommand.CanExecute(object parameter)
        {
            return canExecute;
        }

        /// <summary>
        /// Задание метода, который будет вызван при активации команды.
        /// </summary>
        /// <param Name="parameter"> Этот параметр используется командой.
        ///  Если команда вызывается без использования параметра,
        ///  то этот объект может быть установлен в  null.</param>
        void ICommand.Execute(object parameter)
        {
            this.DoExecute(parameter);

        }

        /// <summary>
        ///  Вызывается, когда меняется возможность выполнения команды
        /// </summary>
        public event EventHandler CanExecuteChanged;




        /// <summary>
        /// Вызывается во время выполнения команды
        /// </summary>
        public event CancelCommandEventHandler Executing;

        /// <summary>
        /// Вызывается, когда команды выполнена
        /// </summary>
        public event CommandEventHandler Executed;


        protected void InvokeAction(object param)
        {
            Action theAction = action;
            Action<object> theParameterizedAction = parameterizedAction;
            if (theAction != null)
                theAction();
            else if (theParameterizedAction != null)
                theParameterizedAction(param);
        }

        protected void InvokeExecuted(CommandEventArgs args)
        {
            CommandEventHandler executed = Executed;

            //  Вызвать все события
            if (executed != null)
                executed(this, args);
        }

        protected void InvokeExecuting(CancelCommandEventArgs args)
        {
            CancelCommandEventHandler executing = Executing;

            //  Call the executed event.
            if (executing != null)
                executing(this, args);
        }

        /// <summary>
        /// Выполнение команды
        /// </summary>
        /// <param Name="param">The param.</param>
        public virtual void DoExecute(object param)
        {
            //  Вызывает выполнении команды с возможностью отмены
            CancelCommandEventArgs args =
               new CancelCommandEventArgs() { Parameter = param, Cancel = false };
            InvokeExecuting(args);

            //  Если событие было отменено -  останавливаем.
            if (args.Cancel)
                return;

            //  Вызываем действие с / без параметров, в зависимости от того. Какое было устанвленно.
            InvokeAction(param);

            //  Call the executed function.
            InvokeExecuted(new CommandEventArgs() { Parameter = param });
        }
    }*/

   

    
   

}

