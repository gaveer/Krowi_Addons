using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace DbManagerWPF.ViewModel
{
   public partial class MainWindowViewModel
    {
        #region Properties
        public ICommand RefreshAllCommand => new CommandHandler(() => RefreshAll(), () => true);
        #endregion

        public void RefreshAll()
        {
            LoadCategoriesViewModel();
            LoadUIMapViewModel();
            LoadEventsViewModel();
        }
    }
}