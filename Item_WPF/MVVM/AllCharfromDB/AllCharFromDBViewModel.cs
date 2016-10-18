using Item_WPF.ItemEntityModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.AllCharfromDB
{
    public class AllCharFromDBViewModel
    {
        public ObservableCollection<CharacterDB> CharacterDbCollection { get; set; }
        public AllCharFromDBViewModel()
        {
            CharacterDbCollection = new ObservableCollection<CharacterDB>((new item1Entities()).CharacterDBs);
        }
    }
}
