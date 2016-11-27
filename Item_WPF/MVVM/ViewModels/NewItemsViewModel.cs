﻿using Item_WPF.addin;
using Item_WPF.MVVM.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.Core.Objects;
using System.Linq;
using Item_WPF.ItemEntityModel;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    class NewItemsViewModel : INotifyPropertyChanged, IDisposable
    {
        private item1Entities _context;
        public ObservableCollection<ItemClass> ItemsClass { get; set; }
        public ItemClass SelectedItemClass { get; set; }
        public string NewItemName { get; set; }
        public NewItemsViewModel()
        {
            _context = new item1Entities();
            ItemsClass = new ObservableCollection<ItemClass>(_context.ItemClasses.Where(p => p.name != "All"));

            CCreateNewItem = new ViewModelCommand(CreateNewItem) ;
        }
        #region Command CreateNewItem
        private void CreateNewItem(object parameter)
        {
            ObjectParameter Returns = new ObjectParameter("Returns", typeof(string));
            _context.NEW_ITEM(NewItemName, SelectedItemClass.name, Returns);

            int _idRetuns = Convert.ToInt32(Returns.Value);
            ITEM _newItem = _context.ITEMs.First(p => p.uiIndex == _idRetuns);
            _newItem.dt = System.DateTime.UtcNow;
            // _newItem.used = true;
            if (_newItem.ItemSubClass.ItemClass.name == "Weapon"
                                || _newItem.ItemSubClass.ItemClass.name == "Knife"
                                || _newItem.ItemSubClass.ItemClass.name == "Throwing Knife"
                                || _newItem.ItemSubClass.ItemClass.name == "Launcher"
                                || _newItem.ItemSubClass.ItemClass.name == "Thrown Weapon"
                                || _newItem.ItemSubClass.ItemClass.name == "Blunt Weapon")
            {

                WeaponEditView WeapView = new WeaponEditView(_newItem);
                WeapView.ShowDialog();
            }

            else if (_newItem.ItemSubClass.ItemClass.name == "Attachment")
            {
                AttacmentEditView attachNr = new AttacmentEditView(_newItem);
                attachNr.ShowDialog();
            }
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