namespace DbManager.Objects
{
    public class XuFuEncounter
    {
        public XuFuEncounter(int ID, string name, PetFamily family, string section)
        {
            this.ID = ID;
            Name = name;
            Family = family;
            Section = section;
        }

        public int ID { get; set; }
        public string Name { get; set; }
        public PetFamily Family { get; set; }
        public string Section { get; set; }

        public override string ToString()
        {
            return $"{ID} - {Name} - {Family} - {Section}";
        }
    }
}