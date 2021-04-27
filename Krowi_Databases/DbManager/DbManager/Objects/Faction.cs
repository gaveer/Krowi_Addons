namespace DbManager.Objects
{
    // <remarks>Needs to be in sync with the Faction table in the database.</remarks>
    public enum Faction
    {
        NoFaction = -1,
        Horde = 0,
        Alliance = 1,
        Undefined = 99
    }
}