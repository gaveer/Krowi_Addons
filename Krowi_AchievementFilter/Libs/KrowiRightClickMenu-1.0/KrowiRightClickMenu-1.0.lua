--[[
	Krowi's Right Click Menu License
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

local lib = LibStub:NewLibrary("KrowiRightClickMenu-1.0", 1);

if not lib then
	return;
end

local rightClickMenuItem = LibStub("KrowiRightClickMenuItem-1.0");

-- [[ Other ]] --
local menuFrame = CreateFrame("Frame", "KrowiRightClickMenu", nil, "UIDropDownMenuTemplate");
local menu = {};

local function Convert(rcItem)
	local item = {};
	item.text = rcItem.Name;
	item.func = rcItem.Func;
	item.isTitle = rcItem.IsTitle;
	if rcItem.Children ~= nil then
		item.hasArrow = true;
		item.menuList = {};
		for _, child in next, rcItem.Children do
			tinsert(item.menuList, Convert(child));
		end
	end

	return item;
end

function lib:Clear()
    menu = {};
end

function lib:Add(rcItem)
    tinsert(menu, Convert(rcItem));
end

function lib:AddFull(name, func, isTitle)
    self:Add(rightClickMenuItem:New(name, func, isTitle));
end

function lib:Open(anchor, offsetX, offsetY)
    -- Make sure optional values are set to default if not used
	anchor = anchor or "cursor";
	offsetX = offsetX or 0;
    offsetY = offsetY or 0;

	EasyMenu(menu, menuFrame, anchor, offsetX, offsetY, "MENU");
end