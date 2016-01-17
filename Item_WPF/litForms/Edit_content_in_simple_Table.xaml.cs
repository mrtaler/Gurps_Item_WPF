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
    /// Логика взаимодействия для Edit_content_in_simple_Table.xaml
    /// </summary>
    public partial class Edit_content_in_simple_Table : Window
    {
        private item1Entities context;
        public ObservableCollection<TypeOfDamage> TypeOfDamageOK { get; set; }
        public Edit_content_in_simple_Table()
        {
            InitializeComponent();
            context = new item1Entities();
            TypeOfDamageOK = new ObservableCollection<TypeOfDamage>(context.TypeOfDamages);
            TypeOfDamage_dataGrid.ItemsSource = TypeOfDamageOK;
            TypeOfDamageOK.CollectionChanged += new NotifyCollectionChangedEventHandler(_TypeOfDamageOK_CollectionChanged);
        }
        private void _TypeOfDamageOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (TypeOfDamage item in e.OldItems)
                {
                    context.TypeOfDamages.Remove(item);
                }
                context.SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (TypeOfDamage item in e.NewItems)
                {
                    item.name = "";
                    item.LongName = "";
                    item.mDamage = "";
                    context.TypeOfDamages.Add(item);
                }
            }
        }
        private void Close_button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void TypeOfDamage_dataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            if (e.EditAction == DataGridEditAction.Commit)
            {
                context.SaveChanges();
            }
        }
    }
}
