local _, addon = ...; -- Global addon namespace
addon.Options = {}; -- Global options namespace
local options = addon.Options; -- Local options namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

-- Default options from SavedVariables in case there are none yet
Krowi_AchievementFilterOptions = {
    ShowMinimapIcon = true,
    EnableDebugInfo = false,
    EnableTraceInfo = false,
};

local panel = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer);
panel.name = AF_NAME;

local titlebar = CreateFrame("Frame", nil, panel);
titlebar:SetPoint("TOPLEFT", panel, "TOPLEFT");
titlebar:SetPoint("TOPRIGHT", panel, "TOPRIGHT");
titlebar:SetHeight(75);
titlebar.title = titlebar:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
titlebar.title:SetPoint("TOP", titlebar, "TOP", 0, -25);
titlebar.title:SetText(AF_NAME);
titlebar.version = titlebar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
titlebar.version:SetPoint("TOP", titlebar, "TOP", 0, -50);
titlebar.version:SetText(AF_VERSION_BUILD);

local headerGeneral = CreateFrame("Frame", nil, titlebar);
headerGeneral:SetHeight(18);
headerGeneral:SetPoint("TOPLEFT", titlebar, "BOTTOMLEFT");
headerGeneral:SetPoint("TOPRIGHT", titlebar, "BOTTOMRIGHT");
headerGeneral.label = headerGeneral:CreateFontString(nil, "BACKGROUND", "GameFontNormal");
headerGeneral.label:SetPoint("TOP");
headerGeneral.label:SetPoint("BOTTOM");
headerGeneral.label:SetText(AF_OPTIONS_GENERAL);
headerGeneral.left = headerGeneral:CreateTexture(nil, "BACKGROUND");
headerGeneral.left:SetHeight(8);
headerGeneral.left:SetPoint("LEFT", 10, 0);
headerGeneral.left:SetPoint("RIGHT", headerGeneral.label, "LEFT", -5, 0);
headerGeneral.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
headerGeneral.left:SetTexCoord(0.81, 0.94, 0.5, 1);
headerGeneral.right = headerGeneral:CreateTexture(nil, "BACKGROUND");
headerGeneral.right:SetHeight(8);
headerGeneral.right:SetPoint("RIGHT", -10, 0);
headerGeneral.right:SetPoint("LEFT", headerGeneral.label, "RIGHT", 5, 0);
headerGeneral.right:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
headerGeneral.right:SetTexCoord(0.81, 0.94, 0.5, 1);
headerGeneral.left:SetPoint("RIGHT", headerGeneral.label, "LEFT", -5, 0);

local showMinimapIconToggle = CreateFrame("CheckButton", "afMinimapIconToggle", headerGeneral, "InterfaceOptionsCheckButtonTemplate");
_G[showMinimapIconToggle:GetName().."Text"]:SetText(AF_OPTIONS_MINIMAP_ICON_TOGGLE);
showMinimapIconToggle.tooltipText = AF_OPTIONS_MINIMAP_ICON_TOGGLE_TOOLTIP;
showMinimapIconToggle:SetPoint("TOPLEFT", headerGeneral, "BOTTOMLEFT", 10, -10);
showMinimapIconToggle:SetScript("OnClick", function(self, button, down) 
    Krowi_AchievementFilterOptions.ShowMinimapIcon = showMinimapIconToggle:GetChecked();
    if Krowi_AchievementFilterOptions.ShowMinimapIcon then
        addon.Icon:Show("Krowi_AchievementFilterLDB");
    else
        addon.Icon:Hide("Krowi_AchievementFilterLDB");
    end
    addon.Diagnostics.Debug(AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.ShowMinimapIcon));
end);

local headerDebug = CreateFrame("Frame", nil, headerGeneral);
headerDebug:SetHeight(18);
headerDebug:SetPoint("TOPLEFT", titlebar, "BOTTOMLEFT", 0, -75);
headerDebug:SetPoint("TOPRIGHT", titlebar, "BOTTOMRIGHT");
headerDebug.label = headerDebug:CreateFontString(nil, "BACKGROUND", "GameFontNormal");
headerDebug.label:SetPoint("TOP");
headerDebug.label:SetPoint("BOTTOM");
headerDebug.label:SetText(AF_OPTIONS_DEBUG);
headerDebug.left = headerDebug:CreateTexture(nil, "BACKGROUND");
headerDebug.left:SetHeight(8);
headerDebug.left:SetPoint("LEFT", 10, 0);
headerDebug.left:SetPoint("RIGHT", headerDebug.label, "LEFT", -5, 0);
headerDebug.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
headerDebug.left:SetTexCoord(0.81, 0.94, 0.5, 1);
headerDebug.right = headerDebug:CreateTexture(nil, "BACKGROUND");
headerDebug.right:SetHeight(8);
headerDebug.right:SetPoint("RIGHT", -10, 0);
headerDebug.right:SetPoint("LEFT", headerDebug.label, "RIGHT", 5, 0);
headerDebug.right:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
headerDebug.right:SetTexCoord(0.81, 0.94, 0.5, 1);
headerDebug.left:SetPoint("RIGHT", headerDebug.label, "LEFT", -5, 0);

local enableDebugInfoToggle = CreateFrame("CheckButton", "afDebugInfoToggle", headerDebug, "InterfaceOptionsCheckButtonTemplate");
_G[enableDebugInfoToggle:GetName().."Text"]:SetText(AF_OPTIONS_DEBUG_INFO_TOGGLE);
enableDebugInfoToggle.tooltipText = AF_OPTIONS_DEBUG_INFO_TOGGLE_TOOLTIP;
enableDebugInfoToggle:SetPoint("TOPLEFT", headerDebug, "BOTTOMLEFT", 10, -10);
enableDebugInfoToggle:SetScript("OnClick", function(self, button, down)
    Krowi_AchievementFilterOptions.EnableDebugInfo = enableDebugInfoToggle:GetChecked();
    print(AF_OPTIONS_DEBUG_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableDebugInfo));
end);

local enableTraceInfoToggle = CreateFrame("CheckButton", "afDebugInfoTraceToggle", headerDebug, "InterfaceOptionsCheckButtonTemplate");
_G[enableTraceInfoToggle:GetName().."Text"]:SetText(AF_OPTIONS_TRACE_INFO_TOGGLE);
enableTraceInfoToggle.tooltipText = AF_OPTIONS_TRACE_INFO_TOGGLE_TOOLTIP;
enableTraceInfoToggle:SetPoint("TOPLEFT", enableDebugInfoToggle, "BOTTOMLEFT", 0, -10);
enableTraceInfoToggle:SetScript("OnClick", function(self, button, down)
    Krowi_AchievementFilterOptions.EnableTraceInfo = enableTraceInfoToggle:GetChecked();
    print(AF_OPTIONS_TRACE_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableTraceInfo));
end);

InterfaceOptions_AddCategory(panel);

-- Load the options
function options.Load()
    showMinimapIconToggle:SetChecked(Krowi_AchievementFilterOptions.ShowMinimapIcon);
    enableDebugInfoToggle:SetChecked(Krowi_AchievementFilterOptions.EnableDebugInfo);
    enableTraceInfoToggle:SetChecked(Krowi_AchievementFilterOptions.EnableTraceInfo);
    diagnostics.Debug("- Options loaded");
    diagnostics.Debug("     - " .. AF_OPTIONS_MINIMAP_ICON_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.ShowMinimapIcon) .. " - " .. tostring(showMinimapIconToggle:GetChecked()));
    diagnostics.Debug("     - " .. AF_OPTIONS_DEBUG_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableDebugInfo) .. " - " .. tostring(enableDebugInfoToggle:GetChecked()));
    diagnostics.Debug("     - " .. AF_OPTIONS_TRACE_INFO_TOGGLE .. ": " .. tostring(Krowi_AchievementFilterOptions.EnableTraceInfo) .. " - " .. tostring(enableTraceInfoToggle:GetChecked()));
end