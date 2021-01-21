local _, addon = ...; -- Global addon namespace
local gui = addon.GUI; -- Local GUI namespace
-- local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

-- gui.PopupDialog = {}; -- Global popup dialog namespace

gui.PopupDialog = LibStub("KrowiPopopDialog-1.0");
-- local popupDialog = gui.PopupDialog; -- Local pop up dialog namespace

-- -- [[ External Link Popup Dialog ]] --
-- local externalLink = "";
-- local externalLinkDialog = "KROWIAF_EXTERNAL_LINK";
-- StaticPopupDialogs[externalLinkDialog] = { -- Needs to be added to the Blizzard list
-- 	text = "Press CTRL+X to copy the website and close this window.",
-- 	button1 = "Close",
-- 	hasEditBox=true,
-- 	editBoxWidth=500,
-- 	timeout = 0,
-- 	whileDead = true,
-- 	hideOnEscape = true,
-- 	preferredIndex = 3,
-- 	OnShow = function(self)
-- 		self.editBox:SetText(externalLink);
-- 		self.editBox:HighlightText();
-- 	end,
-- 	EditBoxOnEscapePressed = function(self) self:GetParent().button1:Click() end,
-- 	EditBoxOnTextChanged = function(self)
-- 		if self:GetText():len() < 1 then
-- 			self:GetParent().button1:Click()
-- 		else
-- 			self:SetText(externalLink)
-- 			self:HighlightText()
-- 		end
-- 	end,
-- }

-- function popupDialog.ShowExternalLink(link)
--     diagnostics.Trace("popupDialog.ShowExternalLink");
--     externalLink = link;
--     StaticPopup_Show(externalLinkDialog);
-- end