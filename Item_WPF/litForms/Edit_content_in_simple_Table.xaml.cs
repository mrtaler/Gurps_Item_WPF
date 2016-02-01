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
    public partial class EditContentInSimpleTable : Window
    {
        private item1Entities _context;
        public ObservableCollection<TypeOfDamage> TypeOfDamageOk { get; set; }
        public EditContentInSimpleTable()
        {
            InitializeComponent();
            _context = new item1Entities();
            TypeOfDamageOk = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);
            TypeOfDamageDataGrid.ItemsSource = TypeOfDamageOk;
            TypeOfDamageOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_TypeOfDamageOK_CollectionChanged);
        }
        private void _TypeOfDamageOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (TypeOfDamage item in e.OldItems)
                {
                    _context.TypeOfDamages.Remove(item);
                }
                _context.SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (TypeOfDamage item in e.NewItems)
                {
                    item.name = "";
                    item.LongName = "";
                    item.mDamage = "";
                    _context.TypeOfDamages.Add(item);
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
                _context.SaveChanges();
            }
        }
    }
}
