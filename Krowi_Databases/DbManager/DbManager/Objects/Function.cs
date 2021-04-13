namespace DbManager.Objects
{
    public class Function
    {
        public int ID { get; }
        public string Call { get; }
        public string Description { get; }

        public Function(int id, string call, string description)
        {
            ID = id;
            Call = call;
            Description = description;
        }

        public override string ToString()
        {
            if (ID > 0)
                return $"{Description}";
            else
                return "";
        }
    }
}