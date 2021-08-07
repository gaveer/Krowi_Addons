using DbManagerWPF.Model;
using System.Collections.Generic;

namespace DbManagerWPF.DataManager
{
    public interface IUIMapDM
    {
        public IEnumerable<UIMap> GetAll(bool refresh = false);
        public UIMap Get(int uiMapID, bool refresh = false);
        public IEnumerable<UIMap> GetWithCategory(Category category);
        public IEnumerable<UIMap> GetWithAchievement(Achievement achievement);
    }
}