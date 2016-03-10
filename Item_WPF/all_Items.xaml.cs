using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Data;
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
using Item_WPF.addin;
using Item_WPF.MVVM.View;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для all_Items.xaml
    /// </summary>
    public partial class AllItems : Window
    {
        private item1Entities _context;
                private ObservableCollection<ITEM> Items { get; set; }
        private ObservableCollection<ItemClass> ItemsClass { get; set; }
        public AllItems()
        {
            InitializeComponent();
            _context = new item1Entities();
            Items = new ObservableCollection<ITEM>(_context.ITEMs);
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClasses);
            ItemClassForSort.ItemsSource = ItemsClass;
            DataGridViewAllItems.ItemsSource = Items;
            Items.CollectionChanged += new NotifyCollectionChangedEventHandler(_items_CollectionChanged);

        }
        private void _items_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            DataGridViewAllItems.Items.Refresh();
        }
        private void ItemClass_forSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ItemClassForSort.SelectedValue != null)
            {
                int selclass = Convert.ToInt32(ItemClassForSort.SelectedValue);
                DataGridViewAllItems.ItemsSource = Items.Where(p => p.usItemClass == selclass);
            }
            else DataGridViewAllItems.ItemsSource = Items;
        }
        /// <summary>
        /// sort_refresh
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button4_Click(object sender, RoutedEventArgs e)//sort by class
        {
            int selclass = Convert.ToInt32(ItemClassForSort.SelectedValue);
            _context = new item1Entities();
            Items = new ObservableCollection<ITEM>(_context.ITEMs);
            DataGridViewAllItems.ItemsSource = Items.Where(p => p.usItemClass == selclass);
            //ItemClass_forSort.SelectedIndex = -1;
            DataGridViewAllItems.Items.Refresh();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (DataGridViewAllItems.SelectedItem != null)
            {
                using(_context = new item1Entities())
                    {
                    Datachange.IdSel = Convert.ToInt32(DataGridViewAllItems.SelectedValue);
                    
                    ITEM itt = (from p in _context.ITEMs
                                where p.uiIndex == Datachange.IdSel
                                select p).First();

                    Datachange.ClassCha = itt.ItemClass.name;
                    Datachange.IdChange = itt.ubClassIndex; //передача ИД записи изменяемой таблицы

                    if (itt.used == false)// созаем сущьность для сравнения
                    {
                        if (Datachange.ClassCha == "Gun"
                         || Datachange.ClassCha == "Knife"
                         || Datachange.ClassCha == "Throwing Knife"
                         || Datachange.ClassCha == "Launcher"
                         || Datachange.ClassCha == "Thrown Weapon"
                         || Datachange.ClassCha == "Blunt Weapon")
                        {
                            Label01.Content = "Selected TABLE IS: WEAPON";
                            Label02.Content = "ch ID main:" + Datachange.IdSel.ToString();
                            Label03.Content = "ch ID target:" + Datachange.IdChange.ToString();

                            //itt.used = true;
                            itt.dt = System.DateTime.UtcNow;
                            _context.SaveChanges();

                            WeaponEditView avView = new WeaponEditView(Convert.ToInt32(DataGridViewAllItems.SelectedValue));
                            avView.ShowDialog();


                        }
                        else if (itt.ItemClass.name == "Attachment")
                        {
                            Label01.Content = "Selected TABLE IS:Attacment";
                            Label02.Content = "ch ID main:" + Datachange.IdSel.ToString();
                            Label03.Content = "ch ID target:" + Datachange.IdChange.ToString();

                           // itt.used = true;
                            itt.dt = System.DateTime.UtcNow;
                            _context.SaveChanges();
                            AttacmentEditView attachNr = new AttacmentEditView(Convert.ToInt32(DataGridViewAllItems.SelectedValue));
                            attachNr.ShowDialog();
                        }
                    }
                    else MessageBox.Show("no");
                }
            }
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            if (DataGridViewAllItems.SelectedValue != null)
            {

                int idSel = Convert.ToInt32(DataGridViewAllItems.SelectedValue);
                ITEM item = (from p in Items
                             where p.uiIndex == idSel
                             select p).First();
                if (item.used == false)
                {
                    InputBox ib = new InputBox("pass for Del", "Type Password");
                    ib.ShowDialog();
                    if (Datachange.Pass == "mrtaler")
                    {
                        if (item.ItemClass.name == "Gun"
                             || item.ItemClass.name == "Knife"
                             || item.ItemClass.name == "Throwing Knife"
                             || item.ItemClass.name == "Launcher"
                             || item.ItemClass.name == "Thrown Weapon"
                             || item.ItemClass.name == "Blunt Weapon")
                        {

                            WEAPON weapon = (from p in _context.WEAPONs
                                             where p.uiIndex == item.ubClassIndex
                                             select p).First();

                            Label01.Content = "Deleted from TABLE: WEAPON where ID: " + weapon.uiIndex;
                            Label02.Content = "ch ID main:" + idSel.ToString();
                            Label03.Content = "ch ID target:" + Datachange.IdChange.ToString();

                            _context.ITEMs.Remove(item);
                            _context.WEAPONs.Remove(weapon);
                            _context.SaveChanges();
                        }


                        else if (item.ItemClass.name == "Attachment")
                        {
                            Attachment attach = (from p in _context.Attachments
                                                 where p.uiIndex == item.ubClassIndex
                                                 select p).First();

                            Label01.Content = "Deleted from TABLE IS:Attacment where ID" + idSel.ToString();
                            Label02.Content = "ch ID main:" + idSel.ToString();
                            Label03.Content = "ch ID target:" + Datachange.IdChange.ToString();

                            _context.ITEMs.Remove(item);
                            _context.Attachments.Remove(attach);
                            _context.SaveChanges();
                        }
                    }
                    else MessageBox.Show("incorrect Pass");
                }
                else MessageBox.Show("This rows is used");
            }
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            NewItems newitem = new NewItems();
            newitem.ShowDialog();
        }

        private void dataGridViewAllItems_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            bool ew2;
            //ITEM item1 = (ITEM)e.Row.Item;
            ITEM item1 = e.Row.DataContext as ITEM;
            if (item1 != null)
            {
                ew2 = item1.used;
                if (ew2) e.Row.Background = System.Windows.Media.Brushes.LightGreen;
                else e.Row.Background = System.Windows.Media.Brushes.White;
            }
        }
    }
}

