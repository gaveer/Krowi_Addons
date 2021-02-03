--[[
	Krowi's Menu License
        Copyright ©2020-2020 The contents of this library, excluding third-party resources, are
        copyrighted to their authors with all rights reserved.

        This library is free to use and the authors hereby grants you the following rights:

        1. 	You may make modifications to this library for private use only, you
            may not publicize any portion of this library. The only exception being you may
            upload to the github website.

        2. 	Do not modify the name of this library, including the library folders.

        3. 	This copyright notice shall be included in all copies or substantial
            portions of the Software.

        All rights not explicitly addressed in this license are reserved by
        the copyright holders.
]]

local lib = LibStub:NewLibrary("KrowiMenu-1.0", 1);

if not lib then
	return;
end

local menuItem = LibStub("KrowiMenuItem-1.0");

-- [[ Other ]] --
local menuFrame = CreateFrame("Frame", "KrowiMenu", nil, "UIDropDownMenuTemplate");
local menu = {};

local function Convert(srcItem)
	local item = {};
	item.text = srcItem.Text or "INFO TEXT";
	item.checked = srcItem.Checked;
	item.func = srcItem.Func;
	item.isTitle = srcItem.IsTitle;
	item.isNotRadio = srcItem.IsNotRadio;
	if srcItem.NotCheckable == nil then
		item.notCheckable = true; -- NotCheckable by default
	else
		item.notCheckable = srcItem.NotCheckable;
	end
	item.keepShownOnClick = srcItem.KeepShownOnClick;
	if srcItem.Children ~= nil then
		item.hasArrow = true;
		item.menuList = {};
		for _, child in next, srcItem.Children do
			tinsert(item.menuList, Convert(child));
		end
	end

	-- Additional properties
	item.KeepSelected = srcItem.KeepSelected;
	item.UpdateOthers = srcItem.UpdateOthers;

	return item;
end

function lib:Clear()
    menu = {};
end

function lib:Add(item)
    tinsert(menu, Convert(item));
end

function lib:AddFull(info)
    self:Add(menuItem:New(info));
end

function lib:Open(anchor, offsetX, offsetY)
    -- Make sure optional values are set to default if not used
	anchor = anchor or "cursor";
	offsetX = offsetX or 0;
    offsetY = offsetY or 0;

	EasyMenu(menu, menuFrame, anchor, offsetX, offsetY, "MENU");
end

function lib:Toggle(anchor, offsetX, offsetY)
	if not DropDownList1:IsShown() then
		self:Open(anchor, offsetX, offsetY);
	else
		DropDownList1:Hide();
	end
end

local function UIDropDownMenuButton_OnClick(self)
	local checked = self.checked;
	if type (checked) == "function" then
		checked = checked(self);
	end
	if self.keepShownOnClick then
		if not self.notCheckable then
			if not checked then
				_G[self:GetName().."Check"]:Show();
				_G[self:GetName().."UnCheck"]:Hide();
				checked = true;
			end
		end
	else
		self:GetParent():Hide();
	end
	if type (self.checked) ~= "function" then
		self.checked = checked;
	end
	-- saving this here because func might use a dropdown, changing this self's attributes
	local playSound = true;
	if self.noClickSound then
		playSound = false;
	end
	local func = self.func;
	if func then
		func(self, self.arg1, self.arg2, checked);
	else
		return;
	end
	if playSound then
		PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
	end

	if self.UpdateOthers then
		
	end
end

local function UIDropDownMenu_AddButton_Extra(info, level)
	if info.KeepSelected and level then
		local button = _G[_G["DropDownList"..level]:GetName().."Button"..info.index];
		button.UpdateOthers = info.UpdateOthers;
		button:SetScript("OnClick", UIDropDownMenuButton_OnClick);
	end
end
hooksecurefunc("UIDropDownMenu_AddButton", UIDropDownMenu_AddButton_Extra);