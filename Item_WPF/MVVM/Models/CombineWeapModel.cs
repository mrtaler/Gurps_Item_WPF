using System.ComponentModel;
using System.Linq;


// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    class CombineWeapModel : INotifyPropertyChanged
    {
        #region Implement INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        #endregion
        #region IdWeaponItem
        private int? _idWeaponItem;
        public int? IdWeaponItem
        {
            get
            {
                return _idWeaponItem;
            }
            set
            {
                if (_idWeaponItem != value)
                {
                    _idWeaponItem = value;
                    OnPropertyChanged("IdWeaponItem");
                }
            }
        }
        #endregion
        #region IdScopeItem
        private int? _idScopeItem;
        public int? IdScopeItem
        {
            get
            {
                return _idScopeItem;
            }
            set
            {
                if (_idScopeItem != value)
                {
                    _idScopeItem = value;
                    OnPropertyChanged("IdScopeItem");
                }
            }
        }
        #endregion
        #region IdLaserItem
        private int? _idLaserItem;
        public int? IdLaserItem
        {
            get
            {
                return _idLaserItem;
            }
            set
            {
                if (_idLaserItem != value)
                {
                    _idLaserItem = value;
                    OnPropertyChanged("IdLaserItem");
                }
            }
        }
        #endregion
        #region IdLightItem
        private int? _idLightItem;
        public int? IdLightItem
        {
            get
            {
                return _idLightItem;
            }
            set
            {
                if (_idLightItem != value)
                {
                    _idLightItem = value;
                    OnPropertyChanged("IdLightItem");
                }
            }
        }
        #endregion
        #region IdBipodItem
        private int? _idBipodItem;
        public int? IdBipodItem
        {
            get
            {
                return _idBipodItem;
            }
            set
            {
                if (_idBipodItem != value)
                {
                    _idBipodItem = value;
                    OnPropertyChanged("IdBipodItem");
                }
            }
        }
        #endregion
        #region IdSilenserItem
        private int? _idSilenserItem;
        public int? IdSilenserItem
        {
            get
            {
                return _idSilenserItem;
            }
            set
            {
                if (_idSilenserItem != value)
                {
                    _idSilenserItem = value;
                    OnPropertyChanged("IdSilenserItem");
                }
            }
        }
        #endregion
        #region IdLauncherItem
        private int? _idLauncherItem;
        public int? IdLauncherItem
        {
            get
            {
                return _idLauncherItem;
            }
            set
            {
                if (_idLauncherItem != value)
                {
                    _idLauncherItem = value;
                    OnPropertyChanged("IdLauncherItem");
                }
            }
        }
        #endregion
        #region IdStockItem
        private int? _idStockItem;
        public int? IdStockItem
        {
            get
            {
                return _idStockItem;
            }
            set
            {
                if (_idStockItem != value)
                {
                    _idStockItem = value;
                    OnPropertyChanged("IdStockItem");
                }
            }
        }
        #endregion
        #region IdBayonetItem
        private int? _idBayonetItem;
        public int? IdBayonetItem
        {
            get
            {
                return _idBayonetItem;
            }
            set
            {
                if (_idBayonetItem != value)
                {
                    _idBayonetItem = value;
                    OnPropertyChanged("IdBayonetItem");
                }
            }
        }
        #endregion
        #region IdMagazineItem
        private int? _idMagazineItem;
        public int? IdMagazineItem
        {
            get
            {
                return _idMagazineItem;
            }
            set
            {
                if (_idMagazineItem != value)
                {
                    _idMagazineItem = value;
                    OnPropertyChanged("IdMagazineItem");
                }
            }
        }
        #endregion
        #region IdInternalItem
        private int? _idInternalItem;
        public int? IdInternalItem
        {
            get
            {
                return _idInternalItem;
            }
            set
            {
                if (_idInternalItem != value)
                {
                    _idInternalItem = value;
                    OnPropertyChanged("IdInternalItem");
                }
            }
        }
        #endregion
        #region IdExternalItem
        private int? _idExternalItem;
        public int? IdExternalItem
        {
            get
            {
                return _idExternalItem;
            }
            set
            {
                if (_idExternalItem != value)
                {
                    _idExternalItem = value;
                    OnPropertyChanged("IdExternalItem");
                }
            }
        }

        #endregion
        #region IdCalibre
        private int? _idCalibre;
        public int? IdCalibre
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
                    OnPropertyChanged("IdCalibre");
                }
            }
        }

        #endregion
        /// <summary>
        /// обнуление комбинатора
        /// </summary>
        public CombineWeapModel(Weapon itt)
        {

            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 1) != null)
                IdScopeItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 1)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 2) != null)
                IdLaserItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 2)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 3) != null)
                IdLightItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 3)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 4) != null)
                IdBipodItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 4)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 5) != null)
                IdSilenserItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 5)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 6) != null)
                IdLauncherItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 6)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 7) != null)
                IdStockItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 7)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 8) != null)
                IdBayonetItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 8)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 9) != null)
                IdMagazineItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 9)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 10) != null)
                IdInternalItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 10)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 11) != null)
                IdExternalItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 11)?.RAttachmentmount;
            if (itt.UbCalibre != null)
                IdCalibre = itt.UbCalibre;
        }
    }
}

