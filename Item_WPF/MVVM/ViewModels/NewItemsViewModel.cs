using Item_WPF.addin;
using Item_WPF.MVVM.View;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.Core.Objects;
using System.Linq;
using GurpsDb.GurpsModel;

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
            _context = new ContextGurpsModel();
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClassDbSet.Where(p => p.Name != "All"));

            CCreateNewItem = new ViewModelCommand(CreateNewItem);
        }
        #region Command CreateNewItem
        private void CreateNewItem(object parameter)
        {
            // ObjectParameter Returns = new ObjectParameter("Returns", typeof(string));
            // _context.NEW_ITEM(NewItemName, SelectedItemClass.Name, Returns);

            //int _idRetuns = Convert.ToInt32(Returns.Value);
            //Item _newItem = _context.ItemDbSet.First(p => p.UiIndex == _idRetuns);

            // _newItem.used = true;
            /*if (_newItem.ItemSubClass.ItemClass.Name == "Weapon"
                                || _newItem.ItemSubClass.ItemClass.Name == "Knife"
                                || _newItem.ItemSubClass.ItemClass.Name == "Throwing Knife"
                                || _newItem.ItemSubClass.ItemClass.Name == "Launcher"
                                || _newItem.ItemSubClass.ItemClass.Name == "Thrown Weapon"
                                || _newItem.ItemSubClass.ItemClass.Name == "Blunt Weapon")*/
            if (SelectedItemClass.Name == "Weapon"
                                || SelectedItemClass.Name == "Knife"
                                || SelectedItemClass.Name == "Throwing Knife"
                                || SelectedItemClass.Name == "Launcher"
                                || SelectedItemClass.Name == "Thrown Weapon"
                                || SelectedItemClass.Name == "Blunt Weapon")
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

                WeaponEditView WeapView = new WeaponEditView(_context.WeaponDbSet.Find(_newItem));
                WeapView.ShowDialog();
            }

            /*  else if (_newItem.ItemSubClass.ItemClass.Name == "Attachment")
              {
                  AttacmentEditView attachNr = new AttacmentEditView(_newItem);
                  attachNr.ShowDialog();
              }*/
        }
        public ViewModelCommand CCreateNewItem { get; set; }
        #endregion
        #region intrfeis
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public void Dispose()
        {
            _context?.Dispose();
        }
        #endregion
    }
}