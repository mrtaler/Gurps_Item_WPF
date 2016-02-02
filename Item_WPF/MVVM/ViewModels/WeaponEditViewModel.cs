using Item_WPF.addin;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Item_WPF.MVVM.ViewModels
{
    class WeaponEditViewModel : INotifyPropertyChanged, IDisposable
    {

        private item1Entities _context;
        //public ObservableCollection<ITEM> ItemColl { get; set; }
        //public ObservableCollection<WEAPON> WeaponColl { get; set; }
        public ObservableCollection<TL> TlCollection { get; set; }
        public ObservableCollection<LC> LccCollection { get; set; }
        public ObservableCollection<WeaponClass> WeaponClasscCollection { get; set; }
        public ObservableCollection<WeaponType> WeaponTypescCollection { get; set; }
        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }
        public ObservableCollection<AMMO> AmmoscCollection { get; set; }

        public ITEM ItemLoad { get; set; }
        public WEAPON WeaponLoad { get; set; }
        /// <summary>
        /// rjcnskm
        /// </summary>
        private byte[] _imagebute;
        public byte[] Imagebute { get { return _imagebute; }
            set
            {
                if (_imagebute != value)
                {
                    _imagebute = value;
                    RaisePropertyChanged("Imagebute");
                }
            }
        }
        private BitmapImage _ImageBitmapSourse;
        public BitmapImage ImageBitmapSourse
        {
            get { return _ImageBitmapSourse; }
            set
            {
                if (_ImageBitmapSourse != value)
                {
                    _ImageBitmapSourse = value;
                    RaisePropertyChanged("ImageBitmapSourse");
                }
            }
        }
        public WeaponEditViewModel(int itemselect)
        {
            _context = new item1Entities();
            //  ItemColl = new ObservableCollection<ITEM>(_context.ITEMs);
            //   WeaponColl = new ObservableCollection<WEAPON>(_context.WEAPONs);

            ItemLoad = (from z in _context.ITEMs
                where z.uiIndex == itemselect
                select z).First();

            WeaponLoad = (from p in _context.WEAPONs
                where p.uiIndex == ItemLoad.ubClassIndex
               select p).First();
            
            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            WeaponClasscCollection = new ObservableCollection<WeaponClass>(_context.WeaponClasses);

            WeaponTypescCollection =
                new ObservableCollection<WeaponType>(
                    _context.WeaponTypes.Where(p => p.WeaponClass.id == WeaponLoad.ubWeaponClass));

            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);
            AmmoscCollection = new ObservableCollection<AMMO>(_context.AMMOes);

            Save = new ActionCommand(SaveChanges) {IsExecutable = true};

            LoadImage = new ActionCommand(LoadImageToForm) {IsExecutable = true};
            DellImage = new ActionCommand(DellImageFromAll) {IsExecutable = true};

            if (ItemLoad.Item_Image != null)
            {
                // MemoryStream stream = new MemoryStream(item.Item_Image);
                using (var ms = new MemoryStream(ItemLoad.Item_Image, 0, ItemLoad.Item_Image.Length))
                {
                    var image = new BitmapImage();
                    image.BeginInit();
                    image.CacheOption = BitmapCacheOption.OnLoad;
                    image.StreamSource = ms;
                    image.EndInit();
                    ImageBitmapSourse = image;
                    Imagebute = ItemLoad.Item_Image;
                }
            }
        }
        private void SaveChanges()
        {
            _context.SaveChanges();
        }

        private void LoadImageToForm()
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.InitialDirectory = "C:\\Users\\Derdan\\Dropbox\\Weapon";
            dlg.Filter = "Image files (*.jpg,*.png,*.bmp,*.gif)|*.jpg;*.png;*.bmp,*.gif|All Files (*.*)|*.*";
            dlg.ShowDialog();
            if (dlg.FileName != "")
            {
                ImageBitmapSourse = new BitmapImage(new Uri(dlg.FileName));
                Imagebute = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }
        private void DellImageFromAll()
        {
            Imagebute = null;
            ImageBitmapSourse = null;
        }

        public ActionCommand Save { get; set; }
        public ActionCommand LoadImage { get; set; }
        public ActionCommand DellImage { get; set; }
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public void Dispose()
        {
            _context?.Dispose();
        }
    }

}


