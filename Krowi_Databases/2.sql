with recursive
    child_record(ID, Name, ParentID, Location, NewLocation) as (
        select AC.ID, AC.Name, AC.ParentID, AC.Location, AC.Location
		from AchievementCategory AC
		
		UNION
		
		select AC.ID, AC.Name, AC.ParentID, AC.Location, c.Location || AC.Location
		from AchievementCategory AC, child_record c
		where c.ID = AC.ParentID
    )
select * from child_record