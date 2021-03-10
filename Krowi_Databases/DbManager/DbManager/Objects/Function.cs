namespace DbManager.Objects
{
    public class Function
    {
        public int ID { get; set; }
        public string Call { get; set; }
        public string Description { get; set; }

        public Function(int id, string call, string description = null)
        {
            ID = id;
            Call = call;
            Description = description;
        }

        public override string ToString()
        {
            if (ID > 0)
                return $"{ID} - {Call}{(string.IsNullOrEmpty(Description) ? "" : $" - {Description}")}";
            else
                return "";
        }
    }
}