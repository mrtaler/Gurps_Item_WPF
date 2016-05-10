﻿using System;
using System.Collections.Generic;
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
using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AmmoView.xaml
    /// </summary>
    public partial class AmmoView : Window
    {
        public AmmoViewModel AmmoVM { get; set; }
        public AmmoView()
        {
            AmmoVM = new AmmoViewModel();
            DataContext = AmmoVM;
            InitializeComponent();

        }

        private void Closebutton_OnClick(object sender, RoutedEventArgs e)
        {
            AmmoVM.Dispose();
            DialogResult = true;
                this.Close();
        }

        private void AmmoView_OnClosed(object sender, EventArgs e)
        {
            AmmoVM.Dispose();
        }
    }
}
