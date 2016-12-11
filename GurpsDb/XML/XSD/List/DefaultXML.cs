namespace GurpsDb.XML.XSD.List
{
    /// <summary>
    /// Table="default"
    /// </summary>
    public partial class DefaultXml
    {
        /// <summary>
        /// 1 Element name
        /// </summary>
        public XElement NameDefaultXml;
        /// <summary>
        /// 2 Element specialization
        /// </summary>
        public XElement SpecializationDefaultXml;
        /// <summary>
        /// 3 Element type
        /// </summary>
        public XElement TypeDefaultXml;
        /// <summary>
        /// 4 Element modifier 
        /// </summary>
        public XElement ModifierDefaultXml;
        public DefaultXml() { }
        public DefaultXml(XElement itemdefault)
        {
            NameDefaultXml = itemdefault.Element("name");
            SpecializationDefaultXml = itemdefault.Element("specialization");
            TypeDefaultXml = itemdefault.Element("type");
            ModifierDefaultXml = itemdefault.Element("modifier");
        }
    }
}
