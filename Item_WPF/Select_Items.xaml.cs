using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для Select_Items.xaml
    /// </summary>
    public partial class Select_Items : Window
    {
        public Select_Items()
        {
            InitializeComponent();

        }
        public Select_Items(int T1, string typeName)
        {
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {
                Items_dataGrid.ItemsSource = (from p in context.ITEMs
                                              where p.ItemClass.name == typeName
                                              select new
                                              {
                                                  p.uiIndex,
                                                  p.szItemName,
                                                  p.ItemClass.name,
                                                  p.TL1.name_TL,
                                                  p.LC1.Name_LC,
                                                  p.usPrice
                                              }).ToList();// шрузим таблицу итем вместе с подчненной записью
                Items_dataGrid.SelectedValuePath = "uiIndex";
            }
        }

        public Select_Items(int attmount)
        {
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {

                context.Database.Connection.Open();// открываем соединение с бд
                Items_dataGrid.ItemsSource = context.CombineWeaps.Select(s => new
                {
                    s.id,
                    s.IdWeapon,
                    s.LaserSelect,
                    s.LauncherSelect,
                }).ToList(); ; // gрузим таблицу итем вместе с подчненной записью

                Items_dataGrid.SelectedValuePath = "id";
                context.Database.Connection.Close();
            }
        }

        public Select_Items(string typeName, int attslot, int attmount)
        {
            InitializeComponent();
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();// открываем соединение с бд
                List<Attachment> att = (from p in context.Attachments
                                        where p.G_SubAttachClass1.ATTACHMENTSLOT1 == attslot && p.id_Attachmentmount == attmount
                                        select p).ToList();
                List<ITEM> itemsAtt = new List<ITEM>();
                foreach (var itt in att)
                {
                    var qwery = (from p in context.ITEMs
                                 where p.ItemClass.name == typeName && p.ubClassIndex == itt.uiIndex
                                 select p).First();
                    itemsAtt.Add(qwery);
                }
                Items_dataGrid.ItemsSource = (from p in itemsAtt
                                              select new
                                              {
                                                  p.uiIndex,
                                                  p.szItemName,
                                                  p.ItemClass.name,
                                                  p.TL1.name_TL,
                                                  p.LC1.Name_LC,
                                                  p.usPrice
                                              }).ToList();
                Items_dataGrid.SelectedValuePath = "uiIndex";
                context.Database.Connection.Close();
            }
        }

        private void Select_button_Click(object sender, RoutedEventArgs e)
        {
            Combine_weap main = this.Owner as Combine_weap;
            if (main != null)
            {
                string s = "dfb";

                main.label.Content = s;
                if (Items_dataGrid.SelectedIndex != -1)
                {
                    main.IdItemWeapon = Convert.ToInt32(Items_dataGrid.SelectedValue);// нходим ИД выделенной строки
                    this.Close();
                }
                else this.Close();

            }
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Combine_weap main = this.Owner as Combine_weap;
            if (main != null)
            {
                main.IdItemWeapon = 0;
            }
            this.Close();
        }
    }
}
