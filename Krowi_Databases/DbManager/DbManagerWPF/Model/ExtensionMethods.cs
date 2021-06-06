using System.Collections.Generic;
using System.Text;

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

        public static StringBuilder AppendLineTabbed(this StringBuilder stringBuilder, int numberOfTabs, string text)
        {
            for (int i = 0; i < numberOfTabs; i++)
                stringBuilder.Append("    ");
            stringBuilder.AppendLine(text);
            return stringBuilder;
        }

        public static StringBuilder AppendTabbed(this StringBuilder stringBuilder, int numberOfTabs, string text)
        {
            for (int i = 0; i < numberOfTabs; i++)
                stringBuilder.Append("    ");
            stringBuilder.Append(text);
            return stringBuilder;
        }
    }
}