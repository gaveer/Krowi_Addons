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
	item.text = srcItem.Text or "NO TEXT";
	item.func = srcItem.Func;
	item.isTitle = srcItem.IsTitle or false;
	item.notCheckable = srcItem.NotCheckable or true;
	if srcItem.Children ~= nil then
		item.hasArrow = true;
		item.menuList = {};
		for _, child in next, srcItem.Children do
			tinsert(item.menuList, Convert(child));
		end
	end

	return item;
end

function lib:Clear()
    menu = {};
end

function lib:Add(item)
    tinsert(menu, Convert(item));
end

function lib:AddFull(...)
    self:Add(menuItem:New(...));
end

function lib:Open(anchor, offsetX, offsetY)
    -- Make sure optional values are set to default if not used
	anchor = anchor or "cursor";
	offsetX = offsetX or 0;
    offsetY = offsetY or 0;

	EasyMenu(menu, menuFrame, anchor, offsetX, offsetY, "MENU");
end

function lib:GetMenu()
	return menu;
end