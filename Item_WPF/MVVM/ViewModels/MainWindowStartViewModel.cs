using com.trollworks.gcs.character.names;
using Item_WPF.addin;
using Item_WPF.MVVM.GurpsSkill_m;
using Item_WPF.MVVM.Serialize;
using Item_WPF.MVVM.View;
using Microsoft.Windows.Controls.Ribbon;
using Item_WPF.ItemEntityModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;


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
            Owner = owner;

            // Create commands
            AboutCommand = new ViewModelCommand(ShowAboutWindow);
            DropDiceCommand = new ViewModelCommand(DropDice);//+
            ShowAllItemsCommand = new ViewModelCommand(ShowAllItems);//+
            ShowCombineCommand = new ViewModelCommand(ShowCombine);//+
            ShowCharacterCommand = new ViewModelCommand(ShowCharacter);//+
            OwnerCloseCommand = new ViewModelCommand(OwnerClose);//+
            ShowAmmoCommand = new ViewModelCommand(ShowAmmo);
            NewBoxCommand = new ViewModelCommand(NewBox);
            ListBoxCommand = new ViewModelCommand(ListBox);
            BoxChangeCommand = new ViewModelCommand(BoxChange);
            NewNameCommand = new ViewModelCommand(randomname);

            SerializeCommand = new ViewModelCommand(Serialize);


            AllGurpsSkillViewLaunchCommand = new ViewModelCommand(AllGurpsSkillViewLaunch);
        }
        public void ShowAboutWindow(object parameter)
        {
            AboutWindowView window = new AboutWindowView();
            window.Owner = Owner;
            window.ShowDialog();
        }
        public void ShowAmmo(object parameter)
        {
            AmmoView window = new AmmoView();
            window.Owner = Owner;
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
            Owner.Close();
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
                MessageBox.Show(USCensusNames.INSTANCE.getFullName(true));
            }
            else
                MessageBox.Show(USCensusNames.INSTANCE.getFullName(false));
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