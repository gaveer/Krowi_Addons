using DbManagerWPF.Model;
using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DbManagerWPF.DataManager
{
    public class EventDM : DataManagerBase, IEventDM
    {
        private readonly IUIMapDM uiMapDM;
        private readonly List<Event> events = new();

        public EventDM(SqliteConnection connection, IUIMapDM uiMapDM) : base(connection)
        {
            this.uiMapDM = uiMapDM;
        }

        public IEnumerable<Event> GetAll(bool refresh = false)
        {
            if (!refresh)
                if (events.Any())
                    return events;

            var selectCmd = connection.CreateCommand();
            selectCmd.CommandText = @"  SELECT
                                            ID, Title, Icon, UIMapID, TotalDuration
                                        FROM
                                            Event";

            using (var reader = selectCmd.ExecuteReader())
            {
                events.Clear();
                while (reader.Read())
                    events.Add(new Event()
                    {
                        ID = reader.GetInt32(0),
                        Title = reader.GetString(1),
                        Icon = reader.GetString(2),
                        UIMap = reader.IsDBNull(3) ? null : uiMapDM.Get(reader.GetInt32(3)),
                        TotalDuration = reader.IsDBNull(4) ? 0 : reader.GetInt32(4)
                    });
            }

            return events;
        }

        public IEnumerable<Event> GetWithAchievement(Achievement achievement)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    E.ID, E.Title, E.Icon
                                FROM
                                    Event E
	                                LEFT JOIN AchievementEvent AE
		                                ON E.ID = AE.EventID
                                WHERE AE.AchievementID = @AchievementID";
            cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);

            using (var reader = cmd.ExecuteReader())
            {
                events.Clear();
                while (reader.Read())
                    events.Add(new Event()
                    {
                        ID = reader.GetInt32(0),
                        Title = reader.GetString(1),
                        Icon = reader.GetString(2)
                    });
            }

            return events;
        }

        public IEnumerable<Event> GetWithCategory(Category category)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"SELECT
                                    E.ID, E.Title, E.Icon
                                FROM
                                    Event E
	                                LEFT JOIN CategoryEvent CE
		                                ON E.ID = CE.EventID
                                WHERE CE.CategoryID = @CategoryID";
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);

            using (var reader = cmd.ExecuteReader())
            {
                events.Clear();
                while (reader.Read())
                    events.Add(new Event()
                    {
                        ID = reader.GetInt32(0),
                        Title = reader.GetString(1),
                        Icon = reader.GetString(2)
                    });
            }

            return events;
        }

        public void AddToCategory(Category category, Event @event)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = @event ?? throw new ArgumentNullException(nameof(@event));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT INTO CategoryEvent (CategoryID, EventID) VALUES (@CategoryID, @EventID)";
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@EventID", @event.ID);

            cmd.ExecuteNonQuery();
        }

        public void RemoveFromCategory(Category category, Event @event)
        {
            _ = category ?? throw new ArgumentNullException(nameof(category));
            _ = @event ?? throw new ArgumentNullException(nameof(@event));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"DELETE FROM CategoryEvent WHERE CategoryID = @CategoryID AND EventID = @EventID";
            cmd.Parameters.AddWithValue("@CategoryID", category.ID);
            cmd.Parameters.AddWithValue("@EventID", @event.ID);

            cmd.ExecuteNonQuery();
        }

        public void AddToAchievement(Achievement achievement, Event @event)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            _ = @event ?? throw new ArgumentNullException(nameof(@event));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"INSERT INTO AchievementEvent (AchievementID, EventID) VALUES (@AchievementID, @EventID)";
            cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);
            cmd.Parameters.AddWithValue("@EventID", @event.ID);

            cmd.ExecuteNonQuery();
        }

        public void RemoveFromAchievement(Achievement achievement, Event @event)
        {
            _ = achievement ?? throw new ArgumentNullException(nameof(achievement));
            _ = @event ?? throw new ArgumentNullException(nameof(@event));

            var cmd = connection.CreateCommand();
            cmd.CommandText = @"DELETE FROM AchievementEvent WHERE AchievementID = @AchievementID AND EventID = @EventID";
            cmd.Parameters.AddWithValue("@AchievementID", achievement.ID);
            cmd.Parameters.AddWithValue("@EventID", @event.ID);

            cmd.ExecuteNonQuery();
        }
    }
}