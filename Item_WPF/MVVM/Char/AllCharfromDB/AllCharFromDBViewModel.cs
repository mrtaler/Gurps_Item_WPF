using Item_WPF.addin;
using System.Collections.ObjectModel;
using System.Linq;
using GurpsDb;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

namespace Item_WPF.MVVM.AllCharfromDB
{
    /// <summary>
    /// View all char for load from DB
    /// </summary>
    public class AllCharFromDbViewModel : ViewModelBase
    {
        //private item1Entities _context;
        ContextGurpsModel _context;
        /// <summary>
        /// Collection for all character from db
        /// </summary>
        public ObservableCollection<GurpsDb.GurpsModel.CharacterDb> CharacterDbCollection { get; set; }
        /// <summary>
        /// Selected Character
        /// </summary>
      //  public CharacterDb SelectedCharacterDb { get; set; }
        public GurpsDb.GurpsModel.CharacterDb SelectedCharacterDb { get; set; }

        public GurpsDb.GurpsModel.CharacterDb ChacFromDb { get; set; }
        /// <summary>
        /// Constructor for view char in this context
        /// </summary>
        /// <param name="context">Now working context</param>
        public AllCharFromDbViewModel(ContextGurpsModel context)
        {
            _context = context;
            //  _context = new item1Entities();
            SelectedCharacterDb = null;
            CharacterDbCollection = new ObservableCollection<GurpsDb.GurpsModel.CharacterDb>(_context.CharacterDbDbSet);
            SelectedCharacterFromDbCommand = new ViewModelCommand(SelectedCharacterFromDb);
        }

        #region Command CSelectedItem
        private void SelectedCharacterFromDb(object parameter)
        {
            if (SelectedCharacterDb != null)
            {
                ChacFromDb = _context.CharacterDbDbSet.FirstOrDefault(p => p.Id == SelectedCharacterDb.Id);
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
