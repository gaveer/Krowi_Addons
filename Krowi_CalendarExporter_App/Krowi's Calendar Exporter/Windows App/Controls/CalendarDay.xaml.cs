using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Windows_App.Controls
{
    /// <summary>
    /// Interaction logic for CalendarDay.xaml
    /// </summary>
    public partial class CalendarDay : UserControl, IEquatable<CalendarDay>
    {
        public static readonly DependencyProperty DateProperty = DependencyProperty.Register("Date", typeof(DateTime), typeof(CalendarDay), new PropertyMetadata(DateTime.Now));

        public DateTime Date
        {
            get
            {
                return (DateTime)GetValue(DateProperty);
            }
            set
            {
                SetValue(DateProperty, value);
            }
        }

        private const int width = 90;
        private const int height = 45;

        private readonly Int32Rect topLeft = new(0, 0, width, height); // Flip for topRight, bottomLeft and bottomRight
        private readonly Int32Rect topLeftRounded = new(0, height, width, height);
        private readonly Int32Rect right = new(0, height * 2, width, height);
        private readonly Int32Rect image4 = new(0, height * 3, width, height);
        private readonly Int32Rect topLeftRight = new(0, height * 4, width, height);
        private readonly Int32Rect top = new(width, 0, width, height);
        private readonly Int32Rect middle = new(width, height, width, height);
        private readonly Int32Rect left = new(width, height * 2, width, height);
        private readonly Int32Rect middleTopLeft = new(width, height * 3, width, height);
        private readonly Int32Rect bottomLeftRight = new(width, height * 4, width, height);
        private readonly Int32Rect middleLeftRight = new(width * 2, 0, width, height);
        private readonly Int32Rect middleTopLeftRight = new(width * 2, height, width, height);

        private readonly Int32Rect topLeftRightRounded = new(width * 4, 0, width, height); // Custom
        private readonly Int32Rect bottomRightInner = new(width * 4, height, width, height); // Custom

        public CalendarDay()
        {
            InitializeComponent();

            var backgroundImage = (CroppedBitmap)FindResource("BackgroundImage");
            var x = StaticRandom.GetRandom(0, 2) * width;
            var y = StaticRandom.GetRandom(0, 2) * width;
            backgroundImage = new CroppedBitmap(backgroundImage.Source, new Int32Rect(x, y, width, width));
            Resources["BackgroundImage"] = backgroundImage;
        }

        public void SetShadow(ShadowDirection topDirection, ShadowDirection bottomDirection, bool topRounded = false, bool bottomRounded = false)
        {
            Int32Rect rect;
            ScaleTransform flipTrans;

            flipTrans = new ScaleTransform();
            var shadowTopImage = (CroppedBitmap)FindResource("ShadowTopImage");
            switch (topDirection)
            {
                case ShadowDirection.TopLeft:
                    rect = topRounded ? topLeftRounded : topLeft;
                    break;
                case ShadowDirection.Top:
                    rect = top;
                    break;
                case ShadowDirection.TopRight:
                    rect = topRounded ? topLeftRounded : topLeft;
                    flipTrans.ScaleX = -1;
                    break;
                case ShadowDirection.Right:
                    rect = right;
                    break;
                case ShadowDirection.Left:
                    rect = left;
                    break;
                case ShadowDirection.MiddleTopLeft:
                    rect = middleTopLeft;
                    break;
                case ShadowDirection.MiddleTopLeftRight:
                    rect = middleTopLeftRight;
                    break;
                case ShadowDirection.TopLeftRight:
                    rect = topRounded ? topLeftRightRounded : topLeftRight;
                    break;
                default:
                    rect = middle;
                    break;
            }
            shadowTopImage = new CroppedBitmap(shadowTopImage.Source, rect);
            Resources["ShadowTopImage"] = shadowTopImage;
            ShadowTopImage.RenderTransform = flipTrans;
            ShadowTopImage.Visibility = topDirection == ShadowDirection.None ? Visibility.Hidden : Visibility.Visible;

            flipTrans = new ScaleTransform();
            var shadowBottomImage = (CroppedBitmap)FindResource("ShadowBottomImage");
            switch (bottomDirection)
            {
                case ShadowDirection.Right:
                    rect = right;
                    break;
                case ShadowDirection.BottomRight:
                    rect = bottomRounded ? topLeftRounded : topLeft;
                    flipTrans.ScaleX = -1;
                    flipTrans.ScaleY = -1;
                    break;
                case ShadowDirection.Bottom:
                    rect = top;
                    flipTrans.ScaleY = -1;
                    break;
                case ShadowDirection.BottomLeft:
                    rect = bottomRounded ? topLeftRounded : topLeft;
                    flipTrans.ScaleY = -1;
                    break;
                case ShadowDirection.Left:
                    rect = left;
                    break;
                case ShadowDirection.MiddleLeftRight:
                    rect = middleLeftRight;
                    break;
                case ShadowDirection.BottomLeftRight:
                    rect = bottomLeftRight;
                    break;
                case ShadowDirection.BottomRightInner:
                    rect = bottomRightInner;
                    break;
                default:
                    rect = middle;
                    break;
            }
            shadowBottomImage = new CroppedBitmap(shadowBottomImage.Source, rect);
            Resources["ShadowBottomImage"] = shadowBottomImage;
            ShadowBottomImage.RenderTransform = flipTrans;
            ShadowBottomImage.Visibility = bottomDirection == ShadowDirection.None ? Visibility.Hidden : Visibility.Visible;
        }

        public void HideShadows()
        {
            ShadowTopImage.Visibility = Visibility.Hidden;
            ShadowBottomImage.Visibility = Visibility.Hidden;
        }

        public bool Equals(CalendarDay other)
        {
            return Date == other.Date;
        }
    }
}