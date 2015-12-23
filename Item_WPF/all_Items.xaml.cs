using System;
using System.Collections.Generic;
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
        public all_Items()
        {
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {
                //Load in to sort list
                ItemClass_forSort.ItemsSource = context.ItemClasses.ToList();
                ItemClass_forSort.DisplayMemberPath = "name";
                ItemClass_forSort.SelectedValuePath = "id";
                //ItemClass_forSort.SelectedValue = 2;
                //Load in to main table////////////
                //List<ITEM> item = (from p in context.ITEMs
                //                   where p.usItemClass ==18
                //                   select p).ToList();
                //dataGridViewAllItems.ItemsSource = item.Select(s => new
                dataGridViewAllItems.ItemsSource = context.ITEMs.Select(s => new
                {
                    s.uiIndex,
                    s.szItemName,
                    s.ItemClass.name,
                    s.TL1.name_TL,
                    s.LC1.Name_LC,
                    s.usPrice
                }).ToList(); // шрузим таблицу итем вместе с подчненной записью
                dataGridViewAllItems.SelectedValuePath = "uiIndex";

            }
        }

        private void button4_Click(object sender, RoutedEventArgs e)//sort by class
        {
            using (item1Entities context = new item1Entities())
            {
                if (ItemClass_forSort.SelectedValue != null)
                {
                    int selclass = Convert.ToInt32(ItemClass_forSort.SelectedValue);
                    List<ITEM> item = (from p in context.ITEMs
                                       where p.usItemClass == selclass
                                       select p).ToList();
                    dataGridViewAllItems.ItemsSource = item.Select(s => new
                    {
                        s.uiIndex,
                        s.szItemName,
                        s.ItemClass.name,
                        s.TL1.name_TL,
                        s.LC1.Name_LC,
                        s.usPrice
                    }).ToList(); // шрузим таблицу итем вместе с подчненной записью
                    dataGridViewAllItems.SelectedValuePath = "uiIndex";
                }
                else
                {
                    dataGridViewAllItems.ItemsSource = context.ITEMs.Select(s => new
                    {
                        s.uiIndex,
                        s.szItemName,
                        s.ItemClass.name,
                        s.TL1.name_TL,
                        s.LC1.Name_LC,
                        s.usPrice
                    }).ToList(); // шрузим таблицу итем вместе с подчненной записью
                    dataGridViewAllItems.SelectedValuePath = "uiIndex";
                }
            }
        }


        private void button3_Click(object sender, RoutedEventArgs e)//refresh
        {
            using (item1Entities context = new item1Entities())
            {
                dataGridViewAllItems.ItemsSource = context.ITEMs.Select(s => new
                {
                    s.uiIndex,
                    s.szItemName,
                    s.ItemClass.name,
                    s.TL1.name_TL,
                    s.LC1.Name_LC,
                    s.usPrice
                }).ToList();
                dataGridViewAllItems.SelectedValuePath = "uiIndex";
            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (dataGridViewAllItems.SelectedItem != null)
            {
                using (item1Entities context = new item1Entities())
                {
                    datachange.ID_sel = Convert.ToInt32(dataGridViewAllItems.SelectedValue);
                    ITEM itt = (from p in context.ITEMs
                                where p.uiIndex == datachange.ID_sel
                                select p).First();
                    datachange.Class_Cha = (from p in context.ITEMs
                                            where p.uiIndex == datachange.ID_sel
                                            select p.ItemClass.name).First();
                    datachange.ID_change = (from p in context.ITEMs
                                            where p.uiIndex == datachange.ID_sel
                                            select p.ubClassIndex).First(); //передача ИД записи изменяемой таблицы

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
                    //          context.Database.Connection.Close();
                }
            }
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {

            using (item1Entities context = new item1Entities())
            {
                if (dataGridViewAllItems.SelectedValue !=null)
                {

                    int ID_sel = Convert.ToInt32(dataGridViewAllItems.SelectedValue);
                    ITEM item = (from p in context.ITEMs
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
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {

            NewItems newitem = new NewItems();
            newitem.ShowDialog();            
        }


        //    else if (itt.ItemClass.name == "Grenade" || itt.ItemClass.name == "Bomb")
        //    {
        //        label2.Text = "Selected TABLE IS:EXPLOSIVE";
        //    }// использование таблицы EXPLOSIVE для создания новой записи
        //    //   else if (Tex1 == "Ammo") label6.Text = "Selected TABLE IS:MAGAZINE";
        //    else if (itt.ItemClass.name == "Armour")
        //    {
        //        label2.Text = "Selected TABLE IS:ARMOUR";
        //    }
        //    else if (itt.ItemClass.name == "Load Bearing Equipment")
        //    {
        //        label2.Text = "Selected TABLE IS:LBE";
        //    }
        //    else if (itt.ItemClass.name == "Attachment")
        //    {
        //        label2.Text = "Deleted TABLE IS:Attacment";

        //    }
        //    else
        //    {
        //        label1.Text = "del item ID:" + ID_sel.ToString();
        //    }
        //    context.Database.Connection.Close();
        //}
    }
}

