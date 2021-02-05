select AC.ID, AC.Name, P.Name, AC.Location, replace(F.Call, 'id', AC.Value)
from AchievementCategory AC
	left join AchievementCategory P
	on AC.ParentID = P.ID
	left join Function F
	on AC.FunctionID = F.ID