-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.CategoryButton = {};
local categoryButton = gui.CategoryButton;

function categoryButton.PostLoadButtons(categoriesFrame)
	diagnostics.Trace("categoryButton.PostLoadButtons");

	for _, button in next, categoriesFrame.Container.buttons do
		button.Click = function(self, button, down, quick)
			categoryButton.OnClick(self, categoriesFrame, quick);
		end;
		button:SetScript("OnClick", button.Click);
	end
end

function categoryButton.OnClick(self, categoriesFrame, quick)
    diagnostics.Trace("categoryButton.OnClick");

    categoriesFrame:SelectButton(self, quick);
    categoriesFrame:Update();
end