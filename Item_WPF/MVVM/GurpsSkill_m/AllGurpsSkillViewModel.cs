using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.GurpsSkill_m
{
    public class AllGurpsSkillViewModel : ViewModelBase
    {
        private item1Entities _context;
        public ObservableCollection<ItemEntityModel.GurpsSkill> AllGurpsSkillforTree
        {
            get { return new ObservableCollection<GurpsSkill>(_context.GurpsSkills.Where(p => p.idSpecialization == null).OrderBy(p => p.id)); }
        }
        public ViewModelCommand SelectedItemChangedCommand { get; set; }
        public GurpsSkill SelectedGurps { get; set; }


        public AllGurpsSkillViewModel()
        {
            _context = new item1Entities();
            SelectedItemChangedCommand = new ViewModelCommand(SelectedItemChanged, true);
            SelectedGurps = new GurpsSkill();
        }
        private void SelectedItemChanged(object parameter)
        {
            GurpsSkill SelectGurpsSkill = (parameter as ItemEntityModel.GurpsSkill);
            int vx = SelectGurpsSkill.id;
            //int vx = System.Convert.ToInt32(parameter);
            PrereqListDb ng = new PrereqListDb();

            SelectedGurps = _context.GurpsSkills.First(p => p.id == vx);
            // SelectedGurpsForWork = (parameter as Item_WPF.GurpsSkill);

            if (_context.GurpsSkills.FirstOrDefault(p => p.id == vx).idSpecialization == null)
            {
                //SelectedGurpsForWork.NameSkill = SelectGurpsSkill.NameSkill;
            }
            else
                if (_context.GurpsSkills.FirstOrDefault(p => p.id == vx).idSpecialization != null)
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
