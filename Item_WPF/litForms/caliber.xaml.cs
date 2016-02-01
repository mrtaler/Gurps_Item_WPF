﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для caliber.xaml
    /// </summary>
    public partial class Caliber : Window
    {
        //private MainWindowViewModel _mvvm = new MainWindowViewModel();
        private item1Entities _context;
        public ObservableCollection<AMMO> AmmoOk { get; set; }

        public Caliber()
        {
            InitializeComponent();
            _context = new item1Entities();
            AmmoOk = new ObservableCollection<AMMO>(_context.AMMOes);
            CaliberDataGrid.ItemsSource = AmmoOk;
            AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);
        }

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            _context.SaveChanges();
            this.Close();
        }

        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AMMO item in e.OldItems)
                {
                    _context.AMMOes.Remove(item);
                }
                _context.SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AMMO item in e.NewItems)
                {
                    item.Caliber_name = "new item";
                    item.alt_caliber_name = "";
                    item.AV_Upgrates = 1;
                    item.Dim_of_bullet_SI = 1;
                    item.Dim_of_bullet_US = 1;
                    item.WPS = 1;
                    item.CPS = 1;
                    item.Class_of_Ammo = "1";
                    _context.AMMOes.Add(item);

                }
            }
        }
        private void Caliber_dataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            if (e.EditAction == DataGridEditAction.Commit)
            {
                _context.SaveChanges();
            }
        }
    }
}


////  http://stackoverflow.com/questions/1427471/observablecollection-not-noticing-when-item-in-it-changes-even-with-inotifyprop