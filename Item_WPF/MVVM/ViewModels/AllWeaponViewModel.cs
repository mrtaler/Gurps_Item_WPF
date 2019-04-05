using System.Collections.ObjectModel;
using System.Linq;

using GurpsDb;
using GurpsDb.GurpsModel;

using Item_WPF.MVVM.Models;

namespace Item_WPF.MVVM.ViewModels
{
    using Item = GurpsDb.GurpsModel.Item;

    public class AllWeaponViewModel
    {
        private ContextGurpsModel _context;
        private ObservableCollection<Item> Itt;
        private ItemToGridModel itemcom;
        public ObservableCollection<ItemToGridModel> ItemToGridColl { get; set; }
        public AllWeaponViewModel()
        {
            this._context = new ContextGurpsModel();
            this.ItemToGridColl = new ObservableCollection<ItemToGridModel>();
            this.Itt = new ObservableCollection<Item>(this._context.ItemDbSet.Where(p => p.ItemSubClass.ItemClass.Name == "Weapon"));
            foreach (var item in this.Itt)
            {
                this.itemcom = new ItemToGridModel(item);

                this.ItemToGridColl.Add(this.itemcom);
            }

        }
    }
}
