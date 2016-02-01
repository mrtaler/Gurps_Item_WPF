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
using Item_WPF.addin;

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
            if (ClassComboBox.Text == "Gun"
                                || ClassComboBox.Text == "Knife"
                                || ClassComboBox.Text == "Throwing Knife"
                                || ClassComboBox.Text == "Launcher"
                                || ClassComboBox.Text == "Thrown Weapon"
                                || ClassComboBox.Text == "Blunt Weapon")
            {

               
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    string name = NameTextBox.Text.ToString();
                    string yy = ClassComboBox.Text.ToString();

                    ObjectParameter returns = new ObjectParameter("returns", typeof(String));
                    
                    context.NEW_ITEM(name, yy, returns);

                    Datachange.IdSel = Convert.ToInt32(returns.Value);
                    Label01.Content = "WEAPON where ID" + Datachange.IdSel;
                    Label02.Content = "ch ID main:";
                    context.Database.Connection.Close();
                }
                WeaponNr weap = new WeaponNr();
                weap.Show();
                this.Close();

            }

            else if (ClassComboBox.Text == "Attachment")
            {
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    string name = NameTextBox.Text.ToString();
                    string yy = ClassComboBox.Text.ToString();

                    ObjectParameter returns = new ObjectParameter("returns", typeof(String));

                    context.NEW_ITEM(name, yy, returns);

                    Datachange.IdSel = Convert.ToInt32(returns.Value);
                    Label01.Content = "Attach where ID" + Datachange.IdSel;
                    Label02.Content = "ch ID main:";
                    context.Database.Connection.Close();

                 
                }
                AttachNR attach = new AttachNR();
                attach.Show();
                this.Close();
            }
        }

        private void Class_comboBox_Initialized(object sender, EventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                ClassComboBox.ItemsSource = context.ItemClasses.ToList();
                ClassComboBox.DisplayMemberPath = "name";
                ClassComboBox.SelectedValuePath = "Id";
            }
        }
    }
}
