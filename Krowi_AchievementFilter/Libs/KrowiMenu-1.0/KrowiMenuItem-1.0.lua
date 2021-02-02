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

local lib = LibStub:NewLibrary("KrowiMenuItem-1.0", 1);

if not lib then
	return;
end

local popupDialog = LibStub("KrowiPopopDialog-1.0");

-- [[ Constructors ]] --
lib.__index = lib;
function lib:New(name, func, isTitle)
    local self = {};
    setmetatable(self, lib);

    self.Name = name;
    self.Func = func;
    self.IsTitle = isTitle;

    return self;
end

function lib:NewExtLink(name, externalLink)
    return lib:New(name, function() popupDialog.ShowExternalLink(externalLink); end);
end

-- [[ Other ]] --
function lib:AddChild(item)
    if self.Children == nil then
        self.Children = {}; -- By creating the children table here we reduce memory usage because not every category has children
    end

    tinsert(self.Children, item);

    return item;
end

function lib:AddChildFull(name, func, isTitle)
    return self:AddChild(lib:New(name, func, isTitle));
end

function lib:AddChildExtLinkFull(name, externalLink)
    return self:AddChild(lib:NewExtLink(name, externalLink));
end