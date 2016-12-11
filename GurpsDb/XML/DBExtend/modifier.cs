namespace Item_WPF.ItemEntityModel
{
    public partial class Modifier
    {
        public Modifier() { }
        public Modifier(modifierXML item)
        {
            name = item.name.Value.ToString();
            nameC = item.name.Attribute("compare") != null
                           ? item.name.Attribute("compare").Value.ToString() : null;
            notes = item.notes != null
                           ? item.notes.Value.ToString() : null;
            if (item.notes != null)
            {
                notesC = item.notes.Attribute("compare") != null
                     ? item.notes.Attribute("compare").Value.ToString() : null;
            }
            levels = item.levels != null
            ? item.levels.Value.ToString() : null;

            reference = item.reference != null
                ? item.reference.Value.ToString() : null;

            affects = item.affects != null
            ? item.affects.Value.ToString() : null;

            version = item.version != null
            ? item.version.Value.ToString() : null;

            enabled = item.enabled != null
            ? item.enabled.Value.ToString() : null;

            Cost = item.cost != null
            ? item.cost.Value.ToString() : null;

            CostType = item.cost.Attribute("compare") != null
               ? item.cost.Attribute("compare").Value.ToString() : null;


        }
    }
}