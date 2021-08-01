using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DbManagerWPF.DataManager
{
    public class AchievementDM : DataManagerBase, IAchievementDM
    {
        private readonly IUIMapDM uiMapDM;
        private readonly IEventDM eventDM;
        private readonly List<Achievement> achievements = new();

        public AchievementDM(SqliteConnection connection, IUIMapDM uiMapDM, IEventDM eventDM) : base(connection)
        {
            this.uiMapDM = uiMapDM;
            this.eventDM = eventDM;
        }

        public IEnumerable<Achievement> GetAll(bool refresh = false)
        {
            if (!refresh)
                if (achievements.Any())
                    return achievements;

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
	                                A.ID, AGT.Name, A.FactionID, A.CovenantID, A.Points, A.Obtainable, A.WowheadLink
                                FROM
	                                Achievement A
	                                LEFT JOIN Achievement_AGT AGT
		                                ON A.ID = AGT.ID
                                ORDER BY
	                                A.ID ASC;";

            using (var reader = cmd.ExecuteReader())
            {
                achievements.Clear();
                while (reader.Read())
                    achievements.Add(new Achievement(uiMapDM, eventDM)
                    {
                        ID = reader.GetInt32(0),
                        Name = reader.IsDBNull(1) ? null : reader.GetString(1),
                        Faction = (Faction)reader.GetInt32(2),
                        Covenant = (Covenant)reader.GetInt32(3),
                        Points = reader.GetInt32(4),
                        Obtainable = reader.GetBoolean(5),
                        WowheadLink = reader.GetBoolean(6)
                    });
            }

            return achievements;
        }

        public IEnumerable<Achievement> GetWithCategory(Category category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, CA.Location, AGT.Name, A.FactionID, A.CovenantID, A.Points, A.Obtainable, A.WowheadLink
                                FROM
                                    Achievement A
                                    LEFT JOIN CategoryAchievement CA
                                        ON A.ID = CA.AchievementID
                                    LEFT JOIN Achievement_AGT AGT
                                        ON A.ID = AGT.ID
                                WHERE
                                    CA.CategoryID = @Category
                                ORDER BY
                                    CA.Location ASC;";
            cmd.Parameters.AddWithValue("@Category", category.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement(uiMapDM, eventDM)
                    {
                        ID = reader.GetInt32(0),
                        Location = reader.GetInt32(1),
                        Name = reader.IsDBNull(2) ? null : reader.GetString(2),
                        Faction = (Faction)reader.GetInt32(3),
                        Covenant = (Covenant)reader.GetInt32(4),
                        Points = reader.GetInt32(5),
                        Obtainable = reader.GetBoolean(6),
                        WowheadLink = reader.GetBoolean(7)
                    });

            return achievements;
        }

        public IEnumerable<Achievement> GetWithEvent(Event @event)
        {
            _ = @event ?? throw new ArgumentNullException(nameof(@event));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, CA.Location, AGT.Name, A.FactionID, A.CovenantID, A.Points, A.Obtainable, A.WowheadLink
                                FROM
                                    Achievement A
                                    LEFT JOIN CategoryAchievement CA
                                        ON A.ID = CA.AchievementID
                                    LEFT JOIN Achievement_AGT AGT
                                        ON A.ID = AGT.ID
                                WHERE
                                    CA.CategoryID = @Category
                                ORDER BY
                                    CA.Location ASC;";
            cmd.Parameters.AddWithValue("@Category", @event.ID);

            var achievements = new List<Achievement>();
            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    achievements.Add(new Achievement(uiMapDM, eventDM)
                    {
                        ID = reader.GetInt32(0),
                        Location = reader.GetInt32(1),
                        Name = reader.IsDBNull(2) ? null : reader.GetString(2),
                        Faction = (Faction)reader.GetInt32(3),
                        Covenant = (Covenant)reader.GetInt32(4),
                        Points = reader.GetInt32(5),
                        Obtainable = reader.GetBoolean(6),
                        WowheadLink = reader.GetBoolean(7)
                    });

            return achievements;
        }

        public void Add(int ID, int location, Faction faction, Covenant covenant, int points, bool obtainable, bool wowheadLink, Category category)
        {
            if (ID <= 0) throw new ArgumentOutOfRangeException(nameof(ID));
            if (location <= 0) throw new ArgumentOutOfRangeException(nameof(location));
            if (points < 0) throw new ArgumentOutOfRangeException(nameof(points));
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var sb = new StringBuilder();
            sb.AppendLine(@"INSERT OR IGNORE INTO Achievement (ID, FactionID, CovenantID, Points, Obtainable, WowheadLink)
                            VALUES (@ID, @FactionID, @CovenantID, @Points, @Obtainable, @HasWowheadLink);");
            sb.AppendLine(@"INSERT OR IGNORE INTO CategoryAchievement (Location, CategoryID, AchievementID)
                            VALUES (@Location, @CategoryID, @ID);");

            var cmd = connection.CreateCommand();
            cmd.CommandText = sb.ToString();
            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.Parameters.AddWithValue("@FactionID", (int)faction);
            cmd.Parameters.AddWithValue("@CovenantID", (int)covenant);
            cmd.Parameters.AddWithValue("@Points", points);
            cmd.Parameters.AddWithValue("@Obtainable", obtainable ? 1 : 0);
            cmd.Parameters.AddWithValue("@HasWowheadLink", wowheadLink ? 1 : 0);
            cmd.Parameters.AddWithValue("@Location", location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public Faction GetFaction(int achievementID)
        {
            if (achievementID <= 0) throw new ArgumentOutOfRangeException(nameof(achievementID));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT FactionID FROM Achievement_AGT WHERE ID = @ID;";
            cmd.Parameters.AddWithValue("@ID", achievementID);

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return (Faction)reader.GetInt32(0);

            return Faction.Unknown;
        }

        public Covenant GetCovenant(int achievementID)
        {
            if (achievementID <= 0) throw new ArgumentOutOfRangeException(nameof(achievementID));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT CovenantID FROM Achievement_AGT WHERE ID = @ID;";
            cmd.Parameters.AddWithValue("@ID", achievementID);

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return (Covenant)reader.GetInt32(0);

            return Covenant.Unknown;
        }

        public int GetPoints(int achievementID)
        {
            if (achievementID <= 0) throw new ArgumentOutOfRangeException(nameof(achievementID));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT Points FROM Achievement_AGT WHERE ID = @ID;";
            cmd.Parameters.AddWithValue("@ID", achievementID);

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return reader.GetInt32(0);

            return -1;
        }

        public void IncreaseLocations(Category category, IEnumerable<Achievement> achievements, int firstLocation)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = achievements ?? throw new ArgumentNullException(nameof(achievements));
            if (firstLocation <= 0) throw new ArgumentOutOfRangeException(nameof(firstLocation));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE CategoryAchievement SET Location = Location + 1 WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID";
            foreach (var achievement in achievements)
            {
                if (achievement.Location >= firstLocation)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@CategoryID", category.ID);
                    cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void DecreaseLocations(Category category, IEnumerable<Achievement> achievements, int firstLocation)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = achievements ?? throw new ArgumentNullException(nameof(achievements));
            if (firstLocation <= 0) throw new ArgumentOutOfRangeException(nameof(firstLocation));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE CategoryAchievement SET Location = Location - 1 WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID";
            foreach (var achievement in achievements)
            {
                if (achievement.Location >= firstLocation)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@CategoryID", category.ID);
                    cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void Swap(Category category, Achievement achievement1, Achievement achievement2)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = achievement1 ?? throw new ArgumentNullException(nameof(achievement1));
            _ = achievement2 ?? throw new ArgumentNullException(nameof(achievement2));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE CategoryAchievement SET Location = @Location1 WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID1;
                                UPDATE CategoryAchievement SET Location = @Location2 WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID2;";
            cmd.Parameters.AddWithValue("@Location1", achievement2.Location);
            cmd.Parameters.AddWithValue("@AchievementID1", achievement1.ID);
            cmd.Parameters.AddWithValue("@Location2", achievement1.Location);
            cmd.Parameters.AddWithValue("@AchievementID2", achievement2.ID);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            cmd.ExecuteNonQuery();
        }

        public void Update(Achievement achievement, int ID, Faction faction, Covenant covenant, int points, bool obtainable, bool wowheadLink)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            if (ID <= 0) throw new ArgumentOutOfRangeException(nameof(ID));
            if (points < 0) throw new ArgumentOutOfRangeException(nameof(points));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"UPDATE Achievement SET ID = @NewID, FactionID = @FactionID, CovenantID = @CovenantID, Points = @Points, Obtainable = @Obtainable, WowheadLink = @WowheadLink
                                WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@NewID", ID);
            cmd.Parameters.AddWithValue("@FactionID", (int)faction);
            cmd.Parameters.AddWithValue("@CovenantID", (int)covenant);
            cmd.Parameters.AddWithValue("@Points", points);
            cmd.Parameters.AddWithValue("@Obtainable", obtainable ? 1 : 0);
            cmd.Parameters.AddWithValue("@WowheadLink", wowheadLink ? 1 : 0);
            cmd.Parameters.AddWithValue("@ID", achievement.ID);

            cmd.ExecuteNonQuery();
        }

        public void Remove(Achievement achievement)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"DELETE FROM CategoryAchievement WHERE AchievementID = @ID";
            cmd.Parameters.AddWithValue("@ID", achievement.ID);

            cmd.ExecuteNonQuery();

            try // Lazy code, needs proper check later
            {
                cmd.CommandText = @"DELETE FROM Achievement WHERE ID = @ID";

                cmd.ExecuteNonQuery();
            }
            catch (Exception) { }
        }

        public void SetNewLocation(Category category, Achievement achievement, int location)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE CategoryAchievement SET Location = @Location WHERE CategoryID = @CategoryID AND AchievementID = @AchievementID";

            cmd.Parameters.AddWithValue("@Location", location);
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);

            cmd.ExecuteNonQuery();
        }

        public void SetNewParentAndLocation(Category oldParent, Achievement achievement, Category newParent, int location)
        {
            _ = oldParent ?? throw new ArgumentNullException(nameof(oldParent));
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            _ = newParent ?? throw new ArgumentNullException(nameof(newParent));

            var cmd = connection.CreateCommand();
            cmd.CommandText = "UPDATE CategoryAchievement SET Location = @Location, CategoryID = @NewCategoryID WHERE CategoryID = @OldCategoryID AND AchievementID = @AchievementID";

            cmd.Parameters.AddWithValue("@Location", location);
            cmd.Parameters.AddWithValue("@NewCategoryID", newParent.ID);
            cmd.Parameters.AddWithValue("@OldCategoryID", oldParent.ID);
            cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);

            cmd.ExecuteNonQuery();
        }

        public void UpdateAGT(Achievement achievement, string rewardText, int category_AGT_ID, int uiOrder, int iconFileID)
        {
            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT OR REPLACE INTO Achievement_AGT VALUES (@ID, @Name, @Description, @RewardText, @FactionID, @Category_AGT_ID, @Points, @Flags, @UIOrder, @IconFileID, @CovenantID, @HIDE_INCOMPLETE, @TRACKING_FLAG,
	                                CASE WHEN (SELECT COUNT(*) FROM Achievement_AGT WHERE ID = @ID) > 0 THEN
		                                (SELECT DateAdded FROM Achievement_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END,
	                                CASE WHEN ((SELECT Name FROM Achievement_AGT WHERE ID = @ID) = @Name)
		                                        AND ((SELECT Description FROM Achievement_AGT WHERE ID = @ID) = @Description)
		                                        AND ((SELECT RewardText FROM Achievement_AGT WHERE ID = @ID) = @RewardText)
		                                        AND ((SELECT FactionID FROM Achievement_AGT WHERE ID = @ID) = @FactionID)
		                                        AND ((SELECT Category_AGT_ID FROM Achievement_AGT WHERE ID = @ID) = @Category_AGT_ID)
		                                        AND ((SELECT Points FROM Achievement_AGT WHERE ID = @ID) = @Points)
		                                        AND ((SELECT Flags FROM Achievement_AGT WHERE ID = @ID) = @Flags)
		                                        AND ((SELECT UIOrder FROM Achievement_AGT WHERE ID = @ID) = @UIOrder)
		                                        AND ((SELECT IconFileID FROM Achievement_AGT WHERE ID = @ID) = @IconFileID)
		                                        AND ((SELECT CovenantID FROM Achievement_AGT WHERE ID = @ID) = @CovenantID)
		                                        AND ((SELECT HIDE_INCOMPLETE FROM Achievement_AGT WHERE ID = @ID) = @HIDE_INCOMPLETE)
		                                        AND ((SELECT TRACKING_FLAG FROM Achievement_AGT WHERE ID = @ID) = @TRACKING_FLAG) THEN
		                                (SELECT DateChanged FROM Achievement_AGT WHERE ID = @ID) ELSE DATETIME('now', 'localtime')
	                                END);";
            cmd.Parameters.AddWithValue("@ID", achievement.ID);
            cmd.Parameters.AddWithValue("@Name", achievement.Name);
            cmd.Parameters.AddWithValue("@Description", achievement.Description != null ? achievement.Description : DBNull.Value);
            cmd.Parameters.AddWithValue("@RewardText", string.IsNullOrEmpty(rewardText) ? DBNull.Value : rewardText);
            cmd.Parameters.AddWithValue("@FactionID", (int)achievement.Faction);
            cmd.Parameters.AddWithValue("@Category_AGT_ID", category_AGT_ID);
            cmd.Parameters.AddWithValue("@Points", achievement.Points);
            cmd.Parameters.AddWithValue("@Flags", (int)achievement.Flags);
            cmd.Parameters.AddWithValue("@UIOrder", uiOrder);
            cmd.Parameters.AddWithValue("@IconFileID", iconFileID);
            cmd.Parameters.AddWithValue("@CovenantID", (int)achievement.Covenant);
            cmd.Parameters.AddWithValue("@HIDE_INCOMPLETE", achievement.Flags.HasFlag(AchievementFlags.HIDE_INCOMPLETE) ? 1 : 0);
            cmd.Parameters.AddWithValue("@TRACKING_FLAG", achievement.Flags.HasFlag(AchievementFlags.TRACKING_FLAG) ? 1 : 0);

            cmd.ExecuteNonQuery();
        }

        public (int ID, string Name, int Points, string Description, int Flags, int IconFileID, string RewardText) GetWithAGTID(Achievement achievement)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    A.ID, A.Name, A.Points, A.Description, A.Flags, A.IconFileID, A.RewardText
                                FROM
                                    Achievement_AGT A
                                WHERE
                                    A.ID = @ID
                                LIMIT 1;";
            cmd.Parameters.AddWithValue("@ID", achievement.ID);

            using (var reader = cmd.ExecuteReader())
                while (reader.Read())
                    return (reader.GetInt32(0), reader.GetString(1), reader.GetInt32(2), reader.IsDBNull(3) ? "" : reader.GetString(3), reader.GetInt32(4), reader.GetInt32(5), reader.IsDBNull(6) ? "" : reader.GetString(6));

            return (-1, null, -1, null, -1, -1, null);
        }
    }
}