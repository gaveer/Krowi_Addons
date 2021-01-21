local lib = LibStub:NewLibrary("KrowiPopopDialog-1.0", 1);

if not lib then
	return;
end

-- [[ External Link Popup Dialog ]] --
local externalLink = "";
local externalLinkDialog = "KROWI_EXTERNAL_LINK";
StaticPopupDialogs[externalLinkDialog] = { -- Needs to be added to the Blizzard list
	text = "Press CTRL+X to copy the website and close this window.",
	button1 = "Close",
	hasEditBox = true,
	editBoxWidth = 500,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,
	OnShow = function(self)
		self.editBox:SetText(externalLink);
		self.editBox:HighlightText();
	end,
	EditBoxOnEscapePressed = function(self) self:GetParent().button1:Click(); end,
	EditBoxOnTextChanged = function(self)
		if self:GetText():len() < 1 then
			self:GetParent().button1:Click();
		else
			self:SetText(externalLink);
			self:HighlightText();
		end
	end,
}

function lib.ShowExternalLink(link)
    externalLink = link;
    StaticPopup_Show(externalLinkDialog);
end