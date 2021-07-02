local addonName, addon = ...;

AF_TAB = "|T:1:8|t";

addon.MetaData = {};
local metaData = addon.MetaData;

metaData.Title = GetAddOnMetadata(addonName, "Title");
metaData.Build = GetBuildInfo();
metaData.Version = GetAddOnMetadata(addonName, "Version");
metaData.BuildVersion = metaData.Build .. "." .. metaData.Version;

metaData.Author = GetAddOnMetadata(addonName, "Author");
metaData.Discord = GetAddOnMetadata(addonName, "X-Discord");
metaData.CurseForge = GetAddOnMetadata(addonName, "X-CurseForge");

-- [[ Colors ]] --
function addon.RemoveColor(text)
    text = string.gsub(text or "", "|c[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]", "");
    text = string.gsub(text or "", "|r", "");
    return text;
end

function addon.RGBPrct2HEX(r, g, b, a)
    if type(r) == "table" then
        a = r.A;
        b = r.B;
        g = r.G;
        r = r.R;
    end
    if a == nil then
        a = g;
    end
    if a == nil then
        a = 1;
    end

    local argb = {a, r, g, b};

    local hexadecimal = "";
    for _, value in next, argb do
		local hex = string.format("%x", value * 255);

		if(string.len(hex) == 1)then
			hex = '0' .. hex;
		end

		hexadecimal = hexadecimal .. hex;
	end

	return hexadecimal;
end

addon.AddonBlue = "|cFF1D92C2%s|r";

addon.GreenRGB = {
    R = QuestDifficultyColors["standard"].r,
    G = QuestDifficultyColors["standard"].g,
    B = QuestDifficultyColors["standard"].b
}
addon.GreenRGB.Hex = addon.RGBPrct2HEX(addon.GreenRGB);
addon.Green = "|c" .. addon.GreenRGB.Hex .. "%s|r";

addon.LightGreenRGB = {
    R = QuestDifficultyHighlightColors["standard"].r,
    G = QuestDifficultyHighlightColors["standard"].g,
    B = QuestDifficultyHighlightColors["standard"].b
}
addon.LightGreenRGB.Hex = addon.RGBPrct2HEX(addon.LightGreenRGB);
addon.LightGreen = "|c" .. addon.LightGreenRGB.Hex .. "%s|r";

addon.GreyRGB = {
    R = QuestDifficultyColors["trivial"].r,
    G = QuestDifficultyColors["trivial"].g,
    B = QuestDifficultyColors["trivial"].b
}
addon.GreyRGB.Hex = addon.RGBPrct2HEX(addon.GreyRGB);
addon.Grey = "|c" .. addon.GreyRGB.Hex .. "%s|r";

addon.LightGreyRGB = {
    R = QuestDifficultyHighlightColors["trivial"].r,
    G = QuestDifficultyHighlightColors["trivial"].g,
    B = QuestDifficultyHighlightColors["trivial"].b
}
addon.LightGreyRGB.Hex = addon.RGBPrct2HEX(addon.LightGreyRGB);
addon.LightGrey = "|c" .. addon.LightGreyRGB.Hex .. "%s|r";

addon.RedRGB = {
    R = QuestDifficultyColors["impossible"].r,
    G = QuestDifficultyColors["impossible"].g,
    B = QuestDifficultyColors["impossible"].b
}
addon.RedRGB.Hex = addon.RGBPrct2HEX(addon.RedRGB);
addon.Red = "|c" .. addon.RedRGB.Hex .. "%s|r";

addon.LightRedRGB = {
    R = QuestDifficultyHighlightColors["impossible"].r,
    G = QuestDifficultyHighlightColors["impossible"].g,
    B = QuestDifficultyHighlightColors["impossible"].b
}
addon.LightRedRGB.Hex = addon.RGBPrct2HEX(addon.LightRedRGB);
addon.LightRed = "|c" .. addon.LightRedRGB.Hex .. "%s|r";

addon.OrangeRGB = {
    R = QuestDifficultyColors["verydifficult"].r,
    G = QuestDifficultyColors["verydifficult"].g,
    B = QuestDifficultyColors["verydifficult"].b
}
addon.OrangeRGB.Hex = addon.RGBPrct2HEX(addon.OrangeRGB);
addon.Orange = "|c" .. addon.OrangeRGB.Hex .. "%s|r";

addon.LightOrangeRGB = {
    R = QuestDifficultyHighlightColors["verydifficult"].r,
    G = QuestDifficultyHighlightColors["verydifficult"].g,
    B = QuestDifficultyHighlightColors["verydifficult"].b
}
addon.LightOrangeRGB.Hex = addon.RGBPrct2HEX(addon.LightOrangeRGB);
addon.LightOrange = "|c" .. addon.LightOrangeRGB.Hex .. "%s|r";

addon.YellowRGB = {
    R = GetFontInfo(GameFontNormal).color.r,
    G = GetFontInfo(GameFontNormal).color.g,
    B = GetFontInfo(GameFontNormal).color.b
}
addon.YellowRGB.Hex = addon.RGBPrct2HEX(addon.YellowRGB);
addon.Yellow = "|c" .. addon.YellowRGB.Hex .. "%s|r";

addon.WhiteRGB = {
    R = GetFontInfo(GameFontHighlight).color.r,
    G = GetFontInfo(GameFontHighlight).color.g,
    B = GetFontInfo(GameFontHighlight).color.b
}
addon.WhiteRGB.Hex = addon.RGBPrct2HEX(addon.WhiteRGB);
addon.White = "|c" .. addon.WhiteRGB.Hex .. "%s|r";

-- addon.DruidRGB = {};
-- addon.DruidRGB.R, addon.DruidRGB.G, addon.DruidRGB.B, addon.DruidRGB.Hex = GetClassColor("DRUID");
-- addon.Druid = "|c" .. addon.DruidRGB.Hex .. "%s|r";

-- [[ Credits ]] --
addon.Donations = {
    {Name = "Bur", Realm = "Frostmane EU", Class = "DRUID"},
    {Name = "Ta", Realm = "Der Rat von Dalaran EU", Class = "SHAMAN"},
}

function addon.GetDonationsAsString()
    local text = "";
    for _, donation in next, addon.Donations do
        local _, _, _, argbHex = GetClassColor(donation.Class);
        text = text .. "|c" .. argbHex .. donation.Name .. "|r";
        if donation.Realm then
            text = text .. " - " .. donation.Realm;
        end
        text = text .. "\n";
    end
    return text;
end

addon.SpecialThanks = {
    {Name = "Bur", Realm = "Frostmane EU", Class = "DRUID", Text = "Continuous support and helpful input and answers on questions that make this addon better; It wouldn't be as good without you :)"},
}

function addon.GetSpecialThanksAsString()
    local text;
    for _, specialThanks in next, addon.SpecialThanks do
        if text then
            text = text .. "\n"
        else
            text = "";
        end
        local _, _, _, argbHex = GetClassColor(specialThanks.Class);
        text = text .. "|c" .. argbHex .. specialThanks.Name .. "|r";
        if specialThanks.Realm then
            text = text .. " - " .. specialThanks.Realm;
        end
        if specialThanks.Text then
            text = text .. " - " .. specialThanks.Text;
        end
        text = text .. "\n";
    end
    return text;
end