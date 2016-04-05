﻿using System.Windows;
using GurpsCharacterEditor.ViewModels;

namespace GurpsCharacterEditor.Views
{
    public partial class AboutWindow : Window
    {
        public AboutWindow()
        {
            DataContext = new AboutViewModel();
            InitializeComponent();
        }

        private void CloseButtonClick(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
