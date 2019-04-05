using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class Modifier
    {
        /// <summary>
        /// Default
        /// </summary>
        public Modifier() { }

        /// <summary>
        /// Contructor from XML
        /// </summary>
        /// <param name="item">ModifierXml</param>
        public Modifier(ModifierXml item)
        {
            this.Name = item.Name.Value;
            this.NameC = item.Name.Attribute("compare")?.Value;
            this.Notes = item.Notes?.Value;
            this.NotesC = item.Notes?.Attribute("compare")?.Value;
            this.Levels = item.Levels?.Value;
            this.Reference = item.Reference?.Value;
            this.Affects = item.Affects?.Value;
            this.Version = item.Version?.Value;
            this.Enabled = item.Enabled?.Value;
            this.Cost = item.Cost?.Value;
            this.CostType = item.Cost?.Attribute("compare")?.Value;
        }
    }
}