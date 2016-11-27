using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using System.Collections.ObjectModel;

namespace Item_WPF.MVVM.AllCharfromDB
{
    /// <summary>
    /// View all char for load from DB
    /// </summary>
    public class AllCharFromDbViewModel : ViewModelBase
    {
        private item1Entities _context;
        /// <summary>
        /// Collection for all character from db
        /// </summary>
        public ObservableCollection<CharacterDB> CharacterDbCollection { get; set; }
        /// <summary>
        /// Selected Character
        /// </summary>
        public CharacterDB SelectedCharacterDb { get; set; }
        /// <summary>
        /// Constructor for view char in this context
        /// </summary>
        /// <param name="context">Now working context</param>
        public AllCharFromDbViewModel(item1Entities context)
        {
            _context = context;
            SelectedCharacterDb = null;
            CharacterDbCollection = new ObservableCollection<CharacterDB>(_context.CharacterDBs);
        }
    }
}
