-- [[ Namespaces ]] --
local _, addon = ...;
local options = addon.Options;

local function AddInfo(orderIndex, localizationName, getFunction)
    return {
        order = orderIndex, type = "toggle", width = "full", disabled = true,
        name = addon.L[localizationName],
        desc = addon.L[localizationName .. " Desc"],
        descStyle = "inline",
        get = getFunction
    };
end

options.OptionsTable.args["Style"] = {
    order = 4,
    name = addon.L["ElvUI Skins Status"],
    type = "group",
    args = {
        Description = {
            order = 1, type = "description", width = "full",
            name = addon.L["ElvUI Skins Status Desc"],
            fontSize = "medium"
        },
        SkinAchievement = AddInfo(2, "Skin Achievements", function() return SavedData.ElvUISkin.Achievements; end),
        SkinMiscFrames = AddInfo(3, "Skin Misc Frames", function() return SavedData.ElvUISkin.MiscFrames; end),
        SkinTooltip = AddInfo(4, "Skin Tooltip", function() return SavedData.ElvUISkin.Tooltip; end),
        SkinTutorials = AddInfo(5, "Skin Tutorials", function() return SavedData.ElvUISkin.Tutorials; end),
        SkinAce3 = AddInfo(6, "Skin Ace3", function() return SavedData.ElvUISkin.Options; end)
    }
};