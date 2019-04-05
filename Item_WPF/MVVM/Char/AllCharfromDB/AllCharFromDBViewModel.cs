using System.Collections.ObjectModel;
using System.Linq;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

namespace Item_WPF.MVVM.AllCharfromDB
{
    /// <summary>
    /// View all char for load from DB
    /// </summary>
    public class AllCharFromDbViewModel : ViewModelBase
    {
        // private item1Entities _context;
        ContextGurpsModel _context;

        /// <summary>
        /// Collection for all character from db
        /// </summary>
        public ObservableCollection<CharacterDb> CharacterDbCollection { get; set; }

        /// <summary>
        /// Selected Character
        /// </summary>

        // public CharacterDb SelectedCharacterDb { get; set; }
        public CharacterDb SelectedCharacterDb { get; set; }

        public CharacterDb ChacFromDb { get; set; }

        /// <summary>
        /// Constructor for view char in this context
        /// </summary>
        /// <param name="context">Now working context</param>
        public AllCharFromDbViewModel(ContextGurpsModel context)
        {
            this._context = context;

            // _context = new item1Entities();
            this.SelectedCharacterDb = null;
            this.CharacterDbCollection = new ObservableCollection<CharacterDb>(this._context.CharacterDbDbSet);
            this.SelectedCharacterFromDbCommand = new ViewModelCommand(this.SelectedCharacterFromDb);
        }

        #region Command CSelectedItem
        private void SelectedCharacterFromDb(object parameter)
        {
            if (this.SelectedCharacterDb != null)
            {
                this.ChacFromDb =
                    this._context.CharacterDbDbSet.FirstOrDefault(p => p.Id == this.SelectedCharacterDb.Id);

                /*  var commentsOfMembers = _context.CharSkills
                      .Where(mc => mc.CharacterDb.id == SelectedCharacterDb.id)
                      .Select(mc => mc)
                      .ToList();
                      */
            }
        }

        public ViewModelCommand SelectedCharacterFromDbCommand { get; set; }
        #endregion
    }
}
