-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.SideButton = {};
local sideButton = gui.SideButton;

local OnClick;

-- [[ Constructors ]] --
sideButton.__index = sideButton; -- Used to support OOP like code
function sideButton:New(event, otherButtons)
    diagnostics.Trace("achievementFrameTabButton:New");

	-- Create frame
    local frame = CreateFrame("Button", "AchievementFrameSideButton" .. event.ID, AchievementFrame, "KrowiAF_AlertFrameTemplate"); -- Blizzard naming
    frame:SetParent(AchievementFrame); -- Set parent to automatically hide when the AchievementFrame is hidden
    core.InjectMetatable(frame, sideButton);

    -- Properties
    frame.Name:SetText(event.EventDetails.title);

    frame.Unlocked:SetText(tostring(date(addon.Options.db.EventAlert.DateTimeFormat, event.EventDetails.startTime)) .. "\n" .. tostring(date(addon.Options.db.EventAlert.DateTimeFormat, event.EventDetails.endTime)));

	frame.Icon.Texture:SetTexture(event.Icon);

	frame.Event = event;

    -- Overwrite original alert frame properties
    frame:RegisterForClicks("LeftButtonUp");
    frame:SetScript("OnEnter", function(self)
        if self.shine then
            self.shine:Show();
            self.shine.animIn:Play();
        end
    end); -- Need to add new highlight fade in
    frame:SetScript("OnLeave", nil);

    -- Set OnClick
    frame:SetScript("OnClick", function(self)
        OnClick(self);
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
    end);

    -- SetPoints
    local relativeFrame = AchievementFrame;
    local relativePoint = "TOPRIGHT";
    if otherButtons[#otherButtons] ~= nil then
        relativeFrame = otherButtons[#otherButtons];
        relativePoint = "BOTTOMLEFT";
    end
    frame:ClearAllPoints();
    frame:SetPoint("TOPLEFT", relativeFrame, relativePoint, 0, 0);

    hooksecurefunc("AchievementFrame_SetTabs", function () -- Cheaty way to easily show the frame by hooking into the tabs
        frame:Show();
    end);

    return frame;
end

function OnClick(self)
    diagnostics.Trace("achFrameTabBtn:Base_OnClick");

    if AlertFrame_OnClick(self, button, down) then
		return; -- Handle right-click and close the alert
	end

    if not IsAddOnLoaded("Blizzard_AchievementUI") then
        LoadAddOn("Blizzard_AchievementUI");
    end

    addon.GUI.CategoriesFrame:SelectCategory(self.Event.Category);
end