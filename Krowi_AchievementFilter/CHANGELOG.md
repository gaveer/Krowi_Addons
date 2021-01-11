# Changelog
All notable changes to this project will be documented in this file.

## [Unreleased]
### Added
- Battle for Azeroth zones

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
- Shadowlands pet battles

## [90002.4.0] - 2020-12-26
### Added
- Split Shadowlands zones achievements in their respective zones
- More distinctive visual between collapsed and not collapsed categories

## [90002.3.0] - 2020-11-27
### Added
- Shadowlands zones

## [90002.2.0] - 2020-11-23
### Added
- Mists of Pandaria scenarios

### Fixed
- Issue #8: Toggling achievement tracking does not update the achievement for Blizzard achievement tracking

## [90002.1.0] - 2020-11-22
### Added
- Classic dungeons and raids
- The Burning Crusade dungeons and raids
- Wrath of the Lich King dungeons and raids

### Fixed
- Issue #1: Overachiever_Tabs overwrites AchievementFrame_UpdateTabs breaking our hook
- Issue #2: Overachiever_Tabs LeftFrame_OnHide shows a frame we need hidden
- Issue #3: Toggling achievement tracking does not update the achievement
- Issue #4: Tooltip only shows when hovering the shield, not the entire achievement
- Issue #6: Error GetNextAchievement(achievementID)

## [90002.0.2 Beta] - 2020-11-20
### Added
- Cataclysm dungeons
- Mists of Pandaria dungeons
- Warlords of Draenor dungeons
- Legion dungeons

## [90002.Beta 0.1] - 2020-11-19
### Added
- Shadowlands raids and dungeons
- Battle for Azeroth dungeons

### Removed
- The need for almost all localization

[Unreleased]: https://github.com/TheKrowi/Krowi_Addons/tree/master/Krowi_AchievementFilter
[v9.0.2.7.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3163711
[90002.6.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3156244
[90002.5.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3152510
[90002.4.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3149372
[90002.3.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3124829
[90002.2.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3120770
[90002.1.0]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3119574
[90002.0.2 Beta]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3118037
[90002.Beta 0.1]: https://www.curseforge.com/wow/addons/krowi-achievement-filter/files/3116568