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
	item.ignoreAsMenuSelection = srcItem.IgnoreAsMenuSelection;
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

function lib:SetSelectedName(name)
	menuFrame.selectedName2 = name; -- Using another property we ommit the visual bugs the other property causes (buttons not selecting correctly on partial redraw)
	menuFrame.selectedName = nil; -- When we'd use this one, Blizzard code would overwrite info.checked with 1, not looking at the function anymore until the menu is full closed and opened again
	menuFrame.selectedID = nil;
	menuFrame.selectedValue = nil;
	self:UIDropDownMenu_Refresh(menuFrame);
end

function lib:GetSelectedName(frame)
	return frame.selectedName2;
end

local function GetChild(frame, name, key)
	if (frame[key]) then
		return frame[key];
	elseif name then
		return _G[name..key];
	end
	return nil;
end

function lib:UIDropDownMenu_Refresh(frame, useValue, dropdownLevel)
	local maxWidth = 0;
	local somethingChecked = nil;
	if not dropdownLevel then
		dropdownLevel = UIDROPDOWNMENU_MENU_LEVEL;
	end
	local listFrame = _G["DropDownList"..dropdownLevel];
	listFrame.numButtons = listFrame.numButtons or 0;
	-- Just redraws the existing menu
	for i = 1, UIDROPDOWNMENU_MAXBUTTONS do
		local button = _G["DropDownList"..dropdownLevel.."Button"..i];
		local checked = nil;
		if i <= listFrame.numButtons then
			-- See if checked or not
			if lib:GetSelectedName(frame) then
				if button:GetText() == lib:GetSelectedName(frame) then
					checked = 1;
				end
			end
		end
		if button.checked and type(button.checked) == "function" then
			checked = button.checked(button);
		end
		if not button.notCheckable and button:IsShown() then
			-- If checked show check image
			local checkImage = _G["DropDownList"..dropdownLevel.."Button"..i.."Check"];
			local uncheckImage = _G["DropDownList"..dropdownLevel.."Button"..i.."UnCheck"];
			if not button.ignoreAsMenuSelection then
				if checked then
						somethingChecked = true;
						local icon = GetChild(frame, frame:GetName(), "Icon");
						if (button.iconOnly and icon and button.icon) then
							UIDropDownMenu_SetIconImage(icon, button.icon, button.iconInfo);
						elseif useValue then
							UIDropDownMenu_SetText(frame, button.value);
							icon:Hide();
						else
							UIDropDownMenu_SetText(frame, button:GetText());
							icon:Hide();
						end
					button:LockHighlight();
					checkImage:Show();
					uncheckImage:Hide();
				else
					button:UnlockHighlight();
					checkImage:Hide();
					uncheckImage:Show();
				end
			end
		end
		if button:IsShown() then
			local width = UIDropDownMenu_GetButtonWidth(button);
			if width > maxWidth then
				maxWidth = width;
			end
		end
	end
	if somethingChecked == nil then
		UIDropDownMenu_SetText(frame, VIDEO_QUALITY_LABEL6);
		local icon = GetChild(frame, frame:GetName(), "Icon");
		icon:Hide();
	end
	if not frame.noResize then
		for i=1, UIDROPDOWNMENU_MAXBUTTONS do
			local button = _G["DropDownList"..dropdownLevel.."Button"..i];
			button:SetWidth(maxWidth);
		end
		UIDropDownMenu_RefreshDropDownSize(_G["DropDownList"..dropdownLevel]);
	end
end