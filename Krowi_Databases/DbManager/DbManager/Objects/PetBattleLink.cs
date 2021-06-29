namespace DbManager.Objects
{
    public class PetBattleLink
    {
        public PetBattleLink(string iD, int criteriaNumber, string name, PetBattleLink parent, string externalLink, PetFamily family)
        {
            ID = iD;
            CriteriaNumber = criteriaNumber;
            Name = name;
            Parent = parent;
            ExternalLink = externalLink;
            Family = family;
        }

        public string ID { get; set; }
        public int CriteriaNumber { get; set; }
        public string Name { get; set; }
        public PetBattleLink Parent { get; set; }
        public PetFamily Family { get; set; }
        public string ExternalLink { get; set; }

        public override string ToString()
        {
            return $"{ID} - {CriteriaNumber} - {Name} - {ExternalLink}";
        }
    }
}