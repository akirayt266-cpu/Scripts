-- Auto Bounty UI — Sovereign Hub Style
-- Original: Cokeboys Script (deobfuscated by DevAurora Code)
-- UI Skin:  Sovereign Hub Ui Library (https://pastefy.app/tAT2U6nA/raw)
-- FFlags tab removed as requested.

-- ──────────────────────────────────────────────────────────────
-- 1.  Load the Sovereign Hub library
-- ──────────────────────────────────────────────────────────────
local Library = loadstring(game:HttpGet("https://pastefy.app/tAT2U6nA/raw"))()

-- ──────────────────────────────────────────────────────────────
-- 2.  Load the Cokeboys core script silently in background
--     The core injects its API into _G / getgenv()
-- ──────────────────────────────────────────────────────────────
-- We load it with getgenv().__CokeboysHideInterface = true so it
-- won't spawn its own GUI; then we drive it via _G exports.
getgenv().__CokeboysHideInterface = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/DevAurora-code/CokeboysDeobf/main/cokeboys.lua"))()
-- NOTE: Replace the URL above with the actual raw URL / paste URL
-- where your cokeboys_lua.txt is hosted. If you paste the full
-- source locally just replace the loadstring line with:
--   dofile("/path/to/cokeboys_lua.txt")  (in supported executors)
-- or embed it directly if your executor allows.

-- ──────────────────────────────────────────────────────────────
-- Helper: safe _G getter / setter wrappers
-- ──────────────────────────────────────────────────────────────
local function getSetting(key, default)
    local ok, v = pcall(function()
        return getgenv().CokeboysConfig and getgenv().CokeboysConfig[key]
    end)
    if ok and v ~= nil then return v end
    return default
end

local function setSetting(key, value)
    if getgenv().CokeboysConfig then
        getgenv().CokeboysConfig[key] = value
    end
end

-- ──────────────────────────────────────────────────────────────
-- 3.  Create the Sovereign Hub Window
-- ──────────────────────────────────────────────────────────────
local Window = Library:CreateWindow({
    Title = "Sovereign Hub",
    Icon  = 87567481752287
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 1 — HOME
-- ═══════════════════════════════════════════════════════════════
local HomeTab = Window:CreateTab({ Title = "Home", Icon = "home" })

local HomeLeft  = HomeTab:CreateSection({ Title = "Server Hop", Side = "Left" })
local HomeRight = HomeTab:CreateSection({ Title = "Session",    Side = "Right" })

HomeLeft:CreateToggle({
    Title = "Server Hop",
    Value = getSetting("ServerHopEnabled", false),
    Callback = function(v)
        setSetting("ServerHopEnabled", v)
        if _G.__CokeboysSetServerHop then _G.__CokeboysSetServerHop(v) end
    end
})

HomeLeft:CreateSlider({
    Title      = "Min Bounty (M)",
    TextEnding = "M",
    Min        = 0,
    Max        = 30,
    Value      = math.floor((getSetting("ServerHopMinimumBounty", 0)) / 1000000),
    Callback   = function(v)
        setSetting("ServerHopMinimumBounty", v * 1000000)
    end
})

HomeLeft:CreateDropdown({
    Title    = "Preferred Region",
    List     = {"Auto", "US East", "US West", "EU", "Asia", "AU"},
    Multi    = false,
    Value    = getSetting("ServerHopPreferredRegion", "Auto"),
    Callback = function(v)
        setSetting("ServerHopPreferredRegion", v == "Auto" and "" or v)
    end
})

HomeLeft:CreateToggle({
    Title = "Teleport Auto Load",
    Value = getSetting("TeleportAutoLoad", false),
    Callback = function(v)
        setSetting("TeleportAutoLoad", v)
    end
})

HomeRight:CreateToggle({
    Title = "Show Bounty / Honor",
    Value = getSetting("ShowBountyHonor", false),
    Callback = function(v)
        setSetting("ShowBountyHonor", v)
    end
})

HomeRight:CreateToggle({
    Title = "Show FPS / Ping",
    Value = getSetting("ShowFPSPing", false),
    Callback = function(v)
        setSetting("ShowFPSPing", v)
    end
})

HomeRight:CreateToggle({
    Title = "Show Session Info",
    Value = getSetting("ShowSessionInfo", false),
    Callback = function(v)
        setSetting("ShowSessionInfo", v)
    end
})

HomeRight:CreateToggle({
    Title = "Anti AFK",
    Value = getSetting("AntiAFK", false),
    Callback = function(v)
        setSetting("AntiAFK", v)
        if _G.__CokeboysSetAntiAFK then _G.__CokeboysSetAntiAFK(v) end
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 2 — COMBAT
-- ═══════════════════════════════════════════════════════════════
local CombatTab = Window:CreateTab({ Title = "Combat", Icon = "sword" })

local CombatLeft  = CombatTab:CreateSection({ Title = "Aimbot & Targeting", Side = "Left" })
local CombatRight = CombatTab:CreateSection({ Title = "Combat Options",     Side = "Right" })

CombatLeft:CreateToggle({
    Title = "Skill Aimbot",
    Value = getSetting("SkillAimbot", false),
    Callback = function(v)
        setSetting("SkillAimbot", v)
        if _G.__CokeboysSetSkillAimbot then _G.__CokeboysSetSkillAimbot(v) end
    end
})

CombatLeft:CreateToggle({
    Title = "Target Lock",
    Value = getSetting("TargetLock", false),
    Callback = function(v)
        setSetting("TargetLock", v)
        if _G.__CokeboysSetTargetLock then _G.__CokeboysSetTargetLock(v) end
    end
})

CombatLeft:CreateToggle({
    Title = "Soru Aimbot",
    Value = getSetting("SoruAimbot", false),
    Callback = function(v)
        setSetting("SoruAimbot", v)
        if _G.__CokeboysSetSoruAimbot then _G.__CokeboysSetSoruAimbot(v) end
    end
})

CombatLeft:CreateToggle({
    Title = "Aim Normal Soru",
    Value = getSetting("AimNormalSoru", false),
    Callback = function(v)
        setSetting("AimNormalSoru", v)
    end
})

CombatLeft:CreateDropdown({
    Title    = "CamLock Mode",
    List     = {"Disabled", "Skill Specific", "Permanent"},
    Multi    = false,
    Value    = getSetting("CamLockMode", "Disabled"),
    Callback = function(v)
        setSetting("CamLockMode", v)
    end
})

CombatLeft:CreateDropdown({
    Title    = "Target Priority",
    List     = {"Closest", "Highest Bounty", "Lowest HP"},
    Multi    = false,
    Value    = getSetting("TargetPriority", "Closest"),
    Callback = function(v)
        setSetting("TargetPriority", v)
    end
})

CombatLeft:CreateSlider({
    Title      = "Aim Distance",
    TextEnding = " studs",
    Min        = 50,
    Max        = 2000,
    Value      = getSetting("AimDistance", 500),
    Callback   = function(v)
        setSetting("AimDistance", v)
    end
})

CombatRight:CreateToggle({
    Title = "Fast Attack",
    Value = getSetting("FastAttack", false),
    Callback = function(v)
        setSetting("FastAttack", v)
        if _G.__CokeboysSetFastAttack then _G.__CokeboysSetFastAttack(v) end
    end
})

CombatRight:CreateToggle({
    Title = "Hitbox Expander",
    Value = getSetting("HitboxExpander", false),
    Callback = function(v)
        setSetting("HitboxExpander", v)
        if _G.__CokeboysSetHitboxExpander then _G.__CokeboysSetHitboxExpander(v) end
    end
})

CombatRight:CreateSlider({
    Title      = "Hitbox Size",
    TextEnding = "",
    Min        = 1,
    Max        = 30,
    Value      = getSetting("HitboxSize", 5),
    Callback   = function(v)
        setSetting("HitboxSize", v)
    end
})

CombatRight:CreateToggle({
    Title = "Anti Stun",
    Value = getSetting("AntiStun", false),
    Callback = function(v)
        setSetting("AntiStun", v)
    end
})

CombatRight:CreateToggle({
    Title = "Anti Combo",
    Value = getSetting("AntiCombo", false),
    Callback = function(v)
        setSetting("AntiCombo", v)
    end
})

CombatRight:CreateToggle({
    Title = "Safe Zone Filter",
    Value = getSetting("SafeZoneFilter", true),
    Callback = function(v)
        setSetting("SafeZoneFilter", v)
    end
})

CombatRight:CreateToggle({
    Title = "Ignore Low Level Players",
    Value = getSetting("IgnoreLowLevel", false),
    Callback = function(v)
        setSetting("IgnoreLowLevel", v)
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 3 — MOVEMENT
-- ═══════════════════════════════════════════════════════════════
local MoveTab = Window:CreateTab({ Title = "Movement", Icon = "run" })

local MoveLeft  = MoveTab:CreateSection({ Title = "Speed & Jump", Side = "Left" })
local MoveRight = MoveTab:CreateSection({ Title = "Glitches",     Side = "Right" })

MoveLeft:CreateSlider({
    Title      = "Speed Multiplier",
    TextEnding = "x",
    Min        = 1,
    Max        = 10,
    Value      = getSetting("SpeedMultiplier", 1),
    Callback   = function(v)
        setSetting("SpeedMultiplier", v)
    end
})

MoveLeft:CreateSlider({
    Title      = "Jump Power",
    TextEnding = "",
    Min        = 1,
    Max        = 200,
    Value      = getSetting("JumpPower", 50),
    Callback   = function(v)
        setSetting("JumpPower", v)
    end
})

MoveLeft:CreateToggle({
    Title = "Infinite Air Jump",
    Value = getSetting("InfiniteAirJump", false),
    Callback = function(v)
        setSetting("InfiniteAirJump", v)
    end
})

MoveLeft:CreateToggle({
    Title = "Infinite Soru",
    Value = getSetting("InfiniteSoru", false),
    Callback = function(v)
        setSetting("InfiniteSoru", v)
    end
})

MoveLeft:CreateToggle({
    Title = "Walk on Water",
    Value = getSetting("WalkOnWater", false),
    Callback = function(v)
        setSetting("WalkOnWater", v)
    end
})

MoveLeft:CreateToggle({
    Title = "Walk on Lava",
    Value = getSetting("WalkOnLava", false),
    Callback = function(v)
        setSetting("WalkOnLava", v)
    end
})

MoveRight:CreateToggle({
    Title = "Dash Boost",
    Value = getSetting("DashBoost", false),
    Callback = function(v)
        setSetting("DashBoost", v)
    end
})

MoveRight:CreateSlider({
    Title      = "Dash Length",
    TextEnding = "",
    Min        = 1,
    Max        = 20,
    Value      = getSetting("DashLength", 5),
    Callback   = function(v)
        setSetting("DashLength", v)
    end
})

MoveRight:CreateToggle({
    Title = "No Ragdoll After Boost",
    Value = getSetting("NoRagdollBoost", false),
    Callback = function(v)
        setSetting("NoRagdollBoost", v)
    end
})

MoveRight:CreateToggle({
    Title = "Sanguine Z Boost",
    Value = getSetting("SanguineZBoost", false),
    Callback = function(v)
        setSetting("SanguineZBoost", v)
    end
})

MoveRight:CreateSlider({
    Title      = "Sang Z Distance",
    TextEnding = "",
    Min        = 1,
    Max        = 100,
    Value      = getSetting("SangZDistance", 30),
    Callback   = function(v)
        setSetting("SangZDistance", v)
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 4 — VISUALS / ESP
-- ═══════════════════════════════════════════════════════════════
local VisualsTab = Window:CreateTab({ Title = "Visuals", Icon = "eye" })

local ESPLeft   = VisualsTab:CreateSection({ Title = "ESP",       Side = "Left" })
local ESPRight  = VisualsTab:CreateSection({ Title = "Overlays",  Side = "Right" })

ESPLeft:CreateToggle({
    Title = "ESP Enabled",
    Value = getSetting("ESPEnabled", false),
    Callback = function(v)
        setSetting("ESPEnabled", v)
        if _G.__CokeboysSetESP then _G.__CokeboysSetESP(v) end
    end
})

ESPLeft:CreateToggle({
    Title = "Show Name",
    Value = getSetting("ESPShowName", true),
    Callback = function(v)
        setSetting("ESPShowName", v)
    end
})

ESPLeft:CreateToggle({
    Title = "Show Level",
    Value = getSetting("ESPShowLevel", true),
    Callback = function(v)
        setSetting("ESPShowLevel", v)
    end
})

ESPLeft:CreateToggle({
    Title = "Show Bounty",
    Value = getSetting("ESPShowBounty", true),
    Callback = function(v)
        setSetting("ESPShowBounty", v)
    end
})

ESPLeft:CreateToggle({
    Title = "Show Health Bar",
    Value = getSetting("ESPShowHealthBar", true),
    Callback = function(v)
        setSetting("ESPShowHealthBar", v)
    end
})

ESPLeft:CreateToggle({
    Title = "Bounty Name Colors",
    Value = getSetting("ESPUseBountyColors", true),
    Callback = function(v)
        setSetting("ESPUseBountyColors", v)
    end
})

ESPLeft:CreateToggle({
    Title = "Show Distance",
    Value = getSetting("ESPShowDistance", false),
    Callback = function(v)
        setSetting("ESPShowDistance", v)
    end
})

ESPLeft:CreateToggle({
    Title = "Limit ESP Distance",
    Value = getSetting("ESPLimitDistance", false),
    Callback = function(v)
        setSetting("ESPLimitDistance", v)
    end
})

ESPLeft:CreateSlider({
    Title      = "Max Distance",
    TextEnding = " studs",
    Min        = 50,
    Max        = 3000,
    Value      = getSetting("ESPMaxDistance", 1000),
    Callback   = function(v)
        setSetting("ESPMaxDistance", v)
    end
})

ESPRight:CreateToggle({
    Title = "Show FOV Circle",
    Value = getSetting("ShowFOV", false),
    Callback = function(v)
        setSetting("ShowFOV", v)
    end
})

ESPRight:CreateSlider({
    Title      = "FOV Radius",
    TextEnding = "",
    Min        = 50,
    Max        = 700,
    Value      = getSetting("FOVRadius", 350),
    Callback   = function(v)
        setSetting("FOVRadius", v)
    end
})

ESPRight:CreateToggle({
    Title = "Status Overlay",
    Value = getSetting("StatusOverlay", false),
    Callback = function(v)
        setSetting("StatusOverlay", v)
    end
})

ESPRight:CreateToggle({
    Title = "Target Indicator",
    Value = getSetting("TargetIndicator", false),
    Callback = function(v)
        setSetting("TargetIndicator", v)
    end
})

ESPRight:CreateToggle({
    Title = "Show Observation Haki",
    Value = getSetting("ShowObservation", false),
    Callback = function(v)
        setSetting("ShowObservation", v)
    end
})

ESPRight:CreateToggle({
    Title = "Show PvP State",
    Value = getSetting("ShowPvPState", false),
    Callback = function(v)
        setSetting("ShowPvPState", v)
    end
})

ESPRight:CreateToggle({
    Title = "Show Race",
    Value = getSetting("ShowRace", false),
    Callback = function(v)
        setSetting("ShowRace", v)
    end
})

ESPRight:CreateToggle({
    Title = "Camera Shake Removal",
    Value = getSetting("NoCameraShake", false),
    Callback = function(v)
        setSetting("NoCameraShake", v)
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 5 — MACRO
-- ═══════════════════════════════════════════════════════════════
local MacroTab = Window:CreateTab({ Title = "Macro", Icon = "zap" })

local MacroLeft  = MacroTab:CreateSection({ Title = "Smart Macro",    Side = "Left" })
local MacroRight = MacroTab:CreateSection({ Title = "Soru & Actions", Side = "Right" })

MacroLeft:CreateLabel({ Title = "Smart Macro — build combos in Settings tab" })

MacroLeft:CreateDropdown({
    Title    = "Active Macro Slot",
    List     = {"Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5"},
    Multi    = false,
    Value    = "Slot 1",
    Callback = function(v)
        local slot = tonumber(v:match("%d+")) or 1
        if _G.__CokeboysSetActiveMacroSlot then
            _G.__CokeboysSetActiveMacroSlot(slot)
        end
    end
})

MacroLeft:CreateButton({
    Title    = "▶  Play / Stop Macro",
    Callback = function()
        if _G.__CokeboysToggleMacro then _G.__CokeboysToggleMacro() end
    end
})

MacroLeft:CreateKeyBind({
    Title    = "Macro Keybind",
    Value    = Enum.KeyCode.P,
    Callback = function(v)
        setSetting("MacroKey", v)
    end
})

MacroLeft:CreateToggle({
    Title = "Auto V3",
    Value = getSetting("AutoV3", false),
    Callback = function(v)
        setSetting("AutoV3", v)
    end
})

MacroLeft:CreateToggle({
    Title = "Auto V4",
    Value = getSetting("AutoV4", false),
    Callback = function(v)
        setSetting("AutoV4", v)
        if _G.__CokeboysSetAutoV4 then _G.__CokeboysSetAutoV4(v) end
    end
})

MacroLeft:CreateToggle({
    Title = "Auto Buso",
    Value = getSetting("AutoBuso", false),
    Callback = function(v)
        setSetting("AutoBuso", v)
    end
})

MacroRight:CreateToggle({
    Title = "Soru Skill Macro",
    Value = getSetting("SoruSkillMacro", false),
    Callback = function(v)
        setSetting("SoruSkillMacro", v)
    end
})

MacroRight:CreateKeyBind({
    Title    = "Soru Aim Keybind",
    Value    = Enum.KeyCode.Q,
    Callback = function(v)
        setSetting("SoruAimKey", v)
    end
})

MacroRight:CreateToggle({
    Title = "Auto Skull Guitar",
    Value = getSetting("AutoSkullGuitar", false),
    Callback = function(v)
        setSetting("AutoSkullGuitar", v)
    end
})

MacroRight:CreateToggle({
    Title = "Ragdoll After Skill",
    Value = getSetting("RagdollAfterSkill", false),
    Callback = function(v)
        setSetting("RagdollAfterSkill", v)
    end
})

MacroRight:CreateToggle({
    Title = "Ragdoll After Fruit M1",
    Value = getSetting("RagdollAfterFruitM1", false),
    Callback = function(v)
        setSetting("RagdollAfterFruitM1", v)
    end
})

MacroRight:CreateToggle({
    Title = "Sanguine Z Boost Toggle",
    Value = getSetting("SangZBoostEnabled", false),
    Callback = function(v)
        setSetting("SangZBoostEnabled", v)
    end
})

MacroRight:CreateToggle({
    Title = "Diamond M1 Boost",
    Value = getSetting("DiamondBoost", false),
    Callback = function(v)
        setSetting("DiamondBoost", v)
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 6 — SHOP / GACHA
-- ═══════════════════════════════════════════════════════════════
local ShopTab = Window:CreateTab({ Title = "Shop", Icon = "shopping-cart" })

local ShopLeft  = ShopTab:CreateSection({ Title = "Fruit Gacha",   Side = "Left" })
local ShopRight = ShopTab:CreateSection({ Title = "Fighting Styles", Side = "Right" })

ShopLeft:CreateToggle({
    Title = "Auto Roll Fruits",
    Value = getSetting("AutoRollFruits", false),
    Callback = function(v)
        setSetting("AutoRollFruits", v)
        if _G.__CokeboysSetAutoRoll then _G.__CokeboysSetAutoRoll(v) end
    end
})

ShopLeft:CreateToggle({
    Title = "Auto-Store Rolled Fruits",
    Value = getSetting("AutoStoreFruits", false),
    Callback = function(v)
        setSetting("AutoStoreFruits", v)
    end
})

ShopLeft:CreateButton({
    Title    = "Refresh Fruit Stock",
    Callback = function()
        if _G.__CokeboysRefreshFruitStockUI then _G.__CokeboysRefreshFruitStockUI() end
    end
})

ShopRight:CreateLabel({ Title = "Fighting style purchases in-game" })

ShopRight:CreateToggle({
    Title = "Auto Buy Melee",
    Value = getSetting("AutoBuyMelee", false),
    Callback = function(v)
        setSetting("AutoBuyMelee", v)
    end
})

ShopRight:CreateButton({
    Title    = "Reroll Race (3,000 Fragments)",
    Callback = function()
        if _G.__CokeboysRerollRace then _G.__CokeboysRerollRace() end
    end
})

ShopRight:CreateButton({
    Title    = "Reset Stats (2,500 Fragments)",
    Callback = function()
        if _G.__CokeboysResetStats then _G.__CokeboysResetStats() end
    end
})

ShopRight:CreateButton({
    Title    = "Switch to Cyborg (2,500 Fragments)",
    Callback = function()
        if _G.__CokeboysSwitchRace then _G.__CokeboysSwitchRace("Cyborg") end
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 7 — SKIN CHANGER
-- ═══════════════════════════════════════════════════════════════
local SkinTab = Window:CreateTab({ Title = "Skin Changer", Icon = "palette" })

local SkinLeft  = SkinTab:CreateSection({ Title = "Effect Colors",  Side = "Left" })
local SkinRight = SkinTab:CreateSection({ Title = "Avatar & Local", Side = "Right" })

SkinLeft:CreateToggle({
    Title = "Enable Skin Changer",
    Value = getSetting("SkinChangerEnabled", false),
    Callback = function(v)
        setSetting("SkinChangerEnabled", v)
        if _G.__CokeboysSetSkinChanger then _G.__CokeboysSetSkinChanger(v) end
    end
})

SkinLeft:CreateToggle({
    Title = "Rainbow Colors",
    Value = getSetting("RainbowColors", false),
    Callback = function(v)
        setSetting("RainbowColors", v)
    end
})

SkinLeft:CreateColorPicker({
    Title    = "Fruit Color",
    Color    = Color3.fromRGB(255, 150, 50),
    Callback = function(r, g, b)
        setSetting("FruitColor", {r, g, b})
    end
})

SkinLeft:CreateColorPicker({
    Title    = "Sword Color",
    Color    = Color3.fromRGB(100, 180, 255),
    Callback = function(r, g, b)
        setSetting("SwordColor", {r, g, b})
    end
})

SkinLeft:CreateColorPicker({
    Title    = "Melee Color",
    Color    = Color3.fromRGB(255, 80, 80),
    Callback = function(r, g, b)
        setSetting("MeleeColor", {r, g, b})
    end
})

SkinLeft:CreateColorPicker({
    Title    = "Gun Color",
    Color    = Color3.fromRGB(180, 255, 130),
    Callback = function(r, g, b)
        setSetting("GunColor", {r, g, b})
    end
})

SkinRight:CreateToggle({
    Title = "Fake Headless",
    Value = getSetting("FakeHeadless", false),
    Callback = function(v)
        setSetting("FakeHeadless", v)
    end
})

SkinRight:CreateToggle({
    Title = "Fake Korblox",
    Value = getSetting("FakeKorblox", false),
    Callback = function(v)
        setSetting("FakeKorblox", v)
    end
})

SkinRight:CreateToggle({
    Title = "Hide V4 Effects",
    Value = getSetting("HideV4Effects", false),
    Callback = function(v)
        setSetting("HideV4Effects", v)
    end
})

SkinRight:CreateToggle({
    Title = "Hide Control Fruit Effects",
    Value = getSetting("HideControlEffects", false),
    Callback = function(v)
        setSetting("HideControlEffects", v)
    end
})

SkinRight:CreateButton({
    Title    = "Reapply Avatar",
    Callback = function()
        if _G.__CokeboysReapplyAvatar then _G.__CokeboysReapplyAvatar() end
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 8 — MISC
-- ═══════════════════════════════════════════════════════════════
local MiscTab = Window:CreateTab({ Title = "Misc", Icon = "settings" })

local MiscLeft  = MiscTab:CreateSection({ Title = "Performance", Side = "Left" })
local MiscRight = MiscTab:CreateSection({ Title = "Privacy",     Side = "Right" })

MiscLeft:CreateToggle({
    Title = "FPS Booster",
    Value = getSetting("FPSBooster", false),
    Callback = function(v)
        setSetting("FPSBooster", v)
        if _G.__CokeboysSetFPSBooster then _G.__CokeboysSetFPSBooster(v) end
    end
})

MiscLeft:CreateSlider({
    Title      = "FPS Limit",
    TextEnding = " fps",
    Min        = 0,
    Max        = 360,
    Value      = getSetting("FPSCap", 0),
    Callback   = function(v)
        setSetting("FPSCap", v)
        if setfpscap then pcall(setfpscap, v) end
    end
})

MiscLeft:CreateToggle({
    Title = "Auto Fast Mode",
    Value = getSetting("AutoFastMode", false),
    Callback = function(v)
        setSetting("AutoFastMode", v)
    end
})

MiscLeft:CreateToggle({
    Title = "No Fog",
    Value = getSetting("NoFog", false),
    Callback = function(v)
        setSetting("NoFog", v)
        if _G.__CokeboysSetNoFog then _G.__CokeboysSetNoFog(v) end
    end
})

MiscLeft:CreateToggle({
    Title = "No Background Music",
    Value = getSetting("NoMusic", false),
    Callback = function(v)
        setSetting("NoMusic", v)
        if _G.__CokeboysSetNoMusic then _G.__CokeboysSetNoMusic(v) end
    end
})

MiscLeft:CreateToggle({
    Title = "Safe Mode",
    Value = getSetting("SafeMode", false),
    Callback = function(v)
        setSetting("SafeMode", v)
    end
})

MiscLeft:CreateSlider({
    Title      = "Safe Mode HP Threshold",
    TextEnding = "",
    Min        = 1000,
    Max        = 10000,
    Value      = getSetting("SafeModeThreshold", 3000),
    Callback   = function(v)
        setSetting("SafeModeThreshold", v)
    end
})

MiscRight:CreateToggle({
    Title = "Streamer Mode",
    Value = getSetting("StreamerMode", false),
    Callback = function(v)
        setSetting("StreamerMode", v)
    end
})

MiscRight:CreateToggle({
    Title = "Remember Hidden UI",
    Value = getSetting("RememberHiddenUI", false),
    Callback = function(v)
        setSetting("RememberHiddenUI", v)
    end
})

MiscRight:CreateToggle({
    Title = "Disable Notifications",
    Value = getSetting("DisableNotifications", false),
    Callback = function(v)
        setSetting("DisableNotifications", v)
        getgenv().__CokeboysNotificationsDisabled = v
    end
})

MiscRight:CreateButton({
    Title    = "Reset UI Layout",
    Callback = function()
        if _G.__CokeboysResetLayout then _G.__CokeboysResetLayout() end
    end
})

MiscRight:CreateButton({
    Title    = "Unload Cokeboys",
    Callback = function()
        if _G.__CokeboysUnload then _G.__CokeboysUnload() end
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 9 — SETTINGS
-- ═══════════════════════════════════════════════════════════════
local SettingsTab = Window:CreateTab({ Title = "Settings", Icon = "sliders" })

local SettLeft  = SettingsTab:CreateSection({ Title = "Access & Config", Side = "Left" })
local SettRight = SettingsTab:CreateSection({ Title = "Keybinds",        Side = "Right" })

SettLeft:CreateTextBox({
    Title       = "Access Key",
    Placeholder = "Enter your Cokeboys key...",
    Value       = "",
    Callback    = function(v)
        if _G.__CokeboysValidateKey then _G.__CokeboysValidateKey(v) end
    end
})

SettLeft:CreateButton({
    Title    = "Validate Key",
    Callback = function()
        if _G.__CokeboysValidateKey then _G.__CokeboysValidateKey(nil) end
    end
})

SettLeft:CreateButton({
    Title    = "Reset Key",
    Callback = function()
        if _G.__CokeboysResetKey then _G.__CokeboysResetKey() end
    end
})

SettLeft:CreateDropdown({
    Title    = "Language",
    List     = {"English", "Español", "Français", "Português (Brasil)", "Bahasa Indonesia", "Filipino", "Tiếng Việt"},
    Multi    = false,
    Value    = "English",
    Callback = function(v)
        if _G.__CokeboysSetLanguagePreference then
            _G.__CokeboysSetLanguagePreference(v)
        end
    end
})

SettLeft:CreateSlider({
    Title      = "Menu Size",
    TextEnding = "%",
    Min        = 55,
    Max        = 115,
    Value      = math.floor((getSetting("GuiWindowScale", 1.15)) * 100 + 0.5),
    Callback   = function(v)
        setSetting("GuiWindowScale", v / 100)
    end
})

SettLeft:CreateSlider({
    Title      = "Background Visibility",
    TextEnding = "%",
    Min        = 0,
    Max        = 100,
    Value      = getSetting("UIBackgroundVisibility", 78),
    Callback   = function(v)
        setSetting("UIBackgroundVisibility", v)
    end
})

SettRight:CreateKeyBind({
    Title    = "Toggle UI",
    Value    = Enum.KeyCode.RightControl,
    Callback = function(v)
        setSetting("MenuKey", v)
    end
})

SettRight:CreateKeyBind({
    Title    = "Target Lock Key",
    Value    = Enum.KeyCode.E,
    Callback = function(v)
        setSetting("TargetLockKey", v)
    end
})

SettRight:CreateKeyBind({
    Title    = "Cycle Target Key",
    Value    = Enum.KeyCode.F,
    Callback = function(v)
        setSetting("CycleTargetKey", v)
    end
})

SettRight:CreateKeyBind({
    Title    = "Fast Attack Toggle",
    Value    = Enum.KeyCode.G,
    Callback = function(v)
        setSetting("FastAttackKey", v)
    end
})

SettRight:CreateButton({
    Title    = "Reset All Keybinds",
    Callback = function()
        if _G.__CokeboysResetKeybinds then _G.__CokeboysResetKeybinds() end
    end
})

SettRight:CreateButton({
    Title    = "Copy Config Code",
    Callback = function()
        if _G.__CokeboysCopyConfig then _G.__CokeboysCopyConfig() end
    end
})

SettRight:CreateButton({
    Title    = "Join Discord",
    Callback = function()
        if setclipboard then
            setclipboard("https://discord.gg/VfEn7Zywmd")
        end
    end
})

-- ═══════════════════════════════════════════════════════════════
--  TAB 10 — APPEARANCE
-- ═══════════════════════════════════════════════════════════════
local AppTab = Window:CreateTab({ Title = "Appearance", Icon = "image" })

local AppLeft  = AppTab:CreateSection({ Title = "Theme",   Side = "Left" })
local AppRight = AppTab:CreateSection({ Title = "World",   Side = "Right" })

AppLeft:CreateDropdown({
    Title    = "Menu Theme",
    List     = {"Gold", "Arcade", "Cartoon", "SciFi", "Fantasy", "Classic"},
    Multi    = false,
    Value    = getSetting("UITheme", "Gold"),
    Callback = function(v)
        setSetting("UITheme", v)
        if _G.__CokeboysSetTheme then _G.__CokeboysSetTheme(v) end
    end
})

AppLeft:CreateDropdown({
    Title    = "Font Style",
    List     = {"Gotham", "Ubuntu", "GothamBold"},
    Multi    = false,
    Value    = getSetting("FontStyle", "Gotham"),
    Callback = function(v)
        setSetting("FontStyle", v)
    end
})

AppLeft:CreateToggle({
    Title = "Custom Game Font",
    Value = getSetting("CustomGameFont", false),
    Callback = function(v)
        setSetting("CustomGameFont", v)
    end
})

AppLeft:CreateToggle({
    Title = "Wide View",
    Value = getSetting("WideView", false),
    Callback = function(v)
        setSetting("WideView", v)
    end
})

AppLeft:CreateToggle({
    Title = "Stretched Resolution",
    Value = getSetting("StretchedResolution", false),
    Callback = function(v)
        setSetting("StretchedResolution", v)
    end
})

AppRight:CreateDropdown({
    Title    = "Sky Style",
    List     = {"Default", "Classic", "Cartoon", "SciFi", "Fantasy", "No Fog"},
    Multi    = false,
    Value    = "Default",
    Callback = function(v)
        setSetting("SkyStyle", v)
        if _G.__CokeboysSetSky then _G.__CokeboysSetSky(v) end
    end
})

AppRight:CreateToggle({
    Title = "No Fog",
    Value = getSetting("NoFogWorld", false),
    Callback = function(v)
        setSetting("NoFogWorld", v)
    end
})

AppRight:CreateColorPicker({
    Title    = "UI Accent Color",
    Color    = Color3.fromRGB(255, 255, 255),
    Callback = function(r, g, b)
        setSetting("AccentColor", {r, g, b})
        if _G.__CokeboysSetAccentColor then _G.__CokeboysSetAccentColor(r, g, b) end
    end
})

-- ═══════════════════════════════════════════════════════════════
--  All done!
-- ═══════════════════════════════════════════════════════════════
-- The Sovereign Hub library handles the rest of the UI rendering.
-- All callbacks pipe into the Cokeboys _G / getgenv() API.
-- FFlags tab has been removed as requested.
