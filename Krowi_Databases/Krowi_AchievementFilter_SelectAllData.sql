select AC.ID as ID,
	case when AC.FunctionValue IS NULL
		then F.Call
		else replace(F.Call, 'id', AC.FunctionValue)
	end as Function,
	P.ID as ParentID, AC.Name as Name, P.Name as Parent, A.ID as AchievementID,
	case when ANO.ID is not NULL
		then 'false'
	end as Obtainable,
	case when AHNWL.ID is not NULL
		then 'false'
	end as HasWowheadLink,
	case when AHIATL.ID is not NULL
		then 'true'
	end as HasIATLink
from AchievementCategory AC
	left join AchievementCategory P
	on AC.ParentID = P.ID
	left join Function F
	on AC.FunctionID = F.ID
	left join AchievementCategoryAchievement ACA
	on AC.ID = ACA.CategoryID
	left join Achievement A
	on ACA.AchievementID = A.ID
	left join AchievementNotObtainable as ANO
	on A.ID = ANO.ID
	left join AchievementHasNoWowheadLink as AHNWL
	on A.ID = AHNWL.ID
	left join AchievementHasIATLink as AHIATL
	on A.ID = AHIATL.ID
order by
	AC.ID ASC