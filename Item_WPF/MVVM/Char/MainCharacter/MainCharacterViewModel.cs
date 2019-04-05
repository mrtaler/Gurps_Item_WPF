using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Windows;
using System.Xml.Serialization;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;
using Item_WPF.GCS_Ser.names;
using Item_WPF.litForms.TextInput;
using Item_WPF.MVVM.AddSkilltoChar;
using Item_WPF.MVVM.AllCharfromDB;
using Item_WPF.MVVM.Char.EditCharacterSkill;
using Item_WPF.MVVM.View;
using Item_WPF.Properties;

using Microsoft.Win32;

namespace Item_WPF.MVVM.Char.MainCharacter
{
    using GurpsDb.GurpsExtendModel;

    class MainCharacterViewModel : ViewModelBase
    {
        protected Window Owner;
        private ContextGurpsModel contextGurpsModel;

        // public CharacterDb Character { get; set; }
        public CharacterDb Character { get; set; }

        public ViewModelCommand AboutCommand { get; private set; }
        public ViewModelCommand EditPrimaryStatsCommand { get; private set; }
        public ViewModelCommand EditSecondaryStatsCommand { get; private set; }
        public ViewModelCommand AddItemCommand { get; private set; }
        public ViewModelCommand AddAdvantageCommand { get; private set; }
        public ViewModelCommand AddSkillCommand { get; private set; }
        public ViewModelCommand NewCommand { get; private set; }
        public ViewModelCommand OpenCommand { get; private set; }
        public ViewModelCommand SaveDbCommand { get; private set; }
        public ViewModelCommand OpenDbCommand { get; private set; }
        public ViewModelCommand SaveAsCommand { get; private set; }
        public ViewModelCommand OwnerCloseCommand { get; private set; }

        public ViewModelCommand ChangeNameCommand { get; private set; }

        public ViewModelCommand EditSkillDblClkCommand { get; private set; }

        public MainCharacterViewModel(Window owner)
            : this(owner, new CharacterDb())
        {
        }

        public MainCharacterViewModel(Window owner, CharacterDb character)
        {
            // contextitem1Entities = new item1Entities();
            this.contextGurpsModel = new ContextGurpsModel();

            this.Owner = owner;
            this.Character = character;

            // name
            if (string.IsNullOrEmpty(this.Character.Name)) this.Character.Name = USCensusNames.Instance.GetFullName(true);

            // Create commands
            this.AboutCommand = new ViewModelCommand(this.ShowAboutWindow);
            this.EditPrimaryStatsCommand = new ViewModelCommand(this.EditPrimaryStats);
            this.EditSecondaryStatsCommand = new ViewModelCommand(this.EditSecondaryStats);
            this.AddItemCommand = new ViewModelCommand(this.AddItem);
            this.AddAdvantageCommand = new ViewModelCommand(this.AddAdvantage);
            this.AddSkillCommand = new ViewModelCommand(this.AddSkill);
            this.NewCommand = new ViewModelCommand(this.New);
            this.OpenCommand = new ViewModelCommand(this.Open, false);
            this.OpenDbCommand = new ViewModelCommand(this.OpenDb);
            this.SaveAsCommand = new ViewModelCommand(this.SaveAs, false);
            this.OwnerCloseCommand = new ViewModelCommand(this.OwnerClose);

            this.EditSkillDblClkCommand = new ViewModelCommand(this.EditSkillDblClk);

            this.SaveDbCommand = new ViewModelCommand(this.SaveDb);

            this.ChangeNameCommand = new ViewModelCommand(this.ChangeName);

            // Setup property dependencies
            this.PropertyDependencyMap.Add("Strength", new[] { "MaxHP", "BasicLift", "ThrustDamage", "SwingDamage" });
            this.PropertyDependencyMap.Add("StrengthPoints", new[] { "Strength", "CharacterPoints" });
            this.PropertyDependencyMap.Add("Dexterity", new[] { "BasicSpeed" });
            this.PropertyDependencyMap.Add("DexterityPoints", new[] { "Dexterity", "CharacterPoints" });
            this.PropertyDependencyMap.Add("Intelligence", new[] { "Willpower", "Perception" });
            this.PropertyDependencyMap.Add("IntelligencePoints", new[] { "Intelligence", "CharacterPoints" });
            this.PropertyDependencyMap.Add("Health", new[] { "MaxFP", "BasicSpeed" });
            this.PropertyDependencyMap.Add("HealthPoints", new[] { "Health", "CharacterPoints" });
            this.PropertyDependencyMap.Add("MaxHPPoints", new[] { "MaxHP", "CharacterPoints" });
            this.PropertyDependencyMap.Add("MaxFPPoints", new[] { "MaxFP", "CharacterPoints" });
            this.PropertyDependencyMap.Add("WillpowerPoints", new[] { "Willpower", "CharacterPoints" });
            this.PropertyDependencyMap.Add("PerceptionPoints", new[] { "Perception", "CharacterPoints" });
            this.PropertyDependencyMap.Add("BasicSpeed", new[] { "BasicMove" });
            this.PropertyDependencyMap.Add("BasicSpeedPoints", new[] { "BasicSpeed", "CharacterPoints" });
            this.PropertyDependencyMap.Add("BasicMovePoints", new[] { "BasicMove", "CharacterPoints" });
            this.PropertyDependencyMap.Add("BasicLift", new[] { "Encumbrance" });
            this.PropertyDependencyMap.Add("Inventory", new[] { "Encumbrance" });
            this.PropertyDependencyMap.Add("Advantages", new[] { "CharacterPoints" });
            this.PropertyDependencyMap.Add("Skills", new[] { "CharacterPoints" });
            this.PropertyDependencyMap.Add("Encumbrance", new[] { "EncumbranceAsInt", "EncumbranceAsString", "Move", "Dodge" });
        }

        public int Strength
        {
            get { return this.Character.Strength; }
        }

        public string Name
        {
            get
            {
                string name = this.Character.Name;
                if (string.IsNullOrEmpty(name))
                    name = Resources.UnnamedCharacter;
                return name;
            }
        }

        public int Dexterity
        {
            get { return this.Character.Dexterity; }
        }

        public int Intelligence
        {
            get { return this.Character.Intelligence; }
        }

        public int Health
        {
            get { return this.Character.Health; }
        }

        public int MaxHP
        {
            get { return this.Character.MaxHP; }
        }

        public int MaxFP
        {
            get { return this.Character.MaxFP; }
        }

        public int Willpower
        {
            get { return this.Character.Willpower; }
        }

        public int Perception
        {
            get { return this.Character.Perception; }
        }

        public float BasicLift
        {
            get { return this.Character.BasicLift; }
        }

        public decimal BasicSpeed
        {
            get { return this.Character.BasicSpeed; }
        }

        public int BasicMove
        {
            get { return this.Character.BasicMove; }
        }

        public int Move
        {
            get { return this.Character.Move; }
        }

        public int Dodge
        {
            get { return this.Character.Dodge; }
        }

        public DiceString ThrustDamage
        {
            get { return this.Character.ThrustDamage; }
        }

        public DiceString SwingDamage
        {
            get { return this.Character.SwingDamage; }
        }

        // public ObservableCollection<Item> Inventory
        // {
        // get { return Character.InventoryOfChar; }
        // }
        public int TotalWeight
        {
            get { return this.Character.TotalWeight; }
        }

        // public ObservableCollection<Advantage> Advantages
        // {
        // get { return Character.Advantages; }
        // }
        public ObservableCollection<GurpsSkill> Skills
        {
            get
            {
                return new ObservableCollection<GurpsSkill>(this.Character.CharSkillCollection.Select(p => p.GurpsSkill));
            }
        }
        public ObservableCollection<CharSkill> ChaSkills
        {
            get
            {
                return new ObservableCollection<CharSkill>(this.Character.CharSkillCollection);
            }
        }

        // Returns the window title
        public string Title
        {
            get { return "GURPS Character Editor - " + this.Name; }
        }

        public int CharacterPoints
        {
            get { return this.Character.CharacterPoints; }
        }

        public int? EncumbranceAsInt
        {
            get { return this.Character.Encumbrance; }
        }

        public string EncumbranceAsString
        {
            get
            {
                if (this.Character.Encumbrance.HasValue)
                {
                    switch ((int)this.Character.Encumbrance)
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
            window.Owner = this.Owner;
            window.ShowDialog();
        }

        /// <summary>
        /// Method for work with inventory
        /// </summary>
        /// <param name="parameter"></param>
        public void AddItem(object parameter)
        {
            // all_ItemsView window = new all_ItemsView("all");
            // window.Owner = Owner;
            ////window.DataContext = new Item();

            // bool? result = window.ShowDialog();
            // if (result.HasValue && (result == true))
            // {
            // Character.Inventory.Add(window._allItemsViewModel.SelectedItemForWork);

            // NotifyPropertyChanged("Inventory");
            // }
        }

        /// <summary>
        /// Method for Work With Advantage
        /// </summary>
        /// <param name="parameter"></param>
        public void AddAdvantage(object parameter)
        {
            // EditAdvantageWindowView window = new EditAdvantageWindowView();
            // window.Owner = Owner;
            // window.DataContext = new Advantage();

            // bool? result = window.ShowDialog();
            // if (result.HasValue && (result == true))
            // {
            // Character.Advantages.Add((Advantage)window.DataContext);
            // NotifyPropertyChanged("Advantages");
            // }
        }

        /// <summary>
        /// Method for work With skill in char
        /// </summary>
        /// <param name="parameter"></param>
        public void AddSkill(object parameter)
        {
            AddSkilltoCharView window = new AddSkilltoCharView(this.Character, this.contextGurpsModel);
            window.Owner = this.Owner;

            bool? result = window.ShowDialog();

            // if (result.HasValue && (result == true))
            // {
            // var ch = Character;
            this.NotifyPropertyChanged("Skills");
            this.NotifyPropertyChanged("CharSkills");
            this.NotifyPropertyChanged("ChaSkills");

            // }
        }

        /// <summary>
        /// Method for open window to edit Primary start
        /// </summary>
        /// <param name="parameter"></param>
        private void EditPrimaryStats(object parameter)
        {
            ////EditPrimaryStatsWindowView window = new EditPrimaryStatsWindowView();
            ////window.Owner = Owner;
            ////window.DataContext = new EditPrimaryStatsViewModel(Character);

            ////CharacterDb copy = Character.Copy();
            ////bool? result = window.ShowDialog();
            // if (result.HasValue && (result == true))
            // {
            // NotifyPropertyChanged("StrengthPoints");
            // NotifyPropertyChanged("DexterityPoints");
            // NotifyPropertyChanged("IntelligencePoints");
            // NotifyPropertyChanged("HealthPoints");
            // }
            // else
            // {
            // Character = copy;
            // }
        }

        /// <summary>
        /// Method for open window to edit second start
        /// </summary>
        /// <param name="parameter"></param>
        private void EditSecondaryStats(object parameter)
        {
            // EditSecondaryStatsWindowView window = new EditSecondaryStatsWindowView();
            // window.Owner = Owner;
            // window.DataContext = new EditSecondaryStatsViewModel(Character);

            // CharacterDb copy = Character.Copy();
            // bool? result = window.ShowDialog();
            // if (result.HasValue && (result == true))
            // {
            // NotifyPropertyChanged("MaxHPPoints");
            // NotifyPropertyChanged("MaxFPPoints");
            // NotifyPropertyChanged("WillpowerPoints");
            // NotifyPropertyChanged("PerceptionPoints");
            // NotifyPropertyChanged("BasicSpeedPoints");
            // NotifyPropertyChanged("BasicMovePoints");
            // }
            // else
            // {
            // Character = copy;
            // }
        }

        /// <summary>
        /// Method for make new Char
        /// </summary>
        /// <param name="parameter"></param>
        private void New(object parameter)
        {
            this.Character = new CharacterDb();
            if (string.IsNullOrEmpty(this.Character.Name))
                this.Character.Name = USCensusNames.Instance.GetFullName(true);

            // Notify all properties changed
            this.NotifyPropertyChanged(string.Empty);
        }

        /// <summary>
        /// Method for open Char from DB
        /// </summary>
        /// <param name="parameter"></param>
        private void OpenDb(object parameter)
        {
            AllCharfromDBView window = new AllCharfromDBView(this.contextGurpsModel);
            window.Owner = this.Owner;

            CharacterDb copy = this.Character.Copy();
            bool? result = window.ShowDialog();

            if (result.HasValue && (result == true))
            {
                if ((window.DataContext as AllCharFromDbViewModel)?.SelectedCharacterDb != null)
                {
                    this.Character = (window.DataContext as AllCharFromDbViewModel).SelectedCharacterDb;
                    if (string.IsNullOrEmpty(this.Character.Name)) this.Character.Name = USCensusNames.Instance.GetFullName(true);
                }

                // Notify all properties changed
                this.NotifyPropertyChanged(string.Empty);
            }
            else
            {
                this.Character = copy;
            }
        }

        /// <summary>
        /// Method for open from file XML
        /// </summary>
        /// <param name="parameter"></param>
        private void Open(object parameter)
        {
            // OpenFileDialog dialog = new OpenFileDialog();
            // dialog.DefaultExt = ".gurps";
            // dialog.CheckFileExists = true;
            // dialog.Filter = "GURPS files|*.gurps";
            // bool? result = dialog.ShowDialog();
            // if (result.HasValue && (result == true))
            // {
            // // Deserialize the file
            // FileStream stream = File.OpenRead(dialog.FileName);
            // XmlSerializer serializer = new XmlSerializer(Character.GetType());
            // try
            // {
            // Character = (CharacterDb)serializer.Deserialize(stream);
            // }
            // catch (InvalidOperationException)
            // {
            // MessageBox.Show(Resources.DialogLoadFailed);
            // }
            // stream.Close();

            // // Notify all properties changed
            // NotifyPropertyChanged(string.Empty);
            // }
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
                XmlSerializer serializer = new XmlSerializer(this.Character.GetType());
                serializer.Serialize(stream, this.Character);
                stream.Close();
            }
        }

        /// <summary>
        /// Method for save character in db 
        /// </summary>
        /// <param name="parameter"></param>
        private void SaveDb(object parameter)
        {
            if (this.Character.Id == 0 || this.Character.Id == -1)
            {
                this.contextGurpsModel.CharacterDbDbSet.Add(this.Character);
            }

            this.contextGurpsModel.SaveChanges();
        }

        private void ChangeName(object parameter)
        {
            TextInputView txInputView = new TextInputView(this.Character.Name);
            bool? result = txInputView.ShowDialog();
            if (result.HasValue && (result == true))
            {
                this.Character.Name = (txInputView.DataContext as TextInputViewModel)?.Text;
                this.NotifyPropertyChanged("Name");
                this.NotifyPropertyChanged("Title");
            }
        }

        private void EditSkillDblClk(object parametr)
        {
            GurpsSkill charSkillForEdit = (GurpsSkill)parametr;
            var findCharSkill = this.Character.CharSkillCollection.FirstOrDefault(p => p.GurpsSkill == charSkillForEdit);

            EditCharacterSkillView editSkillView = new EditCharacterSkillView(findCharSkill);
            editSkillView.ShowDialog();

            this.NotifyPropertyChanged("Skills");
            this.NotifyPropertyChanged("CharSkills");
            this.NotifyPropertyChanged("ChaSkills");
        }

        /// <summary>
        /// Close owner window
        /// </summary>
        /// <param name="parameter">null</param>
        public void OwnerClose(object parameter)
        {
            this.Owner.Close();
        }
    }
}
