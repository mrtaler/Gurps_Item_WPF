using Item_WPF.MVVM.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
   public class AllWeaponViewModel
    {
        private item1Entities _context;
        private ObservableCollection<ITEM> Itt;
        private ItemToGridModel itemcom;
        public ObservableCollection<ItemToGridModel> ItemToGridColl { get; set; }
        public AllWeaponViewModel()
        {
            _context = new item1Entities();
            ItemToGridColl = new ObservableCollection<ItemToGridModel>();
            Itt = new ObservableCollection<ITEM>(_context.ITEMs.Where(p => p.ItemSubClass.ItemClass.name == "Weapon"));
            foreach (var item in Itt )

            {
                itemcom = new ItemToGridModel(item);

                ItemToGridColl.Add(itemcom);
            }

        }
    }
}
