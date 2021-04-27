-- Readable querry
INSERT OR REPLACE INTO UIMap VALUES (${ID}, '${OriginalName}',
	CASE WHEN (SELECT COUNT(*) FROM UIMap WHERE ID = ${ID}) > 0 THEN
		(SELECT DateAdded FROM UIMap WHERE ID = ${ID}) ELSE DATETIME()
	END,
	CASE WHEN (SELECT OriginalName FROM UIMap WHERE ID = ${ID}) = '${OriginalName}' THEN
		(SELECT DateChanged FROM UIMap WHERE ID = ${ID}) ELSE DATETIME()
	END,
	(SELECT Name FROM UIMap WHERE ID = ${ID}), (SELECT Comment FROM UIMap WHERE ID = ${ID}));

-- Single line querry
INSERT OR REPLACE INTO UIMap VALUES (${ID}, '${OriginalName}', CASE WHEN (SELECT COUNT(*) FROM UIMap WHERE ID = ${ID}) > 0 THEN (SELECT DateAdded FROM UIMap WHERE ID = ${ID}) ELSE DATETIME() END, CASE WHEN (SELECT OriginalName FROM UIMap WHERE ID = ${ID}) = '${OriginalName}' THEN (SELECT DateChanged FROM UIMap WHERE ID = ${ID}) ELSE DATETIME() END, (SELECT Name FROM UIMap WHERE ID = ${ID}), (SELECT Comment FROM UIMap WHERE ID = ${ID}));

-- Regex
-- Make sure to first replace all ' with ''
(?:(?:"|)(?<OriginalName>.*?)(?:"|)),(?<ID>\d*),.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?,.*?\n
INSERT OR REPLACE INTO UIMap VALUES (${ID}, '${OriginalName}', CASE WHEN (SELECT COUNT(*) FROM UIMap WHERE ID = ${ID}) > 0 THEN (SELECT DateAdded FROM UIMap WHERE ID = ${ID}) ELSE DATETIME() END, CASE WHEN (SELECT OriginalName FROM UIMap WHERE ID = ${ID}) = '${OriginalName}' THEN (SELECT DateChanged FROM UIMap WHERE ID = ${ID}) ELSE DATETIME() END, (SELECT Name FROM UIMap WHERE ID = ${ID}), (SELECT Comment FROM UIMap WHERE ID = @ID));\n