-- function HybridScrollFrame_Update (self, totalHeight, displayedHeight)
--     KrowiAF.Debug("HybridScrollFrame_Update");
-- 	local range = floor(totalHeight - self:GetHeight() + 0.5);
-- 	if ( range > 0 and self.scrollBar ) then
-- 		local minVal, maxVal = self.scrollBar:GetMinMaxValues();
-- 		if ( math.floor(self.scrollBar:GetValue()) >= math.floor(maxVal) ) then
-- 			self.scrollBar:SetMinMaxValues(0, range);
-- 			if ( range < maxVal ) then
-- 				if ( math.floor(self.scrollBar:GetValue()) ~= math.floor(range) ) then
-- 					self.scrollBar:SetValue(range);
-- 				else
-- 					HybridScrollFrame_SetOffset(self, range); -- If we've scrolled to the bottom, we need to recalculate the offset.
-- 				end
-- 			end
-- 		else
-- 			self.scrollBar:SetMinMaxValues(0, range)
-- 		end
-- 		self.scrollBar:Enable();
-- 		HybridScrollFrame_UpdateButtonStates(self);
-- 		self.scrollBar:Show();
-- 	elseif ( self.scrollBar ) then
-- 		self.scrollBar:SetValue(0);
-- 		if ( self.scrollBar.doNotHide ) then
-- 			self.scrollBar:Disable();
-- 			self.scrollUp:Disable();
-- 			self.scrollDown:Disable();
-- 			self.scrollBar.thumbTexture:Hide();
-- 		else
-- 			self.scrollBar:Hide();
-- 		end
-- 	end

-- 	self.range = range;
-- 	self.totalHeight = totalHeight;
-- 	self.scrollChild:SetHeight(displayedHeight);
--     self:UpdateScrollChildRect();
-- end

local loadHelper = CreateFrame("Frame", nil, nil);
loadHelper:RegisterEvent("ADDON_LOADED");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "AchievementFilter" then
            KrowiAF.LoadOptions(); -- 1
            KrowiAF.LoadIcon(); -- 2
        elseif arg1 == "Blizzard_AchievementUI" then
            KrowiAF.AddNewTab(AF_TAB_BUTTON_TEXT, {
                categoryAccessor = function()
                    return KrowiAF.Categories;
                end,
                getCategoryList = KrowiAF.AchievementFrameCategories_GetCategoryList,
                clearFunc = AchievementFrameAchievements_ClearSelection,
                updateFunc = KrowiAF.AchievementFrameAchievements_Update,
                selectedCategory = 1;
                noSummary = true;
            }); -- 4
            KrowiAF.Debug("     - Functions linked");
            KrowiAF.LoadCategories(); -- 5
            KrowiAF.LoadAchievements(); -- 6
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);