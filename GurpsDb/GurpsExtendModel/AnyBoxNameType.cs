﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.GurpsModel
{
    public partial class AnyBoxNameType
    {
        // : System.ComponentModel.INotifyPropertyChanged
        // #region Implement INotifyPropertyChanged

        // public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;

        // protected virtual void OnPropertyChanged(string propertyName)
        // {
        // if (PropertyChanged != null)
        // {
        // PropertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
        // }
        // }

        ////#endregion
        private bool _isSelected = false;

        public bool IsSelected
        {
            get
            {
                return this._isSelected;
            }

            set
            {
                if (value != this._isSelected)
                {
                    this._isSelected = value;

                    // OnPropertyChanged("IsSelected");
                }
            }
        }

        // public decimal TotalWeight()
        // {

        // //decimal totalweight = 0;

        // //foreach (Item item in Inventory)
        // //    totalweight += System.Convert.ToInt32(item.ubWeight);
        // //return totalweight;
        // }

        // public int TotalCost
        // {
        // get
        // {
        // int w = 0;
        // foreach (Item item in Inventory)
        // w += System.Convert.ToInt32(item.ubWeight);
        // return w;
        // }
        // }
    }
}
