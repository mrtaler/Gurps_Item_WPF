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
            if (this.PropertyChanged != null)
            {
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        #endregion
        #region IdWeaponItem
        private int? _idWeaponItem;
        public int? IdWeaponItem
        {
            get
            {
                return this._idWeaponItem;
            }

            set
            {
                if (this._idWeaponItem != value)
                {
                    this._idWeaponItem = value;
                    this.OnPropertyChanged("IdWeaponItem");
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
                return this._idScopeItem;
            }

            set
            {
                if (this._idScopeItem != value)
                {
                    this._idScopeItem = value;
                    this.OnPropertyChanged("IdScopeItem");
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
                return this._idLaserItem;
            }

            set
            {
                if (this._idLaserItem != value)
                {
                    this._idLaserItem = value;
                    this.OnPropertyChanged("IdLaserItem");
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
                return this._idLightItem;
            }

            set
            {
                if (this._idLightItem != value)
                {
                    this._idLightItem = value;
                    this.OnPropertyChanged("IdLightItem");
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
                return this._idBipodItem;
            }

            set
            {
                if (this._idBipodItem != value)
                {
                    this._idBipodItem = value;
                    this.OnPropertyChanged("IdBipodItem");
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
                return this._idSilenserItem;
            }

            set
            {
                if (this._idSilenserItem != value)
                {
                    this._idSilenserItem = value;
                    this.OnPropertyChanged("IdSilenserItem");
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
                return this._idLauncherItem;
            }

            set
            {
                if (this._idLauncherItem != value)
                {
                    this._idLauncherItem = value;
                    this.OnPropertyChanged("IdLauncherItem");
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
                return this._idStockItem;
            }

            set
            {
                if (this._idStockItem != value)
                {
                    this._idStockItem = value;
                    this.OnPropertyChanged("IdStockItem");
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
                return this._idBayonetItem;
            }

            set
            {
                if (this._idBayonetItem != value)
                {
                    this._idBayonetItem = value;
                    this.OnPropertyChanged("IdBayonetItem");
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
                return this._idMagazineItem;
            }

            set
            {
                if (this._idMagazineItem != value)
                {
                    this._idMagazineItem = value;
                    this.OnPropertyChanged("IdMagazineItem");
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
                return this._idInternalItem;
            }

            set
            {
                if (this._idInternalItem != value)
                {
                    this._idInternalItem = value;
                    this.OnPropertyChanged("IdInternalItem");
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
                return this._idExternalItem;
            }

            set
            {
                if (this._idExternalItem != value)
                {
                    this._idExternalItem = value;
                    this.OnPropertyChanged("IdExternalItem");
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
                return this._idCalibre;
            }

            set
            {
                if (this._idCalibre != value)
                {
                    this._idCalibre = value;
                    this.OnPropertyChanged("IdCalibre");
                }
            }
        }

        #endregion

        /// <summary>
        /// обнуление комбинатора
        /// </summary>
        public CombineWeapModel(Weapon itt)
        {

            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 1) != null) this.IdScopeItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 1)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 2) != null) this.IdLaserItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 2)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 3) != null) this.IdLightItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 3)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 4) != null) this.IdBipodItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 4)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 5) != null) this.IdSilenserItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 5)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 6) != null) this.IdLauncherItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 6)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 7) != null) this.IdStockItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 7)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 8) != null) this.IdBayonetItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 8)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 9) != null) this.IdMagazineItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 9)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 10) != null) this.IdInternalItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 10)?.RAttachmentmount;
            if (itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 11) != null) this.IdExternalItem = itt.AvailableAttachSlot.FirstOrDefault(p => p.RAttachmentslot == 11)?.RAttachmentmount;
            if (itt.Caliber != null) this.IdCalibre = itt.Caliber.Id;
        }
    }
}

