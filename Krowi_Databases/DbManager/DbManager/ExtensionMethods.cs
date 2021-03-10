using System.Text;

namespace DbManager
{
    public static class ExtensionMethods
    {
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