using DbManagerWPF.Model;
using System.Collections.Generic;

namespace DbManagerWPF.DataManager
{
    public interface IAchievementDM
    {
        public IEnumerable<Achievement> GetWithCategory(Category category);
    }
}