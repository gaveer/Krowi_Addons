namespace DbManager.Objects
{
    public class UIMap
    {
        public int ID { get; }
        public string OriginalName { get; }
        public string Name { get; }

        public UIMap(int id, string originalName) : this(id, originalName, originalName) { }

        public UIMap(int id, string originalName, string name)
        {
            ID = id;
            OriginalName = originalName;
            Name = name;
        }

        public override string ToString()
        {
            return $"{ID} - {Name}";
        }
    }
}