SELECT AGT.*
FROM Achievement_AGT AGT
LEFT JOIN Achievement A ON AGT.ID = A.ID AND AGT.FactionID = A.FactionID
LEFT JOIN Achievement_AGT_Ignore AGTI ON AGT.ID = AGTI.ID
WHERE A.ID IS NULL AND AGTI.ID IS NULL AND AGT.Name NOT LIKE '%Realm First%' AND AGT.TRACKING_FLAG = 0

AND AGT.Category_AGT_ID != 21 AND AGT.Category_AGT_ID != 122 AND AGT.Category_AGT_ID != 128 AND AGT.Category_AGT_ID != 130 -- Ignore Statistics
AND AGT.Category_AGT_ID != 131 AND AGT.Category_AGT_ID != 132 AND AGT.Category_AGT_ID != 133 AND AGT.Category_AGT_ID != 134 -- Ignore Statistics
AND AGT.Category_AGT_ID != 135 AND AGT.Category_AGT_ID != 136 AND AGT.Category_AGT_ID != 137 AND AGT.Category_AGT_ID != 140 -- Ignore Statistics
AND AGT.Category_AGT_ID != 145 AND AGT.Category_AGT_ID != 152 AND AGT.Category_AGT_ID != 153 AND AGT.Category_AGT_ID != 154 -- Ignore Statistics
AND AGT.Category_AGT_ID != 173 AND AGT.Category_AGT_ID != 178 AND AGT.Category_AGT_ID != 14807 AND AGT.Category_AGT_ID != 14821 -- Ignore Statistics
AND AGT.Category_AGT_ID != 14822 AND AGT.Category_AGT_ID != 14823 AND AGT.Category_AGT_ID != 15096 AND AGT.Category_AGT_ID != 15164 -- Ignore Statistics
AND AGT.Category_AGT_ID != 15176 AND AGT.Category_AGT_ID != 15219 AND AGT.Category_AGT_ID != 15227 AND AGT.Category_AGT_ID != 15233 -- Ignore Statistics
AND AGT.Category_AGT_ID != 15264 AND AGT.Category_AGT_ID != 15409  AND AGT.Category_AGT_ID != 15430 -- Ignore Statistics

AND AGT.Category_AGT_ID != 15076 AND AGT.Category_AGT_ID != 15077 AND AGT.Category_AGT_ID != 15078 AND AGT.Category_AGT_ID != 15079 -- Ignore Guild
AND AGT.Category_AGT_ID != 15080 AND AGT.Category_AGT_ID != 15082 AND AGT.Category_AGT_ID != 15083 AND AGT.Category_AGT_ID != 15084 -- Ignore Guild
AND AGT.Category_AGT_ID != 15085 AND AGT.Category_AGT_ID != 15086 AND AGT.Category_AGT_ID != 15087 AND AGT.Category_AGT_ID != 15088 -- Ignore Guild
AND AGT.Category_AGT_ID != 15089 AND AGT.Category_AGT_ID != 15090 AND AGT.Category_AGT_ID != 15091 AND AGT.Category_AGT_ID != 15093 -- Ignore Guild
AND AGT.Category_AGT_ID != 15153 AND AGT.Category_AGT_ID != 15154 AND AGT.Category_AGT_ID != 15243 AND AGT.Category_AGT_ID != 15244 -- Ignore Guild
AND AGT.Category_AGT_ID != 15262 AND AGT.Category_AGT_ID != 15263 AND AGT.Category_AGT_ID != 15299 AND AGT.Category_AGT_ID != 15300 -- Ignore Guild
AND AGT.Category_AGT_ID != 15429 AND AGT.Category_AGT_ID != 15442 -- Ignore Guild

AND AGT.Category_AGT_ID != 155 AND AGT.Category_AGT_ID != 156 AND AGT.Category_AGT_ID != 158 AND AGT.Category_AGT_ID != 159 -- Ignore World Events for now
AND AGT.Category_AGT_ID != 160 AND AGT.Category_AGT_ID != 161 AND AGT.Category_AGT_ID != 162 AND AGT.Category_AGT_ID != 163 -- Ignore World Events for now
AND AGT.Category_AGT_ID != 187 AND AGT.Category_AGT_ID != 14981 AND AGT.Category_AGT_ID != 15101 -- Ignore World Events for now

AND AGT.Category_AGT_ID != 169 AND AGT.Category_AGT_ID != 170 AND AGT.Category_AGT_ID != 171 AND AGT.Category_AGT_ID != 172 -- Ignore Professions for now
AND AGT.Category_AGT_ID != 15071 -- Ignore Professions for now

AND AGT.Category_AGT_ID != 165 -- Ignore Arena for now
AND AGT.Category_AGT_ID != 14801 AND AGT.Category_AGT_ID != 14802 AND AGT.Category_AGT_ID != 14803 AND AGT.Category_AGT_ID != 14804 -- Ignore Battlegrounds for now
AND AGT.Category_AGT_ID != 14901 AND AGT.Category_AGT_ID != 15003 AND AGT.Category_AGT_ID != 15073 AND AGT.Category_AGT_ID != 15074 -- Ignore Battlegrounds for now
AND AGT.Category_AGT_ID != 15092 AND AGT.Category_AGT_ID != 15162 AND AGT.Category_AGT_ID != 15163 AND AGT.Category_AGT_ID != 15218 -- Ignore Battlegrounds for now
AND AGT.Category_AGT_ID != 15292 AND AGT.Category_AGT_ID != 15414 -- Ignore Battlegrounds for now
AND AGT.Category_AGT_ID != 15270 -- Ignore FoS PvP for now

AND AGT.Category_AGT_ID != 15268 -- Ignore FoS Promotions for now

AND AGT.Category_AGT_ID != 15280 AND AGT.Category_AGT_ID != 15446 -- Ignore Other for now

-- AND AGT.Category_AGT_ID = 15282
-- AND AGT.Name LIKE '%Season 2%'
-- AND AGT.Category_AGT_ID > 14938
AND AGT.ID > 14938

ORDER BY AGT.Category_AGT_ID, AGT.UIOrder;