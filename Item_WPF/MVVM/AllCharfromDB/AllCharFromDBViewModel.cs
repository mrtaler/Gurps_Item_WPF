using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using System.Collections.ObjectModel;

namespace Item_WPF.MVVM.AllCharfromDB
{
    public class AllCharFromDbViewModel : ViewModelBase
    {
        private item1Entities _context;

        public ObservableCollection<CharacterDB> CharacterDbCollection { get; set; }
        public CharacterDB SelectedCharacterDb { get; set; }
        public AllCharFromDbViewModel(item1Entities context)
        {
            _context = context;
            SelectedCharacterDb = null;
            CharacterDbCollection = new ObservableCollection<CharacterDB>(_context.CharacterDBs);
        }
    }
}
