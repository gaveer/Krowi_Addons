using System.Collections.Generic;
using System.Linq;
using System.Windows;

namespace Windows_App
{
    public static class Extensions
    {
        public static IEnumerable<T> FindLogicalChildren<T>(this DependencyObject obj) where T : DependencyObject
        {
            if (obj != null)
            {
                if (obj is T)
                    yield return obj as T;

                foreach (DependencyObject child in LogicalTreeHelper.GetChildren(obj).OfType<DependencyObject>())
                    foreach (T c in child.FindLogicalChildren<T>())
                        yield return c;
            }
        }

        public static (int Row, int Column) GetCoord<T>(this T[,] array, T item)
        {
            for (int i = array.GetLowerBound(0); i <= array.GetUpperBound(0); i++)
                for (int j = array.GetLowerBound(1); j <= array.GetUpperBound(1); j++)
                    if (array[i, j].Equals(item))
                        return (i, j);

            throw new KeyNotFoundException();
        }
    }
}