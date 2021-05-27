using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace Windows_App.Controls
{
    /// <summary>
    /// Interaction logic for CalendarHeader.xaml
    /// </summary>
    public partial class CalendarHeader : UserControl
    {
        public static readonly DependencyProperty DayNameProperty = DependencyProperty.Register("DayName", typeof(string), typeof(CalendarHeader), new PropertyMetadata(""));

        public string DayName
        {
            get
            {
                return (string)GetValue(DayNameProperty);
            }
            set
            {
                SetValue(DayNameProperty, value);
            }
        }

        private const int width = 90;

        public CalendarHeader()
        {
            InitializeComponent();

            var backgroundImage = (CroppedBitmap)FindResource("BackgroundImage");
            var x = StaticRandom.GetRandom(0, 2) * width;
            backgroundImage = new CroppedBitmap(backgroundImage.Source, new Int32Rect(x, 180, width, 29));
            Resources["BackgroundImage"] = backgroundImage;
        }
    }
}
