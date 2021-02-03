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
                                Checked = addon.Options.db.Filters.Completion.Completed,
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
                                Checked = addon.Options.db.Filters.Completion.NotCompleted,
                                Func = function()
                                    addon.Options.db.Filters.Completion.NotCompleted = not addon.Options.db.Filters.Completion.NotCompleted;
                                    self.AchievementsFrame:Update();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });

    -- Sort By header
    local sortBy = addon.Objects.MenuItem:New({Text = addon.L["F_SORT_BY"]});
    sortBy:AddChildFull({   Text = addon.L["F_DEFAULT"],
                            Checked = addon.Options.db.Filters.SortBy == addon.L["F_DEFAULT"],
                            Func = function()
                                addon.Options.db.Filters.SortBy = addon.L["F_DEFAULT"];
                                -- self.AchievementsFrame:Update();

                                diagnostics.Debug(addon.L["F_SORT_BY"] .. ": " .. tostring(addon.Options.db.Filters.SortBy));
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true,
                            KeepSelected = true,
                            UpdateOthers = true
                        });
    sortBy:AddChildFull({   Text = addon.L["F_NAME"],
                            Checked = addon.Options.db.Filters.SortBy == addon.L["F_NAME"],
                            Func = function()
                                addon.Options.db.Filters.SortBy = addon.L["F_NAME"];
                                -- self.AchievementsFrame:Update();

                                diagnostics.Debug(addon.L["F_SORT_BY"] .. ": " .. tostring(addon.Options.db.Filters.SortBy));
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true,
                            KeepSelected = true,
                            UpdateOthers = true
                        });
    rightClickMenu:Add(sortBy);

	rightClickMenu:Toggle(self, 96, 15);
end