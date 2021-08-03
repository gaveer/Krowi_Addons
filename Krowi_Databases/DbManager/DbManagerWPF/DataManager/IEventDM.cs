using DbManagerWPF.Model;
using System.Collections.Generic;

namespace DbManagerWPF.DataManager
{
    public interface IEventDM
    {
        public IEnumerable<Event> GetAll(bool refresh = false);
        public IEnumerable<Event> GetWithCategory(Category category);
        public IEnumerable<Event> GetWithAchievement(Achievement achievement);
    }
}