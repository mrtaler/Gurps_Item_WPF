using System.Windows;

using Item_WPF.addin;
using Item_WPF.GCS_Ser.names;
using Item_WPF.MVVM.GurpsSkill_m;
using Item_WPF.MVVM.Serialize;
using Item_WPF.MVVM.View;

using Microsoft.Windows.Controls.Ribbon;

namespace Item_WPF.MVVM.ViewModels
{
    class MainWindowStartViewModel
    {

        protected RibbonWindow Owner;

        public ViewModelCommand AboutCommand { get; private set; }
        public ViewModelCommand DropDiceCommand { get; private set; }
        public ViewModelCommand ShowAllItemsCommand { get; private set; }
        public ViewModelCommand ShowCombineCommand { get; private set; }
        public ViewModelCommand ShowCharacterCommand { get; private set; }
        public ViewModelCommand ShowAmmoCommand { get; private set; }
        public ViewModelCommand OwnerCloseCommand { get; private set; }
        public ViewModelCommand NewBoxCommand { get; private set; }
        public ViewModelCommand ListBoxCommand { get; private set; }
        public ViewModelCommand BoxChangeCommand { get; private set; }
        public ViewModelCommand NewNameCommand { get; private set; }
        public ViewModelCommand SerializeCommand { get; private set; }
        public ViewModelCommand AllGurpsSkillViewLaunchCommand { get; private set; }
        public MainWindowStartViewModel(RibbonWindow owner)
        {
            this.Owner = owner;

            // Create commands
            this.AboutCommand = new ViewModelCommand(this.ShowAboutWindow);
            this.DropDiceCommand = new ViewModelCommand(this.DropDice);// +
            this.ShowAllItemsCommand = new ViewModelCommand(this.ShowAllItems);// +
            this.ShowCombineCommand = new ViewModelCommand(this.ShowCombine);// +
            this.ShowCharacterCommand = new ViewModelCommand(this.ShowCharacter);// +
            this.OwnerCloseCommand = new ViewModelCommand(this.OwnerClose);// +
            this.ShowAmmoCommand = new ViewModelCommand(this.ShowAmmo);
            this.NewBoxCommand = new ViewModelCommand(this.NewBox);
            this.ListBoxCommand = new ViewModelCommand(this.ListBox);
            this.BoxChangeCommand = new ViewModelCommand(this.BoxChange);
            this.NewNameCommand = new ViewModelCommand(this.randomname);

            this.SerializeCommand = new ViewModelCommand(this.Serialize);

            this.AllGurpsSkillViewLaunchCommand = new ViewModelCommand(this.AllGurpsSkillViewLaunch);
        }

        public void ShowAboutWindow(object parameter)
        {
            AboutWindowView window = new AboutWindowView();
            window.Owner = this.Owner;
            window.ShowDialog();
        }

        public void ShowAmmo(object parameter)
        {
            AmmoView window = new AmmoView();
            window.Owner = this.Owner;
            window.ShowDialog();
        }

        public void ShowCharacter(object parameter)
        {
            MainCharacterView window = new MainCharacterView();
            window.ShowDialog();
        }

        public void DropDice(object parameter)
        {
            MessageBox.Show(Dice.RollDie(6, 3).ToString());
        }

        public void ShowAllItems(object parameter)
        {
            if ((parameter as string) == "Weapon") { AllWeaponView allItems = new AllWeaponView(); allItems.Show(); }
            else { all_ItemsView allItems = new all_ItemsView(parameter); allItems.Show(); }

        }

        public void OwnerClose(object parameter)
        {
            this.Owner.Close();
        }

        public void ShowCombine(object parameter)
        {
            CombineWeapView combine = new CombineWeapView();
            combine.Show();
        }

        public void NewBox(object parameter)
        {
            NewBoxView newbox = new NewBoxView();
            newbox.Show();
        }

        public void ListBox(object parameter)
        {
            BoxItemView boxitem = new BoxItemView(parameter);
            boxitem.Show();
        }

        private void BoxChange(object parameter)
        {
            BoxItemChangeView box_change = new BoxItemChangeView(parameter);
            box_change.Show();
        }

        private void randomname(object parameter)
        {
            if (parameter.ToString() == "male")
            {
                MessageBox.Show(USCensusNames.Instance.GetFullName(true));
            }
            else
                MessageBox.Show(USCensusNames.Instance.GetFullName(false));
        }

        private void AllGurpsSkillViewLaunch(object parameter)
        {
            AllGurpsSkillView allgurpsSkillView = new AllGurpsSkillView();
            allgurpsSkillView.Show();
        }

        private void Serialize(object parameter)
        {
            SerializeView serializeViewV = new SerializeView();
            serializeViewV.Show();
        }
    }
}