using Item_WPF.addin;
using System.Collections.ObjectModel;
using System.Linq;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.GurpsSkill_m
{
    public class AllGurpsSkillViewModel : ViewModelBase
    {
        private ContextGurpsModel _context;
        public ObservableCollection<GurpsSkill> AllGurpsSkillforTree
        {
            get { return new ObservableCollection<GurpsSkill>(_context.GurpsSkillDbSet.Where(p => p.IdSpecialization == null).OrderBy(p => p.Id)); }
        }
        public ViewModelCommand SelectedItemChangedCommand { get; set; }
        public GurpsSkill SelectedGurps { get; set; }


        public AllGurpsSkillViewModel()
        {
            _context = new ContextGurpsModel();
            SelectedItemChangedCommand = new ViewModelCommand(SelectedItemChanged, true);
            SelectedGurps = new GurpsSkill();
        }
        private void SelectedItemChanged(object parameter)
        {
            GurpsSkill SelectGurpsSkill = (parameter as GurpsSkill);
            int vx = SelectGurpsSkill.Id;
            //int vx = System.Convert.ToInt32(parameter);
            PrereqListDb ng = new PrereqListDb();

            SelectedGurps = _context.GurpsSkillDbSet.First(p => p.Id == vx);
            // SelectedGurpsForWork = (parameter as Item_WPF.GurpsSkill);

            if (_context.GurpsSkillDbSet.FirstOrDefault(p => p.Id == vx).IdSpecialization == null)
            {
                //SelectedGurpsForWork.NameSkill = SelectGurpsSkill.NameSkill;
            }
            else
                if (_context.GurpsSkillDbSet.FirstOrDefault(p => p.Id == vx).IdSpecialization != null)
            {
                //SelectedGurpsForWork.NameSkill = "name: " +
                //    _context.GurpsSkills.Find(_context.GurpsSkills.Find(vx).idSpecialization).NameSkill
                //    + "/"
                //    + _context.GurpsSkills.Find(vx).NameSkill;
                //SelectedGurpsForWork.SkillDifficulty =
                //    _context.GurpsSkills.Find(_context.GurpsSkills.Find(vx).idSpecialization).SkillDifficulty.Attribute.Name
                //    + "/" +
                //    _context.GurpsSkills.Find(_context.GurpsSkills.Find(vx).idSpecialization).SkillDifficulty.Difficulty.Name;
            }
            NotifyPropertyChanged("SelectedGurps");

        }

    }
}
