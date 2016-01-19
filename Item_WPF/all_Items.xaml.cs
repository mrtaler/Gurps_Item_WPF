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


namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для all_Items.xaml
    /// </summary>
    public partial class all_Items : Window
    {
        private item1Entities context;


        private ObservableCollection<ITEM> _items { get; set; }
        private ObservableCollection<ItemClass> _itemsClass { get; set; }
        public all_Items()
        {
            InitializeComponent();
            context = new item1Entities();
            _items = new ObservableCollection<ITEM>(context.ITEMs);
            _itemsClass = new ObservableCollection<ItemClass>(context.ItemClasses);
            ItemClass_forSort.ItemsSource = _itemsClass;
            dataGridViewAllItems.ItemsSource = _items;
            _items.CollectionChanged += new NotifyCollectionChangedEventHandler(_items_CollectionChanged);

        }
        private void _items_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            dataGridViewAllItems.Items.Refresh();
        }
        private void ItemClass_forSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ItemClass_forSort.SelectedValue != null)
            {
                int selclass = Convert.ToInt32(ItemClass_forSort.SelectedValue);
                dataGridViewAllItems.ItemsSource = _items.Where(p => p.usItemClass == selclass);
            }
            else dataGridViewAllItems.ItemsSource = _items;
        }
        /// <summary>
        /// sort_refresh
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button4_Click(object sender, RoutedEventArgs e)//sort by class
        {
            dataGridViewAllItems.ItemsSource = _items;
            ItemClass_forSort.SelectedIndex = -1;
            dataGridViewAllItems.Items.Refresh();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (dataGridViewAllItems.SelectedItem != null)
            {
                using(context = new item1Entities())
                    {
                    datachange.ID_sel = Convert.ToInt32(dataGridViewAllItems.SelectedValue);
                    
                    ITEM itt = (from p in context.ITEMs
                                where p.uiIndex == datachange.ID_sel
                                select p).First();

                    datachange.Class_Cha = itt.ItemClass.name;
                    datachange.ID_change = itt.ubClassIndex; //передача ИД записи изменяемой таблицы

                    if (itt.used == false)// созаем сущьность для сравнения
                    {
                        if (datachange.Class_Cha == "Gun"
                         || datachange.Class_Cha == "Knife"
                         || datachange.Class_Cha == "Throwing Knife"
                         || datachange.Class_Cha == "Launcher"
                         || datachange.Class_Cha == "Thrown Weapon"
                         || datachange.Class_Cha == "Blunt Weapon")
                        {
                            label01.Content = "Selected TABLE IS: WEAPON";
                            label02.Content = "ch ID main:" + datachange.ID_sel.ToString();
                            label03.Content = "ch ID target:" + datachange.ID_change.ToString();

                            itt.used = true;
                            itt.dt = System.DateTime.UtcNow;
                            context.SaveChanges();

                            Weapon_N_R WeaponNR = new Weapon_N_R();
                            WeaponNR.ShowDialog();

                        }
                        else if (itt.ItemClass.name == "Attachment")
                        {
                            label01.Content = "Selected TABLE IS:Attacment";
                            label02.Content = "ch ID main:" + datachange.ID_sel.ToString();
                            label03.Content = "ch ID target:" + datachange.ID_change.ToString();

                            itt.used = true;
                            itt.dt = System.DateTime.UtcNow;
                            context.SaveChanges();
                            Attach_N_R AttachNR = new Attach_N_R();
                            AttachNR.ShowDialog();
                        }
                    }
                    else MessageBox.Show("no");
                }
            }
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            if (dataGridViewAllItems.SelectedValue != null)
            {

                int ID_sel = Convert.ToInt32(dataGridViewAllItems.SelectedValue);
                ITEM item = (from p in _items
                             where p.uiIndex == ID_sel
                             select p).First();
                if (item.used == false)
                {
                    InputBox IB = new InputBox("pass for Del", "Type Password");
                    IB.ShowDialog();
                    if (datachange.Pass == "mrtaler")
                    {
                        if (item.ItemClass.name == "Gun"
                             || item.ItemClass.name == "Knife"
                             || item.ItemClass.name == "Throwing Knife"
                             || item.ItemClass.name == "Launcher"
                             || item.ItemClass.name == "Thrown Weapon"
                             || item.ItemClass.name == "Blunt Weapon")
                        {

                            WEAPON weapon = (from p in context.WEAPONs
                                             where p.uiIndex == item.ubClassIndex
                                             select p).First();

                            label01.Content = "Deleted from TABLE: WEAPON where ID: " + weapon.uiIndex;
                            label02.Content = "ch ID main:" + ID_sel.ToString();
                            label03.Content = "ch ID target:" + datachange.ID_change.ToString();

                            context.ITEMs.Remove(item);
                            context.WEAPONs.Remove(weapon);
                            context.SaveChanges();
                        }


                        else if (item.ItemClass.name == "Attachment")
                        {
                            Attachment attach = (from p in context.Attachments
                                                 where p.uiIndex == item.ubClassIndex
                                                 select p).First();

                            label01.Content = "Deleted from TABLE IS:Attacment where ID" + ID_sel.ToString();
                            label02.Content = "ch ID main:" + ID_sel.ToString();
                            label03.Content = "ch ID target:" + datachange.ID_change.ToString();

                            context.ITEMs.Remove(item);
                            context.Attachments.Remove(attach);
                            context.SaveChanges();
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

