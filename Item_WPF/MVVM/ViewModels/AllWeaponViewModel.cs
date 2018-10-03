using Item_WPF.MVVM.Models;
using System.Collections.ObjectModel;
using System.Linq;
using GurpsDb;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class AllWeaponViewModel
    {
        private ContextGurpsModel _context;
        private ObservableCollection<GurpsDb.GurpsModel.Item> Itt;
        private ItemToGridModel itemcom;
        public ObservableCollection<ItemToGridModel> ItemToGridColl { get; set; }
        public AllWeaponViewModel()
        {
            _context = new ContextGurpsModel();
            ItemToGridColl = new ObservableCollection<ItemToGridModel>();
            Itt = new ObservableCollection<GurpsDb.GurpsModel.Item>(_context.ItemDbSet.Where(p => p.ItemSubClass.ItemClass.Name == "Weapon"));
            foreach (var item in Itt)

            {
                itemcom = new ItemToGridModel(item);

                ItemToGridColl.Add(itemcom);
            }

        }
    }
}
