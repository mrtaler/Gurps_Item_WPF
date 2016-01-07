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
    /// Логика взаимодействия для Edit_content_in_simple_Table.xaml
    /// </summary>
    public partial class Edit_content_in_simple_Table : Window
    {
        item1Entities context = new item1Entities();
        TypeOfDamage td = new TypeOfDamage();
        TypeOfDamage objToAdd = new TypeOfDamage();
        public Edit_content_in_simple_Table()
        {
            InitializeComponent();
        }
        public Edit_content_in_simple_Table(string TableName)
        {
            InitializeComponent();

            if (TableName == "TypeOfDamage")
            {
                //ObservableCollection<TypeOfDamage> list = new ObservableCollection<TypeOfDamage>(context.TypeOfDamages);

                DataGridTextColumn textColumn1 = new DataGridTextColumn();
                DataGridTextColumn textColumn2 = new DataGridTextColumn();
                DataGridTextColumn textColumn3 = new DataGridTextColumn();
                DataGridTextColumn textColumn4 = new DataGridTextColumn();
      

                textColumn1.Header = "id";
                textColumn2.Header = "name";
                textColumn3.Header = "LongName";
                textColumn4.Header = "mDamage";

                textColumn1.Binding = new Binding("id");
                textColumn2.Binding = new Binding("name");
                textColumn3.Binding = new Binding("LongName");
                textColumn4.Binding = new Binding("mDamage");

                textColumn1.IsReadOnly = true;
                textColumn2.IsReadOnly = false;
                textColumn3.IsReadOnly = false;
                textColumn4.IsReadOnly = false;

                dataGrid.Columns.Add(textColumn1);
                dataGrid.Columns.Add(textColumn2);
                dataGrid.Columns.Add(textColumn3);
                dataGrid.Columns.Add(textColumn4);

                dataGrid.ItemsSource = context.TypeOfDamages.ToList();

                //    list.Select(s => new
                //{
                //    s.id,
                //    s.name,
                //    s.LongName,
                //    s.mDamage
                //});

                dataGrid.SelectedValuePath = "id";
            }
        }

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {            
            context.SaveChanges();
        }
          
        private void dataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            try
            {
                    context.TypeOfDamages.Add(objToAdd);
                               }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

           
        }
        private void Delete_button_Click(object sender, RoutedEventArgs e)
        {
            //if (datagrid.SelectedItems != null)
            //{
            //    for (int i = 0; i < datagrid.SelectedItems.Count; i++)
            //    {
            //        ColorsTable o = (TypeOfDamage)datagrid.SelectedItems[i];
            //        ctx.DeleteObject(o);
            //    }
            //}
            ////button1_Click(sender, e);
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            objToAdd = dataGrid.SelectedItem as TypeOfDamage;
        }

        private void Update_button_Click(object sender, RoutedEventArgs e)
        {
            td.name = textBox.Text;
            td.LongName = textBox1.Text;
            td.mDamage = textBox2.Text;

            context.TypeOfDamages.Add(td);
            context.SaveChanges();
            dataGrid.Items.Refresh();
        }

        private void dataGrid_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            try
            {
                FrameworkElement element1 = dataGrid.Columns[1].GetCellContent(e.Row);
                if (element1.GetType() == typeof(TextBox))
                {
                    var colomn1 = ((TextBox)element1).Text;
                    objToAdd.LongName = Convert.ToString(colomn1);
                }
                FrameworkElement element2 = dataGrid.Columns[2].GetCellContent(e.Row);
                if (element2.GetType() == typeof(TextBox))
                {
                    var colomn2 = ((TextBox)element2).Text;
                    objToAdd.mDamage = Convert.ToString(colomn2);
                }
                FrameworkElement element3 = dataGrid.Columns[3].GetCellContent(e.Row);
                if (element3.GetType() == typeof(TextBox))
                {
                    var colomn3 = ((TextBox)element3).Text;
                    objToAdd.name = Convert.ToString(colomn3);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dataGrid_KeyDown(object sender, KeyEventArgs e)
        {
            
        }

        private void dataGrid_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            { 
                context.TypeOfDamages.Remove(dataGrid.SelectedItem as TypeOfDamage);
            }
        }
    }
}
