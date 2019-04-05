using System.Collections.Generic;

namespace Item_WPF.MVVM.Models
{
    // This item represents an inventory item, which can be carried by a
    // character.
    // This class is mutable - do not use as key in dictionaries.
    public class Item
    {
        public string Name { get; set; }

        public string Description { get; set; }

        public int Value { get; set; }

        public int Weight { get; set; }

        public List<AttackOption> AttackOptions { get; set; }

        public Item()
        {
            this.Name = string.Empty;
            this.Description = string.Empty;
            this.Value = 0;
            this.Weight = 0;
        }

        public Item(string name, int value, int weight)
        {
            this.Name = name;
            this.Description = string.Empty;
            this.Value = value;
            this.Weight = weight;
        }

        public Item(Item item)
        {
            this.Name = item.Name;
            this.Description = item.Description;
            this.Value = item.Value;
            this.Weight = item.Weight;
        }

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            if (!(obj is Item))
                return false;

            Item item = (Item)obj;

            return (item.Name.Equals(this.Name)) && (item.Description.Equals(this.Description))
                                                 && (item.Value.Equals(this.Value))
                                                 && (item.Weight.Equals(this.Weight));
        }

        public override int GetHashCode()
        {
            int hash = 17;
            hash = hash * 23 + this.Name.GetHashCode();
            hash = hash * 23 + this.Description.GetHashCode();
            hash = hash * 23 + this.Value.GetHashCode();
            hash = hash * 23 + this.Weight.GetHashCode();

            return hash;
        }

        public override string ToString()
        {
            return this.Name;
        }
    }
}
