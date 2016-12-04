using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Windows;
using System.Xml.Serialization;
using Item_WPF.addin;
using Item_WPF.MVVM.Models;
using Item_WPF.Properties;
using Item_WPF.MVVM.View;
using Microsoft.Win32;
using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.AddSkilltoChar;
using Item_WPF.MVVM.EditPrimaryStats;
using Item_WPF.MVVM.EditSecondaryStats;
using EditPrimaryStatsWindowView = Item_WPF.MVVM.EditPrimaryStats.EditPrimaryStatsWindowView;
using EditSecondaryStatsWindowView = Item_WPF.MVVM.EditSecondaryStats.EditSecondaryStatsWindowView;
using Item_WPF.MVVM.AllCharfromDB;
using com.trollworks.gcs.character.names;

namespace Item_WPF.MVVM.ViewModels
{
    class MainCharacterViewModel : ViewModelBase
    {
        protected Window Owner;
        private item1Entities context;
        public CharacterDB Character { get; set; }

        public ViewModelCommand AboutCommand { get; private set; }
        public ViewModelCommand EditPrimaryStatsCommand { get; private set; }
        public ViewModelCommand EditSecondaryStatsCommand { get; private set; }
        public ViewModelCommand AddItemCommand { get; private set; }
        public ViewModelCommand AddAdvantageCommand { get; private set; }
        public ViewModelCommand AddSkillCommand { get; private set; }
        public ViewModelCommand NewCommand { get; private set; }
        public ViewModelCommand OpenCommand { get; private set; }
        public ViewModelCommand SaveDBCommand { get; private set; }
        public ViewModelCommand OpenDbCommand { get; private set; }
        public ViewModelCommand SaveAsCommand { get; private set; }
        public ViewModelCommand OwnerCloseCommand { get; private set; }

        public MainCharacterViewModel(Window owner)
            : this(owner, new CharacterDB())
        {
        }

        public MainCharacterViewModel(Window owner, CharacterDB character)
        {
            context = new item1Entities();
            Owner = owner;
            Character = character;

            //name
            if (string.IsNullOrEmpty(Character.name))
                Character.name = USCensusNames.INSTANCE.GetFullName(true);

            // Create commands
            AboutCommand = new ViewModelCommand(ShowAboutWindow);
            EditPrimaryStatsCommand = new ViewModelCommand(EditPrimaryStats);
            EditSecondaryStatsCommand = new ViewModelCommand(EditSecondaryStats);
            AddItemCommand = new ViewModelCommand(AddItem);
            AddAdvantageCommand = new ViewModelCommand(AddAdvantage);
            AddSkillCommand = new ViewModelCommand(AddSkill);
            NewCommand = new ViewModelCommand(New);
            OpenCommand = new ViewModelCommand(Open);
            OpenDbCommand = new ViewModelCommand(OpenDb);
            SaveAsCommand = new ViewModelCommand(SaveAs);
            OwnerCloseCommand = new ViewModelCommand(OwnerClose);

            SaveDBCommand = new ViewModelCommand(SaveDb);

            // Setup property dependencies
            PropertyDependencyMap.Add("Strength", new[] { "MaxHP", "BasicLift", "ThrustDamage", "SwingDamage" });
            PropertyDependencyMap.Add("StrengthPoints", new[] { "Strength", "CharacterPoints" });
            PropertyDependencyMap.Add("Dexterity", new[] { "BasicSpeed" });
            PropertyDependencyMap.Add("DexterityPoints", new[] { "Dexterity", "CharacterPoints" });
            PropertyDependencyMap.Add("Intelligence", new[] { "Willpower", "Perception" });
            PropertyDependencyMap.Add("IntelligencePoints", new[] { "Intelligence", "CharacterPoints" });
            PropertyDependencyMap.Add("Health", new[] { "MaxFP", "BasicSpeed" });
            PropertyDependencyMap.Add("HealthPoints", new[] { "Health", "CharacterPoints" });
            PropertyDependencyMap.Add("MaxHPPoints", new[] { "MaxHP", "CharacterPoints" });
            PropertyDependencyMap.Add("MaxFPPoints", new[] { "MaxFP", "CharacterPoints" });
            PropertyDependencyMap.Add("WillpowerPoints", new[] { "Willpower", "CharacterPoints" });
            PropertyDependencyMap.Add("PerceptionPoints", new[] { "Perception", "CharacterPoints" });
            PropertyDependencyMap.Add("BasicSpeed", new[] { "BasicMove" });
            PropertyDependencyMap.Add("BasicSpeedPoints", new[] { "BasicSpeed", "CharacterPoints" });
            PropertyDependencyMap.Add("BasicMovePoints", new[] { "BasicMove", "CharacterPoints" });
            PropertyDependencyMap.Add("BasicLift", new[] { "Encumbrance" });
            PropertyDependencyMap.Add("Inventory", new[] { "Encumbrance" });
            PropertyDependencyMap.Add("Advantages", new[] { "CharacterPoints" });
            PropertyDependencyMap.Add("Skills", new[] { "CharacterPoints" });
            PropertyDependencyMap.Add("Encumbrance", new[] { "EncumbranceAsInt", "EncumbranceAsString", "Move", "Dodge" });
        }
        public int Strength
        {
            get { return Character.Strength; }
        }

        public string Name
        {
            get
            {
                string name = Character.name;
                if (string.IsNullOrEmpty(name))
                    name = Resources.UnnamedCharacter;
                return name;
            }
        }

        public int Dexterity
        {
            get { return Character.Dexterity; }
        }

        public int Intelligence
        {
            get { return Character.Intelligence; }
        }

        public int Health
        {
            get { return Character.Health; }
        }

        public int MaxHP
        {
            get { return Character.MaxHP; }
        }

        public int MaxFP
        {
            get { return Character.MaxFP; }
        }

        public int Willpower
        {
            get { return Character.Willpower; }
        }

        public int Perception
        {
            get { return Character.Perception; }
        }

        public float BasicLift
        {
            get { return Character.BasicLift; }
        }

        public float BasicSpeed
        {
            get { return Character.BasicSpeed; }
        }

        public int BasicMove
        {
            get { return Character.BasicMove; }
        }

        public int Move
        {
            get { return Character.Move; }
        }

        public int Dodge
        {
            get { return Character.Dodge; }
        }

        public DiceString ThrustDamage
        {
            get { return Character.ThrustDamage; }
        }

        public DiceString SwingDamage
        {
            get { return Character.SwingDamage; }
        }

        public ObservableCollection<ITEM> Inventory
        {
            get { return Character.Inventory; }
        }

        public int TotalWeight
        {
            get { return Character.TotalWeight; }
        }

        public ObservableCollection<Advantage> Advantages
        {
            get { return Character.Advantages; }
        }

        public ObservableCollection<GurpsSkill> Skills
        {
            get
            {
                return new ObservableCollection<GurpsSkill>(Character.CharSkills.Select(p => p.GurpsSkill));
            }
        }

        // Returns the window title
        public string Title
        {
            get { return "GURPS Character Editor - " + Name; }
        }

        public int CharacterPoints
        {
            get { return Character.CharacterPoints; }
        }

        public int? EncumbranceAsInt
        {
            get { return Character.Encumbrance; }
        }

        public string EncumbranceAsString
        {
            get
            {
                if (Character.Encumbrance.HasValue)
                {
                    switch ((int)Character.Encumbrance)
                    {
                        case 0:
                            return Resources.EncumbranceNo;
                        case 1:
                            return Resources.EncumbranceLight;
                        case 2:
                            return Resources.EncumbranceMedium;
                        case 3:
                            return Resources.EncumbranceHeavy;
                        case 4:
                            return Resources.EncumbranceExtraHeavy;
                        default:
                            return "N/A";
                    }
                }
                else
                {
                    return "N/A";
                }
            }
        }
        /// <summary>
        /// Method for open About Window
        /// </summary>
        /// <param name="parameter"></param>
        public void ShowAboutWindow(object parameter)
        {
            AboutWindowView window = new AboutWindowView();
            window.Owner = Owner;
            window.ShowDialog();
        }
        /// <summary>
        /// Method for work with inventory
        /// </summary>
        /// <param name="parameter"></param>
        public void AddItem(object parameter)
        {
            //all_ItemsView window = new all_ItemsView("all");
            //window.Owner = Owner;
            ////window.DataContext = new ITEM();

            //bool? result = window.ShowDialog();
            //if (result.HasValue && (result == true))
            //{
            //    Character.Inventory.Add(window._allItemsViewModel.SelectedItemForWork);

            //    NotifyPropertyChanged("Inventory");
            //}
        }
        /// <summary>
        /// Method for Work With Advantage
        /// </summary>
        /// <param name="parameter"></param>
        public void AddAdvantage(object parameter)
        {
            //   EditAdvantageWindowView window = new EditAdvantageWindowView();
            //   window.Owner = Owner;
            //  window.DataContext = new Advantage();

            //bool? result = window.ShowDialog();
            //if (result.HasValue && (result == true))
            // {
            //    Character.Advantages.Add((Advantage)window.DataContext);
            //                NotifyPropertyChanged("Advantages");
            //          }
        }
        /// <summary>
        /// Method for work With skill in char
        /// </summary>
        /// <param name="parameter"></param>
        public void AddSkill(object parameter)
        {
            AddSkilltoCharView window = new AddSkilltoCharView(Character, context);
            window.Owner = Owner;

            bool? result = window.ShowDialog();
            //            if (result.HasValue && (result == true))
            //          {
            NotifyPropertyChanged("Skills");
            NotifyPropertyChanged("CharSkills");
            //        }
        }
        /// <summary>
        /// Method for open window to edit Primary start
        /// </summary>
        /// <param name="parameter"></param>
        private void EditPrimaryStats(object parameter)
        {
            EditPrimaryStatsWindowView window = new EditPrimaryStatsWindowView();
            window.Owner = Owner;
            window.DataContext = new EditPrimaryStatsViewModel(Character);

            CharacterDB copy = Character.Copy();
            bool? result = window.ShowDialog();
            if (result.HasValue && (result == true))
            {
                NotifyPropertyChanged("StrengthPoints");
                NotifyPropertyChanged("DexterityPoints");
                NotifyPropertyChanged("IntelligencePoints");
                NotifyPropertyChanged("HealthPoints");
            }
            else
            {
                Character = copy;
            }
        }
        /// <summary>
        /// Method for open window to edit second start
        /// </summary>
        /// <param name="parameter"></param>
        private void EditSecondaryStats(object parameter)
        {
            EditSecondaryStatsWindowView window = new EditSecondaryStatsWindowView();
            window.Owner = Owner;
            window.DataContext = new EditSecondaryStatsViewModel(Character);

            CharacterDB copy = Character.Copy();
            bool? result = window.ShowDialog();
            if (result.HasValue && (result == true))
            {
                NotifyPropertyChanged("MaxHPPoints");
                NotifyPropertyChanged("MaxFPPoints");
                NotifyPropertyChanged("WillpowerPoints");
                NotifyPropertyChanged("PerceptionPoints");
                NotifyPropertyChanged("BasicSpeedPoints");
                NotifyPropertyChanged("BasicMovePoints");
            }
            else
            {
                Character = copy;
            }
        }
        /// <summary>
        /// Method for make new Char
        /// </summary>
        /// <param name="parameter"></param>
        private void New(object parameter)
        {
            Character = new CharacterDB();
            if (string.IsNullOrEmpty(Character.name))
                Character.name = USCensusNames.INSTANCE.GetFullName(true);
            // Notify all properties changed
            NotifyPropertyChanged(string.Empty);
        }
        /// <summary>
        /// Method for open Char from DB
        /// </summary>
        /// <param name="parameter"></param>
        private void OpenDb(object parameter)
        {
            AllCharfromDBView window = new AllCharfromDBView(context);
            window.Owner = Owner;

            CharacterDB copy = Character.Copy();
            bool? result = window.ShowDialog();

            if (result.HasValue && (result == true))
            {
                if ((window.DataContext as AllCharFromDbViewModel).SelectedCharacterDb != null)
                {
                    Character = (window.DataContext as AllCharFromDbViewModel).SelectedCharacterDb;
                    if (string.IsNullOrEmpty(Character.name))
                        Character.name = USCensusNames.INSTANCE.GetFullName(true);
                }

                // Notify all properties changed
                NotifyPropertyChanged(string.Empty);
            }
            else
            {
                Character = copy;
            }
        }
        /// <summary>
        /// Method for open from file XML
        /// </summary>
        /// <param name="parameter"></param>
        private void Open(object parameter)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.DefaultExt = ".gurps";
            dialog.CheckFileExists = true;
            dialog.Filter = "GURPS files|*.gurps";
            bool? result = dialog.ShowDialog();
            if (result.HasValue && (result == true))
            {
                // Deserialize the file
                FileStream stream = File.OpenRead(dialog.FileName);
                XmlSerializer serializer = new XmlSerializer(Character.GetType());
                try
                {
                    Character = (CharacterDB)serializer.Deserialize(stream);
                }
                catch (InvalidOperationException)
                {
                    MessageBox.Show(Resources.DialogLoadFailed);
                }
                stream.Close();

                // Notify all properties changed
                NotifyPropertyChanged(string.Empty);
            }
        }
        /// <summary>
        /// Method for save file in XML
        /// </summary>
        /// <param name="parameter"></param>
        private void SaveAs(object parameter)
        {
            SaveFileDialog dialog = new SaveFileDialog();
            dialog.DefaultExt = ".gurps";
            dialog.OverwritePrompt = true;
            dialog.CheckPathExists = true;
            dialog.Filter = "GURPS files|*.gurps";
            bool? result = dialog.ShowDialog();
            if (result.HasValue && (result == true))
            {
                // Serialize the models
                FileStream stream = File.OpenWrite(dialog.FileName);
                XmlSerializer serializer = new XmlSerializer(Character.GetType());
                serializer.Serialize(stream, Character);
                stream.Close();
            }
        }
        /// <summary>
        /// Method for save character in db 
        /// </summary>
        /// <param name="parameter"></param>
        private void SaveDb(object parameter)
        {
            if (Character.id == 0 || Character.id == -1)
            {
                context.CharacterDBs.Add(Character);
                context.SaveChanges();
            }
            else
            {
                context.SaveChanges();
            }

        }
        /// <summary>
        /// Close owner window
        /// </summary>
        /// <param name="parameter">null</param>
        public void OwnerClose(object parameter)
        {
            Owner.Close();
        }
    }
}
