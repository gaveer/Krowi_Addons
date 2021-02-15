WITH CTE_AchievementCategory(ID, ParentID, Location, LocationPath) AS (
  SELECT ID, ParentID, Location, substr('0' || Location, -2, 2)
  FROM AchievementCategory AC
  WHERE ParentID IS NULL
  UNION ALL
  SELECT AC.ID, AC.ParentID, AC.Location, CTEAC.LocationPath || '.' || substr('0' || AC.Location, -2, 2)
  FROM AchievementCategory AC INNER JOIN CTE_AchievementCategory CTEAC
  ON CTEAC.ID = AC.ParentID
)
SELECT
	CTEAC.LocationPath as CLocation,
	substr('0' || ACA.Location, -2, 2) as ALocation,
	AC.ID as ID,
	case when AC.FunctionValue IS NULL
		then F.Call
		else replace(F.Call, 'id', AC.FunctionValue)
	end as NameFunction,
	case when ACIL.ID IS NOT NULL
		then ' .. " " .. ' || (select Call
			from Function
			where ID = 5)
	end as Legacy,
	P.ID as ParentID,
	AC.Name as Name,
	P.Name as Parent,
	A.ID as AchievementID,
	case when ANO.ID is not NULL
		then 'false'
		else 'nil'
	end as Obtainable,
	case when AHNWL.ID is not NULL
		then 'false'
		else 'nil'
	end as HasWowheadLink,
	case when AHIATL.ID is not NULL
		then 'true'
		else 'nil'
	end as HasIATLink
FROM
	CTE_AchievementCategory CTEAC
	left join AchievementCategory AC
	on CTEAC.ID = AC.ID
	left join AchievementCategoryIsLegacy ACIL
	on CTEAC.ID = ACIL.ID
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
ORDER BY
	CLocation ASC,
	ALocation ASC