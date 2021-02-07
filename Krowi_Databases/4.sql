select AC.ID, AC.Name, AC.ParentID, AC.Location, P.Location || AC.Location
		from AchievementCategory AC
		left join AchievementCategory P on P.ID = AC.ParentID