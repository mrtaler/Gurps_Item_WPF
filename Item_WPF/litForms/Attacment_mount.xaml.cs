using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
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
    /// Логика взаимодействия для Attacment_mount.xaml
    /// </summary>
    public partial class Attacment_mount : Window
    {
        private item1Entities context;
        private int _slot;
        private ObservableCollection<Attachmentmount> Avv_att_slot_OK { get; set; }
        public Attacment_mount()
        { InitializeComponent(); }
        public Attacment_mount(int slot)
        {
            _slot = slot;
            InitializeComponent();
            context = new item1Entities();
            Avv_att_slot_OK = new ObservableCollection<Attachmentmount>(context.Attachmentmounts.Where(p => p.idAttacClass == _slot));
            View_dataGrid.ItemsSource = Avv_att_slot_OK;
            Avv_att_slot_OK.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
        }
        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            this.Close();
        }
        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Attachmentmount item in e.OldItems)
                {
                    context.Attachmentmounts.Remove(item);
                }
                context.SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Attachmentmount item in e.NewItems)
                {
                    item.name = "New_slot";
                    item.idAttacClass = _slot;
                    context.Attachmentmounts.Add(item);
                }
            }
        }
        private void View_dataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            if (e.EditAction == DataGridEditAction.Commit)
            {
                context.SaveChanges();
            }
        }
    }
}
