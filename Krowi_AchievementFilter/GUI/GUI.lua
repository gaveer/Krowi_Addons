-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.GUI = {};
local gui = addon.GUI;

local defaultAchievementFrameWidth;
function gui.SetAchievementFrameWidth(offset)
    diagnostics.Trace("gui.SetAchievementFrameWidth");

    if not defaultAchievementFrameWidth then
        defaultAchievementFrameWidth = AchievementFrame:GetWidth();
    end
    AchievementFrame:SetWidth(defaultAchievementFrameWidth + offset);
end

function gui.ResetAchievementFrameWidth()
    diagnostics.Trace("gui.ResetAchievementFrameWidth");

    if defaultAchievementFrameWidth then
        AchievementFrame:SetWidth(defaultAchievementFrameWidth);
    end
end

local defaultAchievementFrameHeight;
local defaultAchievementFrameMetalBorderHeight;
function gui.SetAchievementFrameHeight(offset)
    diagnostics.Trace("gui.SetAchievementFrameHeight");

    if not defaultAchievementFrameHeight then
        defaultAchievementFrameHeight = AchievementFrame:GetHeight();
        defaultAchievementFrameMetalBorderHeight = AchievementFrameMetalBorderLeft:GetHeight();
    end
    AchievementFrame:SetHeight(defaultAchievementFrameHeight + offset);
    AchievementFrameMetalBorderLeft:SetHeight(defaultAchievementFrameMetalBorderHeight + offset);
    AchievementFrameMetalBorderRight:SetHeight(defaultAchievementFrameMetalBorderHeight + offset);
end

function gui.ResetAchievementFrameHeight()
    diagnostics.Trace("gui.ResetAchievementFrameHeight");

    if defaultAchievementFrameHeight and defaultAchievementFrameMetalBorderHeight then
        AchievementFrame:SetHeight(defaultAchievementFrameHeight);
        AchievementFrameMetalBorderLeft:SetHeight(defaultAchievementFrameMetalBorderHeight);
        AchievementFrameMetalBorderRight:SetHeight(defaultAchievementFrameMetalBorderHeight);
    end
end

local function UpdateAchievementFrameWidth(message , offset)
    if addon.GUI.TabButton1 and addon.GUI.TabButton1.Selected then
        addon.GUI.AchievementsFrame:Hide();
        addon.GUI.CategoriesFrame:Hide();
        gui.SetAchievementFrameWidth(offset);
        addon.GUI.AchievementsFrame:Show();
        addon.GUI.CategoriesFrame:Show();
    end
end

local function UpdateAchievementFrameHeight(message, offset)
    if addon.GUI.TabButton1 and addon.GUI.TabButton1.Selected then
        addon.GUI.AchievementsFrame:Hide();
        addon.GUI.CategoriesFrame:Hide();
        gui.SetAchievementFrameHeight(offset);
        addon.GUI.AchievementsFrame:Show();
        addon.GUI.CategoriesFrame:Show();
    end
end

addon.Event:RegisterMessage("UpdateAchievementFrameWidth", UpdateAchievementFrameWidth);
addon.Event:RegisterMessage("UpdateAchievementFrameHeight", UpdateAchievementFrameHeight);