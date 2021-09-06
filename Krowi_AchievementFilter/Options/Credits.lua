-- [[ Namespaces ]] --
local _, addon = ...;
local options = addon.Options;

options.OptionsTable.args["Credits"] = {
    order = 5, type = "group",
    name = addon.L["Credits"],
    args = {
        SpecialThanks = {
            order = 1, type = "group",
            name = addon.L["Special thanks"],
            inline = true,
            args = {
                Names = {
                    order = 1, type = "description",
                    name = addon.GetSpecialThanksAsString(),
                    fontSize = "medium"
                }
            }
        },
        Donations = {
            order = 2, type = "group",
            name = addon.L["Donations"],
            inline = true,
            args = {
                Names = {
                    order = 1, type = "description",
                    name = addon.GetDonationsAsString(),
                    fontSize = "medium"
                }
            }
        }
    }
};