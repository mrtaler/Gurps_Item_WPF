﻿using System.Windows;

namespace Item_WPF.MVVM.Serialize
{
    /// <summary>
    /// Логика взаимодействия для SerializeView.xaml
    /// </summary>
    public partial class SerializeView : Window
    {

        public SerializeView()
        {
            DataContext = new SerializeViewModel();
            InitializeComponent();
        }
    }
}
