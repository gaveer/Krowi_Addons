-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FilterButton = {};
local filterButton = gui.FilterButton;

local numButtons = 0; -- Local ID for naming, starts at 0 and will increment if a new button is added

-- [[ Constructors ]] --
filterButton.__index = filterButton; -- Used to support OOP like code
function filterButton:New(achievementsFrame)
    diagnostics.Trace("filterButton:New");

	-- Increment ID
    numButtons = numButtons + 1;

    -- Create button
    local button = CreateFrame("DropDownToggleButton", "KrowiAF_FilterButton" .. numButtons, AchievementFrame, "KrowiAF_FilterButton_Template");
    addon.InjectMetatable(button, filterButton);
    button:SetScript("OnMouseDown", filterButton.OnMouseDown);
	button:SetFrameLevel(button:GetParent():GetFrameLevel() + 7);

	-- Set properties
	button.ID = numButtons;
	button.AchievementsFrame = achievementsFrame;

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, button:GetName());
    button:Hide();

    return button;
end

local rightClickMenu = LibStub("KrowiMenu-1.0");
function filterButton:OnMouseDown()
    diagnostics.Trace("filterButton:OnMouseDown");

    UIMenuButtonStretchMixin.OnMouseDown(self, button);
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);

    -- Reset menu
	rightClickMenu:Clear();

	-- Show/Hide completed achievements
    rightClickMenu:AddFull({    Text = addon.L["F_COMPLETED"],
                                Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                                    return addon.Options.db.Filters.Completion.Completed
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Completion.Completed = not addon.Options.db.Filters.Completion.Completed;
                                    self.AchievementsFrame:Update();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });

	-- Show/Hide not completed achievements
    rightClickMenu:AddFull({    Text = addon.L["F_NOT_COMPLETED"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Completion.NotCompleted
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Completion.NotCompleted = not addon.Options.db.Filters.Completion.NotCompleted;
                                    self.AchievementsFrame:Update();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });

    -- Sort By
    local sortBy = addon.Objects.MenuItem:New({Text = addon.L["F_SORT_BY"]});
    sortBy:AddChildFull({   Text = addon.L["F_DEFAULT"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.SortBy.Criteria == addon.L["F_DEFAULT"]
                            end,
                            Func = function()
                                addon.Options.db.Filters.SortBy.Criteria = addon.L["F_DEFAULT"];
                                rightClickMenu:SetSelectedName(addon.L["F_DEFAULT"]);
                                self.AchievementsFrame:Update();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddChildFull({   Text = addon.L["F_NAME"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.SortBy.Criteria == addon.L["F_NAME"]
                            end,
                            Func = function()
                                addon.Options.db.Filters.SortBy.Criteria = addon.L["F_NAME"];
                                rightClickMenu:SetSelectedName(addon.L["F_NAME"]);
                                self.AchievementsFrame:Update();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddChildFull({   Text = addon.L["F_REVERSE_SORT"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.SortBy.ReverseSort
                            end,
                            Func = function()
                                addon.Options.db.Filters.SortBy.ReverseSort = not addon.Options.db.Filters.SortBy.ReverseSort;
                                self.AchievementsFrame:Update();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true,
                            IgnoreAsMenuSelection = true
                    });
    rightClickMenu:Add(sortBy);

	rightClickMenu:Toggle(self, 96, 15);
end

-- hooksecurefunc("UIDropDownMenuDelegate_OnAttributeChanged",function()print("UIDropDownMenuDelegate_OnAttributeChanged")end);
-- hooksecurefunc("UIDropDownMenu_InitializeHelper",function()print("UIDropDownMenu_InitializeHelper")end);
-- hooksecurefunc("UIDropDownMenu_Initialize",function()print("UIDropDownMenu_Initialize")end);
-- hooksecurefunc("UIDropDownMenu_SetInitializeFunction",function()print("UIDropDownMenu_SetInitializeFunction")end);
-- hooksecurefunc("UIDropDownMenu_SetDisplayMode",function()print("UIDropDownMenu_SetDisplayMode")end);
-- hooksecurefunc("UIDropDownMenu_RefreshDropDownSize",function()print("UIDropDownMenu_RefreshDropDownSize")end);
-- -- hooksecurefunc("UIDropDownMenu_OnUpdate",function()print("UIDropDownMenu_OnUpdate")end);
-- hooksecurefunc("UIDropDownMenuButtonInvisibleButton_OnEnter",function()print("UIDropDownMenuButtonInvisibleButton_OnEnter")end);
-- hooksecurefunc("UIDropDownMenuButtonInvisibleButton_OnLeave",function()print("UIDropDownMenuButtonInvisibleButton_OnLeave")end);
-- hooksecurefunc("UIDropDownMenuButton_OnEnter",function()print("UIDropDownMenuButton_OnEnter")end);
-- hooksecurefunc("UIDropDownMenuButton_OnLeave",function()print("UIDropDownMenuButton_OnLeave")end);
-- hooksecurefunc("UIDropDownMenu_CreateInfo",function()print("UIDropDownMenu_CreateInfo")end);
-- hooksecurefunc("UIDropDownMenu_CreateFrames",function()print("UIDropDownMenu_CreateFrames")end);
-- hooksecurefunc("UIDropDownMenu_AddSeparator",function()print("UIDropDownMenu_AddSeparator")end);
-- hooksecurefunc("UIDropDownMenu_AddSpace",function()print("UIDropDownMenu_AddSpace")end);
-- hooksecurefunc("UIDropDownMenu_AddButton",function(info)
--     print("UIDropDownMenu_AddButton")
--     for k, v in next, info do
--         print(k .. ": " .. tostring(v));
--     end
    
--     if info.index then
--         local button = _G[_G["DropDownList"..2]:GetName().."Button"..info.index];
--         print("button")
--         print(tostring(button:GetText()))
--         print(tostring(button:GetID()))
--         print(tostring(button.value))
--     end

--     local frame = UIDROPDOWNMENU_OPEN_MENU;

--     if ( frame ) then
--         print("frame")
-- 		print(UIDropDownMenu_GetSelectedName(frame))
-- 		print(UIDropDownMenu_GetSelectedID(frame))
-- 		print(UIDropDownMenu_GetSelectedValue(frame))
-- 	end
-- end);
-- -- hooksecurefunc("UIDropDownMenu_CheckAddCustomFrame",function()print("UIDropDownMenu_CheckAddCustomFrame")end);
-- hooksecurefunc("UIDropDownMenu_RegisterCustomFrame",function()print("UIDropDownMenu_RegisterCustomFrame")end);
-- hooksecurefunc("UIDropDownMenu_GetMaxButtonWidth",function()print("UIDropDownMenu_GetMaxButtonWidth")end);
-- -- hooksecurefunc("UIDropDownMenu_GetButtonWidth",function()print("UIDropDownMenu_GetButtonWidth")end);
-- hooksecurefunc("UIDropDownMenu_Refresh",function()print("UIDropDownMenu_Refresh")end);
-- hooksecurefunc("UIDropDownMenu_RefreshAll",function()print("UIDropDownMenu_RefreshAll")end);
-- hooksecurefunc("UIDropDownMenu_SetIconImage",function()print("UIDropDownMenu_SetIconImage")end);
-- hooksecurefunc("UIDropDownMenu_SetSelectedName",function()print("UIDropDownMenu_SetSelectedName")end);
-- hooksecurefunc("UIDropDownMenu_SetSelectedValue",function()print("UIDropDownMenu_SetSelectedValue")end);
-- hooksecurefunc("UIDropDownMenu_SetSelectedID",function()print("UIDropDownMenu_SetSelectedID")end);
-- -- hooksecurefunc("UIDropDownMenu_GetSelectedName",function(frame)
-- --     print("UIDropDownMenu_GetSelectedName - " .. tostring(frame.selectedName))
-- -- end);
-- -- hooksecurefunc("UIDropDownMenu_GetSelectedID",function(frame)
-- --     if ( frame.selectedID ) then
-- --         print("UIDropDownMenu_GetSelectedID - " .. tostring(frame.selectedID))
-- -- 	else
-- -- 		-- If no explicit selectedID then try to send the id of a selected value or name
-- -- 		local listFrame = _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL];
-- -- 		for i=1, listFrame.numButtons do
-- -- 			local button = _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i];
-- -- 			-- See if checked or not
-- -- 			if ( UIDropDownMenu_GetSelectedName(frame) ) then
-- -- 				if ( button:GetText() == UIDropDownMenu_GetSelectedName(frame) ) then
-- --                     print("UIDropDownMenu_GetSelectedID nested - " .. tostring(i))
-- -- 				end
-- -- 			elseif ( UIDropDownMenu_GetSelectedValue(frame) ) then
-- -- 				if ( button.value == UIDropDownMenu_GetSelectedValue(frame) ) then
-- --                     print("UIDropDownMenu_GetSelectedID nested - " .. tostring(i))
-- -- 				end
-- -- 			end
-- -- 		end
-- -- 	end
-- -- end);
-- -- hooksecurefunc("UIDropDownMenu_GetSelectedValue",function(frame)
-- --     print("UIDropDownMenu_GetSelectedValue - " .. tostring(frame.selectedValue))
-- -- end);
-- hooksecurefunc("UIDropDownMenuButton_OnClick",function()print("UIDropDownMenuButton_OnClick")end);
-- hooksecurefunc("HideDropDownMenu",function()print("HideDropDownMenu")end);
-- hooksecurefunc("ToggleDropDownMenu",function()print("ToggleDropDownMenu")end);
-- hooksecurefunc("CloseDropDownMenus",function()print("CloseDropDownMenus")end);
-- hooksecurefunc("UIDropDownMenu_HandleGlobalMouseEvent",function()print("UIDropDownMenu_HandleGlobalMouseEvent")end);
-- hooksecurefunc("UIDropDownMenu_OnShow",function()print("UIDropDownMenu_OnShow")end);
-- hooksecurefunc("UIDropDownMenu_OnHide",function()print("UIDropDownMenu_OnHide")end);
-- hooksecurefunc("UIDropDownMenu_SetWidth",function()print("UIDropDownMenu_SetWidth")end);
-- hooksecurefunc("UIDropDownMenu_SetButtonWidth",function()print("UIDropDownMenu_SetButtonWidth")end);
-- hooksecurefunc("UIDropDownMenu_SetText",function()print("UIDropDownMenu_SetText")end);
-- hooksecurefunc("UIDropDownMenu_GetText",function()print("UIDropDownMenu_GetText")end);
-- hooksecurefunc("UIDropDownMenu_ClearAll",function()print("UIDropDownMenu_ClearAll")end);
-- hooksecurefunc("UIDropDownMenu_JustifyText",function()print("UIDropDownMenu_JustifyText")end);
-- hooksecurefunc("UIDropDownMenu_SetAnchor",function()print("UIDropDownMenu_SetAnchor")end);
-- hooksecurefunc("UIDropDownMenu_GetCurrentDropDown",function()print("UIDropDownMenu_GetCurrentDropDown")end);
-- hooksecurefunc("UIDropDownMenuButton_GetChecked",function()print("UIDropDownMenuButton_GetChecked")end);
-- hooksecurefunc("UIDropDownMenuButton_GetName",function()print("UIDropDownMenuButton_GetName")end);
-- hooksecurefunc("UIDropDownMenuButton_OpenColorPicker",function()print("UIDropDownMenuButton_OpenColorPicker")end);
-- hooksecurefunc("UIDropDownMenu_DisableButton",function()print("UIDropDownMenu_DisableButton")end);
-- hooksecurefunc("UIDropDownMenu_EnableButton",function()print("UIDropDownMenu_EnableButton")end);
-- hooksecurefunc("UIDropDownMenu_SetButtonText",function()print("UIDropDownMenu_SetButtonText")end);
-- hooksecurefunc("UIDropDownMenu_SetButtonNotClickable",function()print("UIDropDownMenu_SetButtonNotClickable")end);
-- hooksecurefunc("UIDropDownMenu_SetButtonClickable",function()print("UIDropDownMenu_SetButtonClickable")end);
-- hooksecurefunc("UIDropDownMenu_DisableDropDown",function()print("UIDropDownMenu_DisableDropDown")end);
-- hooksecurefunc("UIDropDownMenu_EnableDropDown",function()print("UIDropDownMenu_EnableDropDown")end);
-- hooksecurefunc("UIDropDownMenu_IsEnabled",function()print("UIDropDownMenu_IsEnabled")end);
-- hooksecurefunc("UIDropDownMenu_GetValue",function()print("UIDropDownMenu_GetValue")end);
-- hooksecurefunc("OpenColorPicker",function()print("OpenColorPicker")end);
-- hooksecurefunc("ColorPicker_GetPreviousValues",function()print("ColorPicker_GetPreviousValues")end);
