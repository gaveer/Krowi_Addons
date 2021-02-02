-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.Filter = {};
local filter = gui.Filter;

function filter.Load()
    diagnostics.Debug("Load button");
    local button = CreateFrame("Button", "FilterButton", UIPanel);
    button:SetPoint("CENTER", UIPanel, "CENTER", 0, 0)
    button:SetWidth(200)
    button:SetHeight(50)
    
    button:SetText("My Test")
    button:SetNormalFontObject("GameFontNormalSmall")
    
    button:SetNormalTexture("Interface/Buttons/UI-Panel-Button-Up")
    button:SetHighlightTexture("Interface/Buttons/UI-Panel-Button-Highlight")
    button:SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")

    button:SetScript("OnClick", filter.Click);
end

local savedState = true;
local rightClickMenu = LibStub("KrowiMenu-1.0");
function filter.Click()
    print("Test");

    local achievement = addon.GetAchievement(1283);

    -- Reset menu
	rightClickMenu:Clear();

	-- Always add header
	local _, name = GetAchievementInfo(achievement.ID);
	rightClickMenu:AddFull(name, nil, true);

	-- Debug table
	if diagnostics.DebugEnabled() then
		rightClickMenu:AddFull("Debug Table", function() diagnostics.DebugTable(self); end);
	end

    local menu = rightClickMenu:GetMenu();
    tinsert(menu, {text = "test", notCheckable = false, func = TestFunc, checked = savedState})

	rightClickMenu:Open("cursor", 0, 0);
end

function TestFunc(tbl, smth, smth2, state)
    savedState = not state;
    -- print(...);
end