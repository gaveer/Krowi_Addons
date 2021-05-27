--[[
	Krowi's Tutorials License
        Copyright ©2020-2021 The contents of this library, excluding third-party resources, are
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

local lib = LibStub:NewLibrary('KrowiTutorialsPage-1.0', 1);

if not lib then
	return;
end

local defaults = {
	-- Title = "Tutorial",
	-- Width = 512 + 20, -- 512 for image + 20 offsetX
	-- Font = ""
};

lib.__index = lib;
function lib:New(pageSettings)
    local self = {};
    setmetatable(self, lib);

    for k, v in next, pageSettings do
        self[k] = v;
    end

	-- Add additional default values
	for k, v in next, defaults do
		if not self[k] then
			self[k] = v;
		end
	end

    return self;
end