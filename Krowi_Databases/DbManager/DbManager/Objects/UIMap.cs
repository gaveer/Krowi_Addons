namespace DbManager.Objects
{
    public class UIMap
    {
        public int ID { get; }
        public string OriginalName { get; }

        public UIMap(int id, string originalName)
        {
            ID = id;
            OriginalName = originalName;
        }

        public override string ToString()
        {
            return $"{ID} - {OriginalName}";
        }
    }
}