namespace DbManagerWPF.Model
{
    public class Function
    {
        public int ID { get; set; } = -1;
        public string Call { get; set; } = "";
        public string Description { get; set; } = "";

        public Function() { }

        public override string ToString()
        {
            return $"{Description}";
        }
    }
}