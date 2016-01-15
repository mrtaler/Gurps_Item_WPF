using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
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
        //private MainWindowViewModel _mvvm = new MainWindowViewModel();
        private item1Entities context;
        public ObservableCollection<AMMO> ammoOK { get; set; }
        public ObservableCollection<AMMO> ammoOK1 { get; set; }
        //{
        //    get { return this._ammoOK = new ObservableCollection<AMMO>(from z in context.AMMOes select z); }
        //}
        public caliber()
        {
            InitializeComponent();
            context = new item1Entities();
            // DataContext = _mvvm;
            ammoOK = new ObservableCollection<AMMO>(context.AMMOes);
            Caliber_dataGrid.ItemsSource = ammoOK;

            ammoOK.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);

        }



        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            //{
            //    try
            //    {
            //        int Caliber_id = (Caliber_dataGrid.SelectedItem as AMMO).id;
            //        AMMO ammoDel = (from p in context.AMMOes
            //                        where p.id == Caliber_id
            //                        select p).First();
            //        _ammoOK.Remove(ammoDel);
            //        context.AMMOes.Remove(ammoDel);
            //        context.SaveChanges();
            //        Caliber_dataGrid.Items.Refresh();
            //    }
            //    catch (Exception ex)
            //    {
            //        MessageBox.Show(ex.ToString());
            //    }
            //}
        }


        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {

            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AMMO item in e.OldItems)
                {
                    MessageBox.Show("dfg");
                }
            }
            //    //else if (e.Action == NotifyCollectionChangedAction.Add)
            //    //{
            //    //    foreach (AMMO item in e.NewItems)
            //    //    {
            //    //        //Added items
            //    //        item.PropertyChanged += EntityViewModelPropertyChanged;
            //    //    }
            //    //}
            //    if (e.NewItems != null)
            //        foreach (AMMO client in e.NewItems)
            //            context.AMMOes.Add(client);

            //}
            //public void EntityViewModelPropertyChanged(object sender, PropertyChangedEventArgs e)
            //{

            //    // This will get called when the property of an object inside the collection changes
            //    MessageBox.Show("dfg");
        }

        private void button_Click_1(object sender, RoutedEventArgs e)
        {

        }

        private void Caliber_dataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            if (e.EditAction == DataGridEditAction.Commit)
            {
                AMMO driver = e.Row.DataContext as AMMO;
                context.AMMOes.Add(driver);
            }
        }
    }
}
