using GurpsDb.XML.XSD.prereq_list;


// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class PrereqListDb
    {
        /// <summary>
        /// Method for Prereq_list
        /// </summary>
        /// <param name="item">PrereqListXml</param>
        public void FPPrereq_list(PrereqListXml item)
        {
            WhenTlCompare = item.WhenTl?.Attribute("compare")?.Value;
            WhenTl = item.WhenTl?.Value;
            CollegeCountCompare = item.CollegeCount?.Attribute("compare")?.Value;
            CollegeCount = item.CollegeCount?.Value;
            All = item.All?.Value;

        }
        /// <summary>
        /// Method for skill_prereq
        /// </summary>
        /// <param name="item"></param>
        public void FPskill_prereq(PrereqListXml item)
        {
            // skill_prereqDB=new  
            foreach (var itemSkillPrereq in item.SkillPrereq)
            {
                SkillPrereqDb sklprq = new SkillPrereqDb();
                sklprq.Name = itemSkillPrereq.Name?.Attribute("compare")?.Value;
                sklprq.Name = itemSkillPrereq.Name?.Value;
                sklprq.SpecializationCompare = itemSkillPrereq.Specialization?.Attribute("compare")?.Value;
                sklprq.Specialization = itemSkillPrereq.Specialization?.Value;
                sklprq.LevelSpCompare = itemSkillPrereq.Level?.Attribute("compare")?.Value;
                sklprq.LevelSp = itemSkillPrereq.Level?.Value;
                sklprq.Has = itemSkillPrereq.Has?.Value;
                SkillPrereqDb.Add(sklprq);
            }

        }

        /// <summary>
        /// Method for spell_prereq
        /// </summary>
        /// <param name="item"></param>
        public void FPspell_prereq(PrereqListXml item)
        {
            foreach (var itemspellPrereqDb in item.SpellPrereq)
            {
                SpellPrereqDb splprq = new SpellPrereqDb();

                splprq.NameCompare = itemspellPrereqDb.Name?.Attribute("compare")?.Value;
                splprq.Name = itemspellPrereqDb.Name?.Value;
                splprq.CollegeCompare = itemspellPrereqDb.College?.Attribute("compare")?.Value;
                splprq.College = itemspellPrereqDb.College?.Value;
                splprq.CollegeCountCompare = itemspellPrereqDb.CollegeCount?.Attribute("compare")?.Value;
                splprq.CollegeCount = itemspellPrereqDb.CollegeCount?.Value;
                splprq.QuantityCompare = itemspellPrereqDb.Quantity?.Attribute("compare")?.Value;
                splprq.Quantity = itemspellPrereqDb.Quantity?.Value;
                splprq.Anyt = itemspellPrereqDb.Any?.Value;
                splprq.Has = itemspellPrereqDb.Has?.Value;
                //  splprq.Value =itemspell_prereqDB.
                SpellPrereqDb.Add(splprq);
            }
        }

        public void FPattribute_prereq(PrereqListXml item)
        {
            foreach (var itemAttributePrereq in item.AttributePrereq)
            {
                AttributePrereq atrprq = new AttributePrereq();
                atrprq.Has = itemAttributePrereq.Has?.Value;
                atrprq.Which = itemAttributePrereq.Which?.Value;
                atrprq.Compare = itemAttributePrereq.Compare?.Value;
                atrprq.CombinedWith = itemAttributePrereq.CombinedWith?.Value;
                atrprq.Value = itemAttributePrereq.Value;
                AttributePrereq.Add(atrprq);
            }
        }

        public void FPadvantage_prereq(PrereqListXml item)
        {
            foreach (var itemAdvantagePrereq in item.AdvantagePrereq)
            {
                AdvantagePrereq advprq = new AdvantagePrereq();
                advprq.NameCompare = itemAdvantagePrereq.Name?.Attribute("compare")?.Value;
                advprq.Name = itemAdvantagePrereq.Name?.Value;
                advprq.NotesCompare = itemAdvantagePrereq.Notes?.Attribute("compare")?.Value;
                advprq.Notes = itemAdvantagePrereq.Notes?.Value;
                advprq.LevelCompare = itemAdvantagePrereq.Level?.Attribute("compare")?.Value;
                advprq.Level = itemAdvantagePrereq.Level?.Value;
                advprq.Has = itemAdvantagePrereq.Has?.Value;
                AdvantagePrereq.Add(advprq);
            }
        }
        public void FPcontained_weight_prereq(PrereqListXml item)
        {
            foreach (var itemContainedWeightPrereq in item.ContainedWeightPrereq)
            {
                ContainedWeightPrereq contprq = new ContainedWeightPrereq();
                contprq.Has = itemContainedWeightPrereq.Has?.Value;
                contprq.Compare = itemContainedWeightPrereq.Compare?.Value;
                contprq.Value = itemContainedWeightPrereq.Value;
                ContainedWeightPrereq.Add(contprq);
            }
        }
        /// <summary>
        /// Constructor for Work With XML
        /// </summary>
        /// <param name="item"></param>
        public PrereqListDb(PrereqListXml item)
            : this()
        {

            FPPrereq_list(item);

            FPskill_prereq(item);
            FPspell_prereq(item);
            FPattribute_prereq(item);
            FPadvantage_prereq(item);
            FPcontained_weight_prereq(item);

            #region prq_list
            if (item.PrereqList != null)
            {
                foreach (var itemPrereqList in item.PrereqList)
                {
                    PrereqListDb prlDbSub = new PrereqListDb();


                    prlDbSub.FPPrereq_list(itemPrereqList);
                    prlDbSub.FPskill_prereq(itemPrereqList);

                    prlDbSub.FPspell_prereq(itemPrereqList);
                    prlDbSub.FPattribute_prereq(itemPrereqList);
                    prlDbSub.FPadvantage_prereq(itemPrereqList);
                    prlDbSub.FPcontained_weight_prereq(itemPrereqList);

                    if (itemPrereqList.PrereqList != null)
                    {
                        foreach (var itemSubPrereqList in itemPrereqList.PrereqList)
                        {
                            PrereqListDb prlDbSubSub = new PrereqListDb();

                            prlDbSubSub.FPPrereq_list(itemSubPrereqList);
                            prlDbSubSub.FPskill_prereq(itemSubPrereqList);

                            prlDbSubSub.FPspell_prereq(itemSubPrereqList);
                            prlDbSubSub.FPattribute_prereq(itemSubPrereqList);
                            prlDbSubSub.FPadvantage_prereq(itemSubPrereqList);
                            prlDbSubSub.FPcontained_weight_prereq(itemSubPrereqList);

                            prlDbSub.PrereqListDb1.Add(prlDbSubSub);
                        }
                    }
                    PrereqListDb1.Add(prlDbSub);
                }
            }
            #endregion
        }
    }
}