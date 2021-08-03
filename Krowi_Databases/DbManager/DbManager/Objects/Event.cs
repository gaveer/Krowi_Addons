namespace DbManager.Objects
{
    public class Event
    {
        public int ID { get; set; } = -1;
        public string Title { get; set; } = "";
        public string Icon { get; set; } = "";

        public Event() { }

        public override string ToString()
        {
            return $"{Title}";
        }
    }
}