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
            Name = item.Name.Value;
            NameC = item.Name.Attribute("compare")?.Value;
            Notes = item.Notes?.Value;
            NotesC = item.Notes?.Attribute("compare")?.Value;
            Levels = item.Levels?.Value;
            Reference = item.Reference?.Value;
            Affects = item.Affects?.Value;
            Version = item.Version?.Value;
            Enabled = item.Enabled?.Value;
            Cost = item.Cost?.Value;
            CostType = item.Cost?.Attribute("compare")?.Value;
        }
    }
}