using Krowi_Calendar_Exporter_Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Windows_App
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        English english = new English();
        List<Controls.CalendarDay> calendarDays;

        public MainWindow()
        {
            InitializeComponent();
            SizeToContent = SizeToContent.WidthAndHeight;
            DataContext = english;

            calendarDays = new List<Controls.CalendarDay>();
            FieldInfo[] fields = GetType().GetFields(BindingFlags.NonPublic | BindingFlags.Instance).Where(x => x.FieldType.Name == typeof(Controls.CalendarDay).Name).ToArray();

            foreach (var field in fields)
                calendarDays.Add((Controls.CalendarDay)field.GetValue(this));

            var now = DateTime.Now;
            SetDayNumbers(now.Month, now.Year);
        }

        private void SetDayNumbers(int month, int year)
        {
            var firstDayOfMonth = new DateTime(year, month, 1);
            var firstDayOfMonthDayOfWeek = (int)firstDayOfMonth.DayOfWeek;
            firstDayOfMonthDayOfWeek = firstDayOfMonthDayOfWeek == 0 ? 7 : firstDayOfMonthDayOfWeek; // Sunday = 0 and should be 7
            var date = firstDayOfMonth.AddDays(1 - firstDayOfMonthDayOfWeek);

            foreach (var calendarDay in calendarDays)
            {
                calendarDay.DayNumber = date.Day.ToString();
                date = date.AddDays(1);
            }
        }
    }
}