using Item_WPF.addin;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
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
        public ObservableCollection<TL> TlCollection { get; set; }
        public ObservableCollection<LC> LccCollection { get; set; }
        public ObservableCollection<WeaponClass> WeaponClasscCollection { get; set; }
        public ObservableCollection<WeaponType> WeaponTypescCollection { get; set; }
        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }
        public ObservableCollection<AMMO> AmmoscCollection { get; set; }
        public ITEM ItemLoad { get; set; }
        public WEAPON WeaponLoad { get; set; }
        public ObservableCollection<AvailableAttachSlot> avSlot { get; set; }
        public WeaponEditViewModel(int itemselect)
        {
            _context = new item1Entities();

            ItemLoad = (from z in _context.ITEMs
                        where z.uiIndex == itemselect
                        select z).First();

            WeaponLoad = (from p in _context.WEAPONs
                          where p.uiIndex == ItemLoad.ubClassIndex
                          select p).First();

            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            WeaponClasscCollection = new ObservableCollection<WeaponClass>(_context.WeaponClasses);
            WeaponTypescCollection = new ObservableCollection<WeaponType>(_context.WeaponTypes);
            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);

            avSlot=new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlots.Where(p=> p.rWeaponId == WeaponLoad.uiIndex));

            AmmoscCollection = new ObservableCollection<AMMO>(_context.AMMOes);


            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            LoadImage = new ActionCommand(LoadImageToForm) { IsExecutable = true };
            DellImage = new ActionCommand(DellImageFromAll) { IsExecutable = true };

            avSlot.CollectionChanged += new NotifyCollectionChangedEventHandler(_avSlot_CollectionChanged);

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
                //  ImageBitmapSourse = new BitmapImage(new Uri(dlg.FileName));
                ItemLoad.Item_Image = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }
        private void DellImageFromAll()
        {
            // Imagebute = null;
            ItemLoad.Item_Image = null;
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


        private void _avSlot_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AvailableAttachSlot item in e.OldItems)
                {
                    _context.AvailableAttachSlots.Remove(item);
                }
                SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AvailableAttachSlot item in e.NewItems)
                {
                   _context.AvailableAttachSlots.Add(item);
                    SaveChanges();
                }
            }
        }
    }

}


