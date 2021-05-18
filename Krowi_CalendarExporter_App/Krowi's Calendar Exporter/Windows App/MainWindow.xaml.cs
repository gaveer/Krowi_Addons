using Krowi_Calendar_Exporter_Core;
using System;
using System.Linq;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using Windows_App.Controls;

namespace Windows_App
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private DateTime currentDate;
        private MainWindowViewModel viewModel;
        private readonly CalendarDay[,] calendarDays;

        public MainWindow()
        {
            InitializeComponent();
            SizeToContent = SizeToContent.WidthAndHeight;

            calendarDays = new CalendarDay[6, 7]; // Rows, Columns -> Foreach does first rows, then columns

            int? rowOffset = null;
            int? columnOffset = null;
            foreach (var calendarDay in this.FindLogicalChildren<CalendarDay>())
            {
                if (rowOffset == null)
                    rowOffset = Grid.GetRow(calendarDay);
                if (columnOffset == null)
                    columnOffset = Grid.GetColumn(calendarDay);
                calendarDays[Grid.GetRow(calendarDay) - rowOffset ?? 0, Grid.GetColumn(calendarDay) - columnOffset ?? 0] = calendarDay;
            }

            currentDate = DateTime.Now;
            SetDayNumbers(currentDate.Month, currentDate.Year);
            ApplyShadows(currentDate.Month);

            viewModel = new MainWindowViewModel();
            viewModel.CurrentMonth = currentDate.ToString("MMMM yyyy");
            viewModel.GetEvents();
            DataContext = viewModel;
        }

        private void SetDayNumbers(int month, int year)
        {
            var firstDayOfMonth = new DateTime(year, month, 1);
            var firstDayOfMonthDayOfWeek = (int)firstDayOfMonth.DayOfWeek;
            firstDayOfMonthDayOfWeek = firstDayOfMonthDayOfWeek == 0 ? 7 : firstDayOfMonthDayOfWeek; // Sunday = 0 and should be 7
            var date = firstDayOfMonth.AddDays(1 - firstDayOfMonthDayOfWeek);

            foreach (var calendarDay in calendarDays)
            {
                calendarDay.Date = date;
                date = date.AddDays(1);
            }
        }

        private void ApplyShadows(int month)
        {
            foreach (var calendarDay in calendarDays)
            {
                (int row, int column) = calendarDays.GetCoord(calendarDay);
                if (calendarDay.Date.Month == month)
                {
                    // If next and below are next month we need to add an inner corner at the bottom right
                    if (column + 1 <= calendarDays.GetUpperBound(1) && calendarDays[row, column + 1].Date.Month != calendarDay.Date.Month && row + 1 <= calendarDays.GetUpperBound(0) && calendarDays[row + 1, column].Date.Month != calendarDay.Date.Month)
                        calendarDay.SetShadow(ShadowDirection.None, ShadowDirection.BottomRightInner);
                    else
                        calendarDay.HideShadows();

                    continue;
                }

                if (row == 0) // Previous month days
                {
                    if (column == 0) // First day on calendar for previous month
                    {
                        if (column + 1 <= calendarDays.GetUpperBound(1) && calendarDays[row, column + 1].Date.Month == calendarDay.Date.Month) // Same month
                            calendarDay.SetShadow(ShadowDirection.TopLeft, ShadowDirection.BottomLeft);
                        else
                            calendarDay.SetShadow(ShadowDirection.TopLeftRight, ShadowDirection.BottomLeftRight);
                    }
                    else // Other previous month days
                    {
                        if (column + 1 <= calendarDays.GetUpperBound(1) && calendarDays[row, column + 1].Date.Month == calendarDay.Date.Month) // Same month
                            calendarDay.SetShadow(ShadowDirection.Top, ShadowDirection.Bottom);
                        else // Next month
                            calendarDay.SetShadow(ShadowDirection.TopRight, ShadowDirection.BottomRight, false, true);
                    }
                }
                // Next month days
                else if (row == 4) // Second to last row
                {
                    if (calendarDay.Date.Day == 1) // First day of next month
                    {
                        if (column == calendarDays.GetUpperBound(1)) // Last day of the row of days of next month
                            calendarDay.SetShadow(ShadowDirection.TopLeftRight, ShadowDirection.MiddleLeftRight, true);
                        else
                            calendarDay.SetShadow(ShadowDirection.TopLeft, ShadowDirection.Left, column != 0);
                    }
                    else if (column == calendarDays.GetUpperBound(1)) // Last day of the row of days of next month
                        calendarDay.SetShadow(ShadowDirection.TopRight, ShadowDirection.Right);
                    else // Other days of next month
                        calendarDay.SetShadow(ShadowDirection.Top, ShadowDirection.Middle);
                }
                else // Last row
                {
                    if (calendarDay.Date.Day == 1) // First day of next month
                        calendarDay.SetShadow(ShadowDirection.TopLeft, ShadowDirection.BottomLeft, column != 0);
                    else if (column == calendarDays.GetUpperBound(1)) // Last day of the row of days of next month
                    {
                        if (calendarDays[row - 1, column].Date.Month == calendarDay.Date.Month) // Same month
                        {
                            if (calendarDays[row - 1, column - 1].Date.Month == calendarDay.Date.Month) // Same month
                                calendarDay.SetShadow(ShadowDirection.Right, ShadowDirection.BottomRight);
                            else // Previous month
                                calendarDay.SetShadow(ShadowDirection.MiddleTopLeftRight, ShadowDirection.BottomRight);
                        }
                        else // Previous month
                            calendarDay.SetShadow(ShadowDirection.TopRight, ShadowDirection.BottomRight);
                    }
                    else if (column == 0) // First day of the row of days of next month
                    {
                        if (calendarDays[row - 1, column].Date.Month == calendarDay.Date.Month) // Same month
                            calendarDay.SetShadow(ShadowDirection.Left, ShadowDirection.BottomLeft);
                        else // Previous month
                            calendarDay.SetShadow(ShadowDirection.TopLeft, ShadowDirection.BottomLeft);
                    }
                    else // Other days of next month
                    {
                        if (calendarDays[row - 1, column].Date.Month == calendarDay.Date.Month) // Same month
                        {
                            if (column == 0)
                                calendarDay.SetShadow(ShadowDirection.Left, ShadowDirection.Bottom);
                            else if (calendarDays[row - 1, column - 1].Date.Month == calendarDay.Date.Month) // Same month
                                calendarDay.SetShadow(ShadowDirection.Middle, ShadowDirection.Bottom);
                            else // Previous month
                                calendarDay.SetShadow(ShadowDirection.MiddleTopLeft, ShadowDirection.Bottom);
                        }
                        else // Previous month
                        {
                            calendarDay.SetShadow(ShadowDirection.Top, ShadowDirection.Bottom);
                        }
                    }
                }
            }
        }

        private void SetPreviousMonth(object sender, RoutedEventArgs e)
        {
            currentDate = currentDate.AddMonths(-1);
            SetDayNumbers(currentDate.Month, currentDate.Year);
            ApplyShadows(currentDate.Month);
            viewModel.CurrentMonth = currentDate.ToString("MMMM yyyy");
        }
        private void SetNextMonth(object sender, RoutedEventArgs e)
        {
            currentDate = currentDate.AddMonths(1);
            SetDayNumbers(currentDate.Month, currentDate.Year);
            ApplyShadows(currentDate.Month);
            viewModel.CurrentMonth = currentDate.ToString("MMMM yyyy");
        }
    }
}