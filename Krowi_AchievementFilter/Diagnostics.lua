local _, addon = ...; -- Global addon namespace
addon.Diagnostics = {}; -- Global diagnostics namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

diagnostics.DebugEnabled = false; -- Used to determine if printing debug messages is allowed
diagnostics.TraceEnabled = false; -- Used to determine if printing trace messages is allowed

-- Print the value to the DEFAULT_CHAT_FRAME
function diagnostics.Debug(value, forced)
    if diagnostics.DebugEnabled or forced then
        DEFAULT_CHAT_FRAME:AddMessage(AF_NAME .. " - " .. tostring(value));
    end
end

-- Print the table to the DEFAULT_CHAT_FRAME
function diagnostics.DebugTable(table, charactersPerLine, forced)
    if diagnostics.DebugEnabled or forced then
        if type(charactersPerLine) ~= "number" then
            charactersPerLine = 100;
        end
		for line in TableToString(table, charactersPerLine):gmatch("[^\r\n]+") do
			DEFAULT_CHAT_FRAME:AddMessage(line);
		end
    end
end

-- Print the value to the DEFAULT_CHAT_FRAME
function diagnostics.Trace(value)
    if diagnostics.TraceEnabled then
        DEFAULT_CHAT_FRAME:AddMessage(AF_NAME .. " - " .. tostring(value));
    end
end

-- Load the diagnostics
function diagnostics.Load()
	diagnostics.DebugEnabled = Krowi_AchievementFilterOptions.EnableDebugInfo;
	diagnostics.TraceEnabled = Krowi_AchievementFilterOptions.EnableTraceInfo;
end