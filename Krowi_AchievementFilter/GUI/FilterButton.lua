-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FilterButton = {};
local filterButton = gui.FilterButton;

local numButtons = 0; -- Local ID for naming, starts at 0 and will increment if a new button is added

-- [[ Constructors ]] --
filterButton.__index = filterButton; -- Used to support OOP like code
function filterButton:New(categoriesFrame, achievementsFrame)
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
	button.CategoriesFrame = categoriesFrame;
    categoriesFrame.FilterButton = button;
    button.AchievementsFrame = achievementsFrame;
    achievementsFrame.FilterButton = button;

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, button:GetName());
    button:Hide();

    return button;
end

function filterButton:UpdateAchievementFrame()
    diagnostics.Trace("filterButton:UpdateAchievementFrame");

    self.CategoriesFrame:Update(true);
    self.AchievementsFrame:ForceUpdate(true); -- Issue #27: Fix
end

local rightClickMenu = LibStub("KrowiMenu-1.0");
function filterButton:OnMouseDown()
    diagnostics.Trace("filterButton:OnMouseDown");

    UIMenuButtonStretchMixin.OnMouseDown(self, button);
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);

    -- Reset menu
	rightClickMenu:Clear();

    -- Filters
    rightClickMenu:AddFull({    Text = addon.L["F_COMPLETED"],
                                Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                                    return addon.Options.db.Filters.Completion.Completed
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Completion.Completed = not addon.Options.db.Filters.Completion.Completed;
                                    self:UpdateAchievementFrame();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });
    rightClickMenu:AddFull({    Text = addon.L["F_NOT_COMPLETED"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Completion.NotCompleted
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Completion.NotCompleted = not addon.Options.db.Filters.Completion.NotCompleted;
                                    self:UpdateAchievementFrame();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });
    rightClickMenu:AddFull({    Text = addon.L["F_OBTAINABLE"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Obtainability.Obtainable
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Obtainability.Obtainable = not addon.Options.db.Filters.Obtainability.Obtainable;
                                    self:UpdateAchievementFrame();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });
    rightClickMenu:AddFull({    Text = addon.L["F_NOT_OBTAINABLE"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Obtainability.NotObtainable;
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Obtainability.NotObtainable = not addon.Options.db.Filters.Obtainability.NotObtainable;
                                    self:UpdateAchievementFrame();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });
    rightClickMenu:AddFull({    Text = addon.L["F_NEUTRAL"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Faction.Neutral;
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Faction.Neutral = not addon.Options.db.Filters.Faction.Neutral;
                                    self:UpdateAchievementFrame();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });
    rightClickMenu:AddFull({    Text = addon.L["F_ALLIANCE"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Faction.Alliance;
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Faction.Alliance = not addon.Options.db.Filters.Faction.Alliance;
                                    self:UpdateAchievementFrame();
                                end,
                                IsNotRadio = true,
                                NotCheckable = false,
                                KeepShownOnClick = true
                            });
    rightClickMenu:AddFull({    Text = addon.L["F_HORDE"],
                                Checked = function() -- Same
                                    return addon.Options.db.Filters.Faction.Horde;
                                end,
                                Func = function()
                                    addon.Options.db.Filters.Faction.Horde = not addon.Options.db.Filters.Faction.Horde;
                                    self:UpdateAchievementFrame();
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

function filterButton:Validate(achievement)
    -- diagnostics.Trace("filterButton:Validate " .. tostring(achievement.ID)); -- Generates a lot of messages

	local _, _, _, completed = GetAchievementInfo(achievement.ID);
	if not addon.Options.db.Filters.Completion.Completed and completed then
		return -1;
	end
	if not addon.Options.db.Filters.Completion.NotCompleted and not completed then
		return -2;
	end
	if not addon.Options.db.Filters.Obtainability.Obtainable and achievement.NotObtainable == nil then
		return -3;
	end
	if not addon.Options.db.Filters.Obtainability.NotObtainable and achievement.NotObtainable then
		return -4;
	end
    -- Need to add faction filter

	return 1;
end

function filterButton:SetFilters(achievement)
    diagnostics.Trace("filterButton:SetFilters");

    local iterations = 0;
    while true do
        local id = self:Validate(achievement);
        if id == 1 then
            if iterations > 0 then -- If 0, nothing changed so no need to update
                self:UpdateAchievementFrame();
            end
            return; -- Jump out of loop
        elseif id == -1 then
            addon.Options.db.Filters.Completion.Completed = not addon.Options.db.Filters.Completion.Completed;
        elseif id == -2 then
            addon.Options.db.Filters.Completion.NotCompleted = not addon.Options.db.Filters.Completion.NotCompleted;
        elseif id == -3 then
            addon.Options.db.Filters.Obtainability.Obtainable = not addon.Options.db.Filters.Obtainability.Obtainable;
        elseif id == -4 then
            addon.Options.db.Filters.Obtainability.NotObtainable = not addon.Options.db.Filters.Obtainability.NotObtainable;
        end
        -- Need to add faction filter

        iterations = iterations + 1;
    end
end