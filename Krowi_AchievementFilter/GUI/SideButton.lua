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
	frame.Event = event;

    frame.Name:SetText(event.EventDetails.title);

    frame:UpdateRuntime();

	frame.Icon.Texture:SetTexture(event.Icon);

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

    frame:SetScript("OnShow", function(self)
        self:UpdateRuntime();
        if self.Event.EventDetails.endTime - time() < 0 then -- Event finished so remove button and reorder rest
            for i = 1, #otherButtons, 1 do
                if otherButtons[i].Event.ID == self.Event.ID then -- Found this button
                    if i == 1 and i + 1 <= #otherButtons then -- Button is the 1st and there are more
                        otherButtons[i + 1]:ClearAllPoints();
                        otherButtons[i + 1]:SetPoint("TOPLEFT", AchievementFrame, "TOPRIGHT", 0, 0); -- Make the 2nd button anchor like the 1st one
                    elseif i < #otherButtons then -- Button is somewhere in the middle
                        otherButtons[i + 1]:ClearAllPoints();
                        otherButtons[i + 1]:SetPoint("TOPLEFT", otherButtons[i - 1], "BOTTOMLEFT", 0, 0); -- Make the 2nd button anchor like the 1st one
                    -- else -- Button is the last, nothing to move
                    end
                end
            end
        end
    end);

    frame.TimeSinceLastUpdate = 0;
    frame:SetScript("OnUpdate", function(self, elapsed)
        self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed;

        if self.TimeSinceLastUpdate > 1 then
            self:UpdateRuntime();
            self.TimeSinceLastUpdate = 0;
        end
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

function sideButton:UpdateRuntime()
    gui.UpdateEventRuntime(self);
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