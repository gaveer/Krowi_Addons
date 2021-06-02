using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DbManagerWPF.Model
{
    public static class ExtensionMethods
    {
        public static Category Find(this IEnumerable<Category> categories, int ID)
        {
            foreach (var category in categories)
            {
                if (category.ID == ID)
                    return category;

                var found = category.Children.Find(ID);
                if (found != null)
                    return found;
            }

            return null;
        }
    }
}