using DbManager.DataManagers;

namespace DbManager.GUI
{
    public interface IGUIHandler
    {
        public IDataManager DataManager { get; }
    }
}
