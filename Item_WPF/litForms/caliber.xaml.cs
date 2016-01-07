using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для caliber.xaml
    /// </summary>
    public partial class caliber : Window
    {
        item1Entities context = new item1Entities();
        public ObservableCollection<AMMO> ammoOK
        {
            get { return (ObservableCollection<AMMO>)GetValue(ItemsProperty); }
            set { SetValue(ItemsProperty, value); }
        }
        public caliber()
        {
            InitializeComponent();
            ammoOK = new ObservableCollection<AMMO>(from z in context.AMMOes select z);
            Loaded += MainWindow_Loaded;
           
            DeleteCommand = new MyCommand() { Collection = ammoOK };
        }
        void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            Caliber_dataGrid.ItemsSource = ammoOK;
        }
        class MyCommand : ICommand
        {
            public ObservableCollection<AMMO> Collection { get; set; }

            public bool CanExecute(object parameter)
            {
                return true;
            }
            public event EventHandler CanExecuteChanged;
            public void Execute(object parameter)
            {
                Collection.Remove(parameter as AMMO);        
            }
        }



        // Using a DependencyProperty as the backing store for Items.  This enables animation, styling, binding, etc...

        public static readonly DependencyProperty ItemsProperty =
            DependencyProperty.Register("Items", typeof(ObservableCollection<AMMO>), typeof(MainWindow), new PropertyMetadata(null));

        public ICommand DeleteCommand
        {
            get { return (ICommand)GetValue(DeleteCommandProperty); }
            set { SetValue(DeleteCommandProperty, value); }
        }

        // Using a DependencyProperty as the backing store for DeleteCommand.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty DeleteCommandProperty =
            DependencyProperty.Register("DeleteCommand", typeof(ICommand), typeof(MainWindow), new PropertyMetadata(null));
        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
        }
    }

}
