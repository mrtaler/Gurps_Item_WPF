using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
   public partial class CategoriesXML
    {
       public CategoriesXML(XElement itemCategoryx)
       {
           category = itemCategoryx;
       }

    }
}
