# Changelog
All notable changes to this project will be documented in this file.

## [9.0.5.16.0] - 2021-04-02
### Added
- Cataclysm Dungeons and Raids zone data
- Cataclysm Tol Barad (11 achievements) + zone data
- Mists of Pandaria Zones (145 achievements) + zone data except for the shared zone group
- Mists of Pandaria Dungeons, Raids and Scenarios have zone data
- Mists of Pandaria Pet Battles (7 achievements)
- Missing Mists of Pandaria Scenario A Little Patience (6 achievements) + zone data
- Mists of Pandaria Proving Grounds (38 achievements) + zone data
- Warlords of Draenor Zones (109 achievements) + zone data except for the shared zone group
- Warlords of Draenor Pet Battles (5 achievements)

### Fixed
- 2 wrong achievements in The Nighthold raid

## [9.0.5.15.0] - 2021-03-23
### Added
- Warlords of Draenor Garrison (151 achievements) + zone data
- Missing Legion Legion Class Hall (1 achievement)
- Current Zone category (for now always visible and need to close/open the window or select the category again in order to refresh)
- All Warlords of Draenor achievements should have zone data except for Pet Battles
- All Legion achievements should have zone data except for Pet Battles and the shared zone group
- All Battle for Azeroth achievements should have zone data except for Pet Battles and the shared zone group
- All Shadowlands achievements should have zone data except for Pet Battles
- Filter to collapse a series of achievements so only the last completed and first not completed are visible

### Changed
- Battle for Azeroth Island Expeditions are now split per Island Expeditions
- Battle for Azeroth War Effort are now split per War Effort

## [9.0.5.14.0] - 2021-03-10
### Added
- Legion Pet Battles (with external links) (25 achievements)
- Legion Legion Class Hall (38 achievements)
- Missing Battle for Azeroth Pet Battles (1 achievement)
- Battle for Azeroth Island Expeditions (64 achievements)
- Battle for Azeroth War Effort (34 achievements)
- Battle for Azeroth Heart of Azeroth (11 achievements)
- Battle for Azeroth Visions of N'Zoth (21 achievements)

### Changed
- Battle for Azeroth Pet Battles and Shadowlands Pet Battles external links

## [9.0.2.13.0] - 2021-02-24
### Added
- Legion Zones (90 achievements)
- Shadowlands Torghast (30 achievements)
- Shadowlands Covenant Sanctums (42 achievements)
- Filtering by Neutral, Kyrian, Venthyr, Night Fae and Necrolord achievements now possible
- The Achievement window is now skinned when ElvUI's Blizzard Skins and Achievements are selected (Compatibility #7)
- Right Click Menu, Filter Menu and Popup Dialog for copying links are skinned when ElvUI's Blizzard Skins and Misc Frames are selected (Compatibility #7)
- Options are skinned when ElvUI's Ace3 Skins are selected (Compatibility #7)
- Tutorials are skinned when ElvUI's Blizzard Skins and Tutorials are selected (Compatibility #7)

### Changed
- Updated all tutorial images to have a fade to transparent instead of fade to black to better work with ElvUI's Blizzard Skins and Tutorials (Compatibility #7)

## [9.0.2.12.0] - 2021-02-15
### Added
- Filtering by Neutral, Alliance and Horde achievements now possible

### Changed
- Category tooltip info is now cached instead of fetching it every time resulting in huge performance increases to up to 10 times faster GUI loading
- Data is now stored and maintained in a SQLite database with an export to lua if new data is added
- IAT v3.18.0 or higher required

## [9.0.2.11.0] - 2021-02-05
### Added
- Filtering and Sorting achievements in the new tab (Features #16 and #18)
- Tutorial added explaining the filtering and search features
- When filters are applied and certain categories would be empty, these categories are now hidden
- When searching for an achievement that is hidden due to a filter, filters will automatically get adjusted to show the achievement

### Changed
- Right click menu items have no bullets in front of their names anymore

## [9.0.2.10.1] - 2021-02-02
### Fixed
- Issue #25: Tutorial step 3 does not toggle the correct categories to show the right click menu
- Issue #26: Going through the tutorial, the Achievement Window toggles instead of staying open

## [9.0.2.10.0] - 2021-02-02
### Added
- Achievement window height can now be changed up to double the original height
- Right clicking the search box will clear it (option)
- Left Click on minimap icon will toggle the Achievement Window to the new tab
- Keybinding under Game Menu -> Key Bindings -> AddOns to toggle the Achievement Window to the new tab

### Changed
- Changing the width of the categories now also changes the width of the achievement window instead of making the achievements smaller
- Tutorial page 4 has additional information about the options related to it

### Fixed
- Issue #21: Selecting the same achievement multiple times during search toggles the selection state
- Issue #22: Visual bugs
- Issue #23: Searching achievement in category that is selected and not collapsed will trigger error
- Issue #24: When Ace3 libraries are not installed as an addon, loading this addon causes errors

## [9.0.2.9.0] - 2021-01-27
### Added
- Searching achievements in the new tab (Feature #17)
- Options related to the new search feature
- Tutorials explaining the search feature
- Battle for Azeroth Pet Battles (18 achievements)
- Missing Shadowlands Pet Battles (1 achievement)

### Changed
- Moved some code build frames into Templates.xml
- Refactored functions to select categories and achievements (needed for searching achievements)
- Moved code into libraries for other addons

### Fixed
- Issue #20: The Ruby Sanctum category has the name of Icecrown Citadel under WotLK Raids

## [9.0.2.8.1] - 2021-01-16
### Fixed
- Issue #19: 'Overachiever' (a nil value)

## [9.0.2.8.0] - 2021-01-15
### Added
- Battle for Azeroth Zones (222 achievements for either Horde and Alliance)
- The width of the categories list can be adjusted in options; negative values will narrow it, positive values will widen it
- Tutorial explaining the features of the addon; showed when opening the new achievement window tab for the first time or when clicking the Help button in Interface -> Addons -> Options (Feature #14)

### Changed
- Interface -> Addons -> Options is now handled by Ace3
- SavedVariables are now handled by Ace3
- Localization is now handled by Ace3

### Fixed
- Issue #13: Updating addon in the past could lead to errors if new SavedVariables were added

## [v9.0.2.7.0] - 2021-01-09
### Added
- Addon compatibility with Instance Achievement Tracker (3.14.1 and above), achievements with info in IAT will have an option in their right click menu
- Pet battle achievements (Shadowlands only right now) has a link to https://www.wow-petguide.com/ in their right click menu

### Changed
- Complete GUI rewrite
- Addon for settings and addon for GUI have been consolidated into 1
- Memory optimization under the hood
- Minimap icon hidden by default for fresh installs since it's not doing much right now

### Fixed
- Issue #9: Cataclysm - Blackwing Decent is missing
- Issue #10: Toggling achievement tracking in Blizzard tab does not remove check mark from our tab
- Issue #11: Revisit issue #2
- Issue #12: Button loses state of IsSelected when categories are updated by selecting a category and by the scrollbar

## [90002.6.0] - 2021-01-02
### Added
- Right click menu for every achievement in the new tab with a link to Wowhead.

## [90002.5.0] - 2020-12-29
### Added
- Shadowlands pet battles (13 achievements)

## [90002.4.0] - 2020-12-26
### Added
- Split Shadowlands zones achievements in their respective zones
- More distinctive visual between collapsed and not collapsed categories

## [90002.3.0] - 2020-11-27
### Added
- Shadowlands zones (93 achievements)

## [90002.2.0] - 2020-11-23
### Added
- Mists of Pandaria scenarios (60 achievements)

### Fixed
- Issue #8: Toggling achievement tracking does not update the achievement for Blizzard achievement tracking

## [90002.1.0] - 2020-11-22
### Added
- Classic dungeons (60 achievements)
- Classic raids (11 achievements)
- The Burning Crusade dungeons (36 achievements)
- The Burning Crusade raids (13 achievements)
- Wrath of the Lich King dungeons (80 achievements)
- Wrath of the Lich King raids (366 achievements, including 136 legacy Ulduar achievements)

### Fixed
- Issue #1: Overachiever_Tabs overwrites AchievementFrame_UpdateTabs breaking our hook
- Issue #2: Overachiever_Tabs LeftFrame_OnHide shows a frame we need hidden
- Issue #3: Toggling achievement tracking does not update the achievement
- Issue #4: Tooltip only shows when hovering the shield, not the entire achievement
- Issue #6: Error GetNextAchievement(achievementID)

## [90002.0.2 Beta] - 2020-11-20
### Added
- Cataclysm dungeons (66 achievements)
- Cataclysm raids (69 achievements)
- Mists of Pandaria dungeons (94 achievements)
- Mists of Pandaria raids (117 achievements)
- Warlords of Draenor dungeons (91 achievements)
- Warlords of Draenor raids (81 achievements)
- Legion dungeons (72 achievements)
- Legion raids (111 achievements)

## [90002.Beta 0.1] - 2020-11-19
### Added
- Battle for Azeroth dungeons (63 achievements)
- Battle for Azeroth raids (106 achievements)
- Shadowlands dungeons (50 achievements)
- Shadowlands raids (26 achievements)

### Removed
- The need for almost all localization

[9.0.5.16.0]: https://github.com/TheKrowi/Krowi_Addons/tree/master/Krowi_AchievementFilter
[9.0.5.15.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3248934
[9.0.5.14.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3234117
[9.0.2.13.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3215749
[9.0.2.12.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3205404
[9.0.2.11.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3193640
[9.0.2.10.1]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3190348
[9.0.2.10.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3189892
[9.0.2.9.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3183198
[9.0.2.8.1]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3170618
[9.0.2.8.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3169416
[v9.0.2.7.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3163711
[90002.6.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3156244
[90002.5.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3152510
[90002.4.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3149372
[90002.3.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3124829
[90002.2.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3120770
[90002.1.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3119574
[90002.0.2 Beta]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3118037
[90002.Beta 0.1]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3116568