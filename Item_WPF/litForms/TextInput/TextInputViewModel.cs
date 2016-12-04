using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.litForms.TextInput
{
    public class TextInputViewModel
    {
        public string Text { get; set; }
        public TextInputViewModel(string text)
        {
            Text = text;
        }
    }
}
