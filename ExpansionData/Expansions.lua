IsAlliance = UnitFactionGroup("player") == "Alliance";
IsHorde = UnitFactionGroup("player") == "Horde";
IsNeutral = UnitFactionGroup("player") == "Neutral";

-- Root
Root = TreeObject:New("Root");

-- Expansions
Xpack_Classic = Root:AddChild(TreeObject:New("Classic"));
Xpack_TBC = Root:AddChild(TreeObject:New("The Burning Crusade"));
Xpack_WotLK = Root:AddChild(TreeObject:New("Wrath of the Lich King"));
Xpack_Legion = Root:AddChild(TreeObject:New("Legion"));
Xpack_BfA = Root:AddChild(TreeObject:New("Battle for Azeroth"));
Xpack_SL = Root:AddChild(TreeObject:New("Shadowlands"));