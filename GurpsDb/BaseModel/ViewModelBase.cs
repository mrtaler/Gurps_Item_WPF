using System.Collections.Generic;
using System.ComponentModel;

namespace GurpsDb.BaseModel
{
    // Base class for the viewmodels, which implements the INotifyPropertyChanged interface.
    public class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        // Dictionary which holds information about which property is dependent on which. This is used by the
        // property change notification system.
        // Key: a property of the viewmodel.
        // Value: an array of properties, which are dependent on the property.
        protected Dictionary<string, string[]> PropertyDependencyMap = new Dictionary<string, string[]>();

        // Notify registered listeners that a change has happened. Used when setting property values.
        protected void NotifyPropertyChanged(string property)
        {
            if (this.PropertyChanged != null)
            {
                // Notify property change
                this.PropertyChanged(this, new PropertyChangedEventArgs(property));

                // Notify dependencies, if any
                if (this.PropertyDependencyMap.ContainsKey(property))
                    foreach (string dependencyProperty in this.PropertyDependencyMap[property])
                        this.NotifyPropertyChanged(dependencyProperty);
            }
        }
    }
}