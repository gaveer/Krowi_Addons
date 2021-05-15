using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace Windows_App.Controls
{
    /// <summary>
    /// Interaction logic for CalendarDay.xaml
    /// </summary>
    public partial class CalendarDay : UserControl
    {
        public static readonly DependencyProperty DayNumberProperty = DependencyProperty.Register("DayNumber", typeof(string), typeof(CalendarDay), new PropertyMetadata(""));

        public string DayNumber
        {
            get { return (string)GetValue(DayNumberProperty); }
            set { SetValue(DayNumberProperty, value); }
        }

        private const int width = 90;
        public CalendarDay()
        {
            InitializeComponent();
            DataContext = this;

            var croppedBitmap = (CroppedBitmap)FindResource("CalendarDayBackgroundImage");
            var x = StaticRandom.GetRandom(0, 2) * width;
            var y = StaticRandom.GetRandom(0, 2) * width;
            croppedBitmap = new CroppedBitmap(croppedBitmap.Source, new Int32Rect(x, y, width, width));
            Background.Source = croppedBitmap;
        }
    }
}