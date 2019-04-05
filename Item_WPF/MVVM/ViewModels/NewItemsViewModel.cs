using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.Core.Objects;
using System.Linq;

using GurpsDb;
using GurpsDb.GurpsModel;

using Item_WPF.addin;
using Item_WPF.MVVM.View;

namespace Item_WPF.MVVM.ViewModels
{
    class NewItemsViewModel : INotifyPropertyChanged, IDisposable
    {
        private ContextGurpsModel _context;
        public ObservableCollection<ItemClass> ItemsClass { get; set; }
        public ItemClass SelectedItemClass { get; set; }
        public string NewItemName { get; set; }
        public NewItemsViewModel()
        {
            this._context = new ContextGurpsModel();
            this.ItemsClass = new ObservableCollection<ItemClass>(this._context.ItemClassDbSet.Where(p => p.Name != "All"));

            this.CCreateNewItem = new ViewModelCommand(this.CreateNewItem);
        }

        #region Command CreateNewItem
        private void CreateNewItem(object parameter)
        {
            // ObjectParameter Returns = new ObjectParameter("Returns", typeof(string));
            // _context.NEW_ITEM(NewItemName, SelectedItemClass.Name, Returns);

            // int _idRetuns = Convert.ToInt32(Returns.Value);
            // Item _newItem = _context.ItemDbSet.First(p => p.UiIndex == _idRetuns);

            // _newItem.used = true;
            /*if (_newItem.ItemSubClass.ItemClass.Name == "Weapon"
                                || _newItem.ItemSubClass.ItemClass.Name == "Knife"
                                || _newItem.ItemSubClass.ItemClass.Name == "Throwing Knife"
                                || _newItem.ItemSubClass.ItemClass.Name == "Launcher"
                                || _newItem.ItemSubClass.ItemClass.Name == "Thrown Weapon"
                                || _newItem.ItemSubClass.ItemClass.Name == "Blunt Weapon")*/
            if (this.SelectedItemClass.Name == "Weapon"
                                || this.SelectedItemClass.Name == "Knife"
                                || this.SelectedItemClass.Name == "Throwing Knife"
                                || this.SelectedItemClass.Name == "Launcher"
                                || this.SelectedItemClass.Name == "Thrown Weapon"
                                || this.SelectedItemClass.Name == "Blunt Weapon")
            {
                Weapon _newItem = new Weapon();

                /*     new WeaponDamage(
                                         "5d6",
                                         _context.WeaponAttackTypeDbSet.First(p => p.Name.Contains("primary"))),
                                     NewItemName,
                                     _context.ItemSubClassDbSet.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name.Contains("Guns")),
                                     _context.TlDbSet.First(p => p.NameTl.Contains("8")),
                                     _context.LcDbSet.First(p => p.NameLc.Contains("3")))
                                 {
                                     Dt = System.DateTime.UtcNow
                                 };
                                 _context.WeaponDbSet.Add(_newItem);
                                 _context.SaveChanges();
                                 */
                WeaponEditView WeapView = new WeaponEditView(this._context.WeaponDbSet.Find(_newItem), this._context);
                WeapView.ShowDialog();
            }
            else if (this.SelectedItemClass.Name == "Attachment")
            {
                var att = new Attachment();

                AttacmentEditView attachNr = new AttacmentEditView(att, this._context);
                attachNr.ShowDialog();
            }
        }

        public ViewModelCommand CCreateNewItem { get; set; }
        #endregion
        #region intrfeis
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public void Dispose()
        {
            this._context?.Dispose();
        }

        #endregion
    }
}