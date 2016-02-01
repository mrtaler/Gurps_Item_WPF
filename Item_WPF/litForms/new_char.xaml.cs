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

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для new_char.xaml
    /// </summary>
    /// 
    public partial class NewChar : Window
    {
        private item1Entities _context;
        private Character Cha { get; set; }
        public NewChar()
        {
            InitializeComponent();
            _context = new item1Entities();
            Cha = new Character();
            Main1Grid.DataContext = Cha;
        }

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            _context.Characters.Add(Cha);
            _context.SaveChanges();
        }
    }
}
