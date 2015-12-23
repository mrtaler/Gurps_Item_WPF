using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
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
    /// Логика взаимодействия для NewItems.xaml
    /// </summary>
    public partial class NewItems : Window
    {
        public NewItems()
        {
            InitializeComponent();


        }

        private void Cancel_button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Ok_button_Click(object sender, RoutedEventArgs e)
        {
            if (Class_comboBox.Text == "Gun"
                                || Class_comboBox.Text == "Knife"
                                || Class_comboBox.Text == "Throwing Knife"
                                || Class_comboBox.Text == "Launcher"
                                || Class_comboBox.Text == "Thrown Weapon"
                                || Class_comboBox.Text == "Blunt Weapon")
            {

               
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    string name = Name_textBox.Text.ToString();
                    string yy = Class_comboBox.Text.ToString();

                    ObjectParameter returns = new ObjectParameter("returns", typeof(String));
                    
                    context.NEW_ITEM(name, yy, returns);

                    datachange.ID_sel = Convert.ToInt32(returns.Value);
                    label01.Content = "WEAPON where ID" + datachange.ID_sel;
                    label02.Content = "ch ID main:";
                    context.Database.Connection.Close();
                }
                Weapon_N_R weap = new Weapon_N_R();
                weap.Show();
                this.Close();

            }

            else if (Class_comboBox.Text == "Attachment")
            {
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    string name = Name_textBox.Text.ToString();
                    string yy = Class_comboBox.Text.ToString();

                    ObjectParameter returns = new ObjectParameter("returns", typeof(String));

                    context.NEW_ITEM(name, yy, returns);

                    datachange.ID_sel = Convert.ToInt32(returns.Value);
                    label01.Content = "Attach where ID" + datachange.ID_sel;
                    label02.Content = "ch ID main:";
                    context.Database.Connection.Close();

                 
                }
                Attach_N_R attach = new Attach_N_R();
                attach.Show();
                this.Close();
            }
        }

        private void Class_comboBox_Initialized(object sender, EventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Class_comboBox.ItemsSource = context.ItemClasses.ToList();
                Class_comboBox.DisplayMemberPath = "name";
                Class_comboBox.SelectedValuePath = "Id";
            }
        }
    }
}
