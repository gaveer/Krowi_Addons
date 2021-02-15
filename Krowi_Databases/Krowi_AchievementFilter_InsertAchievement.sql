INSERT INTO Achievement (ID)
VALUES
	(630);
INSERT INTO AchievementCategoryAchievement (CategoryID, AchievementID)
SELECT ID, 630
	FROM AchievementCategory
	WHERE FunctionValue = 240;