using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.Models
{
    class CombineWeapModel : INotifyPropertyChanged
    {
        #region Implement INotifyPropertyChanged
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }

        #endregion
        #region IdWeaponItem
        private int? _IdWeaponItem;
        public int? IdWeaponItem
        {
            get
            {
                return _IdWeaponItem;
            }
            set
            {
                if (_IdWeaponItem != value)
                {
                    _IdWeaponItem = value;
                    OnPropertyChanged("IdWeaponItem");
                }
            }
        }
        #endregion
        #region IdScopeItem
        private int? _IdScopeItem;
        public int? IdScopeItem
        {
            get
            {
                return _IdScopeItem;
            }
            set
            {
                if (_IdScopeItem != value)
                {
                    _IdScopeItem = value;
                    OnPropertyChanged("IdScopeItem");
                }
            }
        }
        #endregion
        #region IdLaserItem
        private int? _IdLaserItem;
        public int? IdLaserItem
        {
            get
            {
                return _IdLaserItem;
            }
            set
            {
                if (_IdLaserItem != value)
                {
                    _IdLaserItem = value;
                    OnPropertyChanged("IdLaserItem");
                }
            }
        }
        #endregion
        #region IdLightItem
        private int? _IdLightItem;
        public int? IdLightItem
        {
            get
            {
                return _IdLightItem;
            }
            set
            {
                if (_IdLightItem != value)
                {
                    _IdLightItem = value;
                    OnPropertyChanged("IdLightItem");
                }
            }
        }
        #endregion
        #region IdBipodItem
        private int? _IdBipodItem;
        public int? IdBipodItem
        {
            get
            {
                return _IdBipodItem;
            }
            set
            {
                if (_IdBipodItem != value)
                {
                    _IdBipodItem = value;
                    OnPropertyChanged("IdBipodItem");
                }
            }
        }
        #endregion
        #region IdSilenserItem
        private int? _IdSilenserItem;
        public int? IdSilenserItem
        {
            get
            {
                return _IdSilenserItem;
            }
            set
            {
                if (_IdSilenserItem != value)
                {
                    _IdSilenserItem = value;
                    OnPropertyChanged("IdSilenserItem");
                }
            }
        }
        #endregion
        #region IdLauncherItem
        private int? _IdLauncherItem;
        public int? IdLauncherItem
        {
            get
            {
                return _IdLauncherItem;
            }
            set
            {
                if (_IdLauncherItem != value)
                {
                    _IdLauncherItem = value;
                    OnPropertyChanged("IdLauncherItem");
                }
            }
        }
        #endregion
        #region IdStockItem
        private int? _IdStockItem;
        public int? IdStockItem
        {
            get
            {
                return _IdStockItem;
            }
            set
            {
                if (_IdStockItem != value)
                {
                    _IdStockItem = value;
                    OnPropertyChanged("IdStockItem");
                }
            }
        }
        #endregion
        #region IdBayonetItem
        private int? _IdBayonetItem;
        public int? IdBayonetItem
        {
            get
            {
                return _IdBayonetItem;
            }
            set
            {
                if (_IdBayonetItem != value)
                {
                    _IdBayonetItem = value;
                    OnPropertyChanged("IdBayonetItem");
                }
            }
        }
        #endregion
        #region IdMagazineItem
        private int? _IdMagazineItem;
        public int? IdMagazineItem
        {
            get
            {
                return _IdMagazineItem;
            }
            set
            {
                if (_IdMagazineItem != value)
                {
                    _IdMagazineItem = value;
                    OnPropertyChanged("IdMagazineItem");
                }
            }
        }
        #endregion
        #region IdInternalItem
        private int? _IdInternalItem;
        public int? IdInternalItem
        {
            get
            {
                return _IdInternalItem;
            }
            set
            {
                if (_IdInternalItem != value)
                {
                    _IdInternalItem = value;
                    OnPropertyChanged("IdInternalItem");
                }
            }
        }
        #endregion
        #region IdExternalItem
        private int? _IdExternalItem;
        public int? IdExternalItem
        {
            get
            {
                return _IdExternalItem;
            }
            set
            {
                if (_IdExternalItem != value)
                {
                    _IdExternalItem = value;
                    OnPropertyChanged("IdExternalItem");
                }
            }
        }

        #endregion
        #region idCalibre
        private int? _idCalibre;
        public int? idCalibre
        {
            get
            {
                return _idCalibre;
            }
            set
            {
                if (_idCalibre != value)
                {
                    _idCalibre = value;
                    OnPropertyChanged("idCalibre");
                }
            }
        }

        #endregion
        /// <summary>
        /// обнуление комбинатора
        /// </summary>
        public CombineWeapModel(ITEM itt)
        {

            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 1) != null)
                IdScopeItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 1).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 2) != null)
                IdLaserItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 2).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 3) != null)
                IdLightItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 3).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 4) != null)
                IdBipodItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 4).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 5) != null)
                IdSilenserItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 5).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 6) != null)
                IdLauncherItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 6).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 7) != null)
                IdStockItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 7).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 8) != null)
                IdBayonetItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 8).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 9) != null)
                IdMagazineItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 9).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 10) != null)
                IdInternalItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 10).rAttachmentmount;
            if (itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 11) != null)
                IdExternalItem = itt.AvailableAttachSlots.FirstOrDefault(p => p.rATTACHMENTSLOT == 11).rAttachmentmount;
            if (itt.ubCalibre!=null)
                idCalibre = itt.ubCalibre;
        }
    }
}

