using System.Collections.Generic;

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

        public static UIMap Find(this IEnumerable<UIMap> uiMaps, int ID)
        {
            foreach (var uiMap in uiMaps)
            {
                if (uiMap.ID == ID)
                    return uiMap;

                var found = uiMap.Children.Find(ID);
                if (found != null)
                    return found;
            }

            return null;
        }
    }
}