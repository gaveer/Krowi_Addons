select AC.ID, AC.Name, P.ID, P.Name, A.*
from AchievementCategory AC
	left join AchievementCategory P
	on AC.ParentID = P.ID
	left join Function F
	on AC.FunctionID = F.ID
	left join AchievementCategoryAchievement ACA
	on AC.ID = ACA.CategoryID
	left join Achievement A
	on ACA.AchievementID = A.ID
order by
	AC.ID ASC