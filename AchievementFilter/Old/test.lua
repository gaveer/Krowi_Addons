print(IsAlliance)
print(IsHorde)

local debugEnabled = true;
function PrintDebug(value)
	if debugEnabled then
    print(value);
  end
end

local function LeftFrame_OnShow(self)
  AchievementFrameCategoriesContainer:Hide()
  AchievementFrameCategoriesContainerScrollBar:Hide()
  AchievementFrameFilterDropDown:Show()
  AchievementFrameHeaderLeftDDLInset:Show()
  --AchievementFrameHeaderRightDDLInset:Show()
end

local function LeftFrame_OnHide(self)
  AchievementFrameCategoriesContainer:Show()
  if (not AchievementFrameAchievements:IsShown()) then
    AchievementFrameFilterDropDown:Hide()
	AchievementFrameHeaderLeftDDLInset:Hide()
    --AchievementFrameHeaderRightDDLInset:Hide()
  end
  -- if (not Overachiever.NoAlterSetFilter) then
  --   AchievementFrame_SetFilter( FilterByTab[AchievementFrameAchievements] or ACHIEVEMENT_FILTER_ALL, true )
  -- end
end

do
  LeftFrame = CreateFrame("Frame", "AchievementFilter_LeftFrame", AchievementFrameCategories)
  LeftFrame:SetPoint("TOPLEFT", AchievementFrameCategories, "TOPLEFT", 9, -5)
  LeftFrame:SetPoint("TOPRIGHT", AchievementFrameCategories, "TOPRIGHT", -9, -5)
  LeftFrame:SetPoint("BOTTOM", AchievementFrameCategories, "BOTTOM", 0, 8)

  local label = LeftFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
  label:SetPoint("TOPLEFT", LeftFrame, "TOPLEFT", 1, -6)
  label:SetText("Achievement Filter")
  LeftFrame.label = label

  -- local HelpIcon = CreateFrame("Frame", nil, LeftFrame)
  -- HelpIcon:SetWidth(32); HelpIcon:SetHeight(32)
  -- HelpIcon:SetPoint("LEFT", label, "RIGHT", 4, 0)
  -- local tex = HelpIcon:CreateTexture(nil, "BACKGROUND")
  -- tex:SetTexture("Interface\\AddOns\\Overachiever_Tabs\\HelpIcon")
  -- tex:SetPoint("CENTER", HelpIcon, "CENTER", 0, 0)
  -- HelpIcon.tex = tex
  -- HelpIcon:EnableMouse(true)
  -- HelpIcon:SetScript("OnEnter", HelpIcon_OnEnter)
  -- HelpIcon:SetScript("OnLeave", HelpIcon_OnLeave)
  -- HelpIcon.tip = GetAddOnMetadata("Overachiever", "Title")..": %s"
  -- HelpIcon:SetScale(0.85)
  -- LeftFrame.helpIcon = HelpIcon

  LeftFrame:Hide()
  LeftFrame:SetScript("OnShow", LeftFrame_OnShow)
  LeftFrame:SetScript("OnHide", LeftFrame_OnHide)

  tinsert(ACHIEVEMENTFRAME_SUBFRAMES, "AchievementFilter_LeftFrame")

  LeftFrame:RegisterEvent("ADDON_LOADED")
  LeftFrame:SetScript("OnEvent", function(self, event, arg1)
    if (arg1 == "AchievementFilter") then
      self:UnregisterEvent("ADDON_LOADED")
      self:RegisterEvent("CRITERIA_UPDATE")
	  --self:RegisterEvent("ACHIEVEMENT_EARNED")
      self:SetScript("OnEvent", LeftFrame_OnEvent)
      varsLoaded = true

      Overachiever_Tabs_Settings = Overachiever_Tabs_Settings or {}
      local v = Overachiever_Tabs_Settings
      oldver = v.Version
      v.Version = GetAddOnMetadata("AchievementFilter", "Version")
      if (oldver == v.Version) then  oldver = false;  end

	  Overachiever_Tabs_CharVars = Overachiever_Tabs_CharVars or {}
	  local vc = Overachiever_Tabs_CharVars
	  vc.Version = v.Version

      v.AchFilters = v.AchFilters or {}
      local AchFilters = v.AchFilters
      if (AchFilters["AchievementFrameAchievements"]) then
        AchievementFrame_SetFilter(AchFilters["AchievementFrameAchievements"])
      end
      if (tabs) then
        local name
        for k,tab in ipairs(tabs) do
          name = tab.frame:GetName()
          if (AchFilters[name]) then  FilterByTab[tab.frame] = AchFilters[name];  end
          if (tab.loadFunc) then
            tab.loadFunc(v, oldver, vc)
            tab.loadFunc = nil
          end
        end
      end
    end
  end)
end

local TabOnClick
do
  local extendedClickedTab -- Default Blizzard_AchievementUI can only count to 3 tabs and loop back to 1, this variable will bypass this problem
  AchievementFrame_UpdateTabs = function(clickedTab) -- Overwrite AchievementFrame_UpdateTabs
    clickedTab = extendedClickedTab or clickedTab; -- Bypass tab cap
    AchievementFrame.searchResults:Hide();
    PanelTemplates_Tab_OnClick(_G["AchievementFrameTab"..clickedTab], AchievementFrame);
    local tab;
    PrintDebug("Found tabs:");
    for i = 1, 9 do -- Bypass tab cap (extended from 3 to 9 to be compatible with possible other addons)
      tab = _G["AchievementFrameTab"..i];
      if tab == nil then -- Break from the 1st tab that is nil
        break;
      end
      PrintDebug(tab:GetID() .. " - " .. tab:GetText());
      if i == clickedTab then
        tab.text:SetPoint("CENTER", 0, -5);
      else
        tab.text:SetPoint("CENTER", 0, -3);
      end
    end
  end

  function TabOnClick(self, button)
    PrintDebug("Selected tab: " .. self:GetID() .. " - " .. self:GetText());
    extendedClickedTab = self:GetID()
    AchievementFrameBaseTab_OnClick(1) -- Index was out of range if set to anything greater than 3, took 1 by default
    extendedClickedTab = nil -- Set to 0 to make sure the default tabs keep working
    PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);

    -- if (self.flash and UIFrameIsFading(self.flash)) then
    --   UIFrameFlashRemoveFrame(self.flash)
    --   self.flash:Hide()
    -- end

    -- tabselected = self.frame
    AchievementFrame_ShowSubFrame(self.frame, LeftFrame)
    LeftFrame.label:SetText(self:GetText())

	-- Working around a strange bug where the Help Icon -- or its texture (if not the frame itself) -- floats on its own.
	-- Problem seems to only happen when Make Draggable option is checked.
	--LeftFrame.helpIcon:ClearAllPoints()
	--LeftFrame.helpIcon:SetPoint("LEFT", LeftFrame.label, "RIGHT", 4, 0)
	-- LeftFrame.helpIcon.tex:ClearAllPoints()
	-- LeftFrame.helpIcon.tex:SetPoint("CENTER", LeftFrame.helpIcon, "CENTER", 0, 0)
	-- End workaround. Hopefully, whatever bug is causing this will be fixed and this workaround will be unnecessary soon.

    -- AchievementFrameWaterMark:SetTexture(self.watermark) -- Note: nil actually works here for watermark texture. No error; just no visible watermark!
    --PanelTemplates_Tab_OnClick(self, AchievementFrame)  -- Not needed here any more: AchievementFrame_UpdateTabs, called by AchievementFrameBaseTab_OnClick, will call it.
    --  updateAchievementsList(self.frame)
  end
end

function BuildNewTab(name, text, helptip, loadFunc, filter)
  local numtabs, tab = 0
  repeat
    numtabs = numtabs + 1
  until (not _G["AchievementFrameTab"..numtabs])
  tab = CreateFrame("Button", "AchievementFrameTab"..numtabs, AchievementFrame, "AchievementFrameTabButtonTemplate")
  tab:SetText(text)
  tab:SetPoint("LEFT", "AchievementFrameTab"..numtabs-1, "RIGHT", -5, 0)
  tab:SetID(numtabs)
  PanelTemplates_SetNumTabs(AchievementFrame, numtabs)
  tab:SetScript("OnClick", TabOnClick)

  -- Frame
  local frame = CreateFrame("Frame", name, AchievementFrame)
  frame:SetWidth(504); frame:SetHeight(440)
  frame:SetPoint("TOPLEFT", AchievementFrameAchievements, "TOPLEFT", 0, 0)
  frame:SetPoint("BOTTOM", AchievementFrameAchievements, "BOTTOM")
  -- Background
  local frameBG = frame:CreateTexture("$parentBackground", "BACKGROUND")
  frameBG:SetTexture("Interface\\AchievementFrame\\UI-Achievement-AchievementBackground")
  frameBG:SetPoint("TOPLEFT", frame, "TOPLEFT", 3, -3)
  frameBG:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -3, 3)
  frameBG:SetTexCoord(0, 1, 0, 0.5)
  local frameBGDarken = frame:CreateTexture(nil, "ARTWORK")
  frameBGDarken:SetAllPoints(frameBG)
  frameBGDarken:SetColorTexture(0, 0, 0, 0.75)
  -- Border
  local frameBorder = CreateFrame("Frame", nil, frame, "BackdropTemplate")
  frameBorder:SetAllPoints(frame)
  frameBorder:SetBackdrop( {
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 5, right = 5, top = 5, bottom = 5 }
  } )
  frameBorder:SetBackdropBorderColor(ACHIEVEMENTUI_GOLDBORDER_R, ACHIEVEMENTUI_GOLDBORDER_G, ACHIEVEMENTUI_GOLDBORDER_B, ACHIEVEMENTUI_GOLDBORDER_A)
  frameBorder:SetFrameLevel(frameBorder:GetFrameLevel()+1)
  -- -- Scroll bar
  -- local scrollframe = CreateFrame("ScrollFrame", "$parentContainer", frame, "HybridScrollFrameTemplate")
  -- scrollframe:SetWidth(504); scrollframe:SetHeight(440)
  -- scrollframe:SetPoint("TOPLEFT", frame, "TOPLEFT", 4, -3)
  -- scrollframe:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 5)
  -- local scrollbar = CreateFrame("Slider", "$parentScrollBar", scrollframe, "HybridScrollBarTemplate")
  -- scrollbar:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 1, -16)
  -- scrollbar:SetPoint("BOTTOMLEFT", scrollframe, "BOTTOMRIGHT", 1, 12)
  -- frame.scrollFrame = scrollframe
  -- frame.scrollbar = scrollbar

  -- scrollbar.Show =
  --   function (self)
  --     frame:SetWidth(504);
  --     for _, button in next, frame.buttons do
  --       button:SetWidth(496);
  --     end
  --     getmetatable(self).__index.Show(self);
  --   end

  -- scrollbar.Hide =
  --   function (self)
  --     frame:SetWidth(530);
  --     for _, button in next, frame.buttons do
  --       button:SetWidth(522);
  --     end
  --     getmetatable(self).__index.Hide(self);
  --   end

--   local frameWarning = CreateFrame("Frame", nil, frame)
--   frameWarning:SetPoint("BOTTOM", frame, "BOTTOM", 0, 3)
--   frameWarning:SetWidth(520)  -- 492  490
--   frameWarning:SetHeight(26)
--   frameWarning:SetFrameLevel(frameWarning:GetFrameLevel() + 2)
--   frameWarning.tex = frameWarning:CreateTexture("$parentBackground", "BACKGROUND")
--   frameWarning.tex:SetColorTexture(0.025, 0.025, 0.025, 0.75)
--   frameWarning.tex:SetAllPoints()
--   frameWarning:Hide()
--   frame.frameWarning = frameWarning

--   local filteredOutLabel = frameWarning:CreateFontString(nil, "HIGH", "GameFontGreen") --"GameFontNormal" "GameFontHighlight"
--   filteredOutLabel:SetPoint("CENTER", frameWarning, "CENTER", 0, 0)
--   filteredOutLabel:SetWidth(490)
--   --filteredOutLabel:Font:SetTextColor(r, g, b, a)
--   --filteredOutLabel:SetShadowColor(1, 0, 0, 1)
--   frameWarning.label = filteredOutLabel

--   local function scollbarValueChange(self, value, ...)
--     local vmin, vmax = self:GetMinMaxValues()
--     local prev = frameWarning.top
--     --local new = (value >= (vmax / 2))
--     local new = (value >= vmax - 20)
--     if (prev ~= new) then
--       frameWarning.top = new
--       frameWarning:ClearAllPoints()
--       if (new) then
--         frameWarning:SetPoint("TOP", frame, "TOP", 0, -3)
--       else
--         frameWarning:SetPoint("BOTTOM", frame, "BOTTOM", 0, 3)
--       end
--     end
--   end
--   scrollbar:HookScript("OnValueChanged", scollbarValueChange)

--   scrollbar:HookScript("OnShow", function(self)
--     frameWarning:SetWidth(492)
--     --scollbarValueChange(self, self:GetValue()) -- Might be needed to fix a bug where the warning message appears at the top of the window when it should be at the bottom. But, after running into the issue once, I couldn't reproduce the problem, so disabling for now since I can't test whether this helps or even hurts.
--   end)

--   scrollbar:HookScript("OnHide", function(self)
--     frameWarning:SetWidth(520)
--   end)


  tinsert(ACHIEVEMENTFRAME_SUBFRAMES, name)

--   tab.watermark, tab.loadFunc = watermark, loadFunc
  -- tab.frame = frame
  -- frame.tab = tab
--   frame.helptip = helptip

  -- if (not tabs) then
    -- tabs = {}
    -- hooksecurefunc("AchievementFrameBaseTab_OnClick", tabUnselect)
    -- hooksecurefunc("AchievementFrameComparisonTab_OnClick", tabUnselect)
    -- orig_compheader_OnShow = AchievementFrameComparisonHeader:GetScript("OnShow")
    -- AchievementFrameComparisonHeader:SetScript("OnShow", compheader_OnShow)
    -- hooksecurefunc("AchievementButton_OnLoad", post_AchievementButton_OnLoad)
    -- hooksecurefunc("AchievementFrameAchievements_ForceUpdate", forceUpdate_all)
  -- end
  -- tabs[#(tabs)+1] = tab
  -- frame.AchList = {}
  -- frame.ForceUpdate = forceUpdate

  -- scrollframe.update = function() updateAchievementsList(frame) end;  -- Needed in this fashion for HybridScrollFrame_SetOffset calls.
  -- _G[name.."ContainerScrollBarBG"]:Show()
  -- frame.buttons = {}
--   redir_btn_tinsert = frame.buttons
--   HybridScrollFrame_CreateButtons(scrollframe, "AchievementTemplate", 0, -2);
--   redir_btn_tinsert = nil
--   Overachiever.UI_HookAchButtons(frame.buttons, scrollbar)

  -- local panel = CreateFrame("Frame", nil, LeftFrame)
  -- panel:SetPoint("TOPLEFT", LeftFrame.label, "BOTTOMLEFT", 0, -6)
  -- panel:SetPoint("RIGHT", LeftFrame, "RIGHT")
  -- panel:SetPoint("BOTTOM", LeftFrame, "BOTTOM")
  -- panel:Hide()
  -- frame.panel = panel
  -- frame:Hide()
  -- frame:SetScript("OnShow", ListFrame_OnShow)
  -- frame:SetScript("OnHide", ListFrame_OnHide)

  -- FilterByTab[frame] = filter

--   if (varsLoaded and tab.loadFunc) then
--   local v = Overachiever_Tabs_Settings
--   local vc = Overachiever_Tabs_CharVars
--   local AchFilters = v.AchFilters
--   if (AchFilters[name]) then  FilterByTab[tab.frame] = AchFilters[name];  end
--   tab.loadFunc(v, oldver, vc)
--   tab.loadFunc = nil
--   end

--   function frame:GetAchList(unfiltered)
--     if (not unfiltered and FilteredList and FilteredList[self.AchList]) then
--     return FilteredList[self.AchList]
--   end
--   return self.AchList
-- end

return frame, panel
end

frame, panel = BuildNewTab("AchievementFilter_Frame", 'Achievement Filter', 'L.SEARCH_HELP', OnLoad)