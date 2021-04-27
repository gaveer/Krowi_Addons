using System;

namespace DbManager.Objects
{
    [Flags]
    public enum AchievementFlags
    {
        NO_FLAGS = 0x0,
        COUNTER = 0x1,
        PLAY_NO_VISUAL = 0x4,
        SUM = 0x8,
        MAX_USED = 0x10,
        REQ_COUNT = 0x20,
        AVERAGE = 0x40,
        PROGRESS_BAR = 0x80,
        REALM_FIRST_REACH = 0x100,
        REALM_FIRST_KILL = 0x200,
        HIDE_INCOMPLETE = 0x800,
        SHOW_IN_GUILD_NEWS = 0x1000,
        SHOW_IN_GUILD_HEADER = 0x2000,
        GUILD = 0x4000,
        SHOW_GUILD_MEMBERS = 0x8000,
        SHOW_CRITERIA_MEMBERS = 0x10000,
        ACCOUNT_WIDE = 0x20000,
        UNK5 = 0x40000,
        HIDE_ZERO_COUNTER = 0x80000,
        TRACKING_FLAG = 0x100000,
        x200000 = 0x200000,
        x400000 = 0x400000,
        x800000 = 0x800000
    }
}