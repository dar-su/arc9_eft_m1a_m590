AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_snip")
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    -- [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    -- [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "Springfield M1A"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_marks")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Springfield Armory",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "7.62x51mm NATO",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_usa"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1971"
}

SWEP.Description = [[M1A is a civilian version of the M14 rifle designed and manufactured by Springfield Armory, Inc. For the most part, it is identical to the M14. The most notable difference is the removal of the M14s fire selector switch, rendering the rifle permanently semi-automatic. The bayonet lug was also removed from the weapon.]]

-- SWEP.StandardPresets = {
--     "[TAPCO]XQAAAQBfAgAAAAAAAAA9iIIiM7tuo1AtT00OeFD848hLIDpmPpZQ7ObPM0ND4gGF4RkLK7KpFHWLkW1OE8oG24kzAlVW7YWLXrqWnEHCLyj5+XX9NoYP22JAnX35NTDu6ulqThUgUH4hFpzBRYYJ3brxluHr2WQ0is2ALqu+dUMX7X33MRtKcE3DcpuMagXnsXFC2GXRKHtQZdAeQgxdXsYDEECMRS3FUIxLZxaBoC0a+WvPMyB6CVxOPVIViD9LdBTWcZ4CLT33LSumMuRdL7+kwpZY8TN5c/q7vTyf0gA=",
--     "[OP-SKS]XQAAAQDYAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD848hLIDpmPpZQ7ObPM0TTTsOkNoQAVPiediZjO7JmzNi1Dw5YKUDacFFObiVs93R983Uep8p08v5nIy/uARWQ+U5GxwgCt1zYxEzB5gdSx6jLxtNibzpIekzEAm1olrdUNiOVH0G0kboHivNH/TLwDE9+xSPWMXq7wnyzRkcBEQWrlIO992xEQLYAgq6PoTidutmoHGb7OsKL6ovWNNXZRJ9JmwA=",
--     "[UAS]XQAAAQBLAgAAAAAAAAA9iIIiM7tuo1AtT00OeFD848hLIDpmPpZQ7ObPM0ND4gGF4RkLK7KpFHWLkW1OE8oG22T+QndahBM633Aozt+LOtBdHy77rcyuuijah3efUpxb5uqkMtp+q82mfxFHZWfgOFs4+1ExNG+Yn7dDmMdOaK/xV3UJlqsCgdTG545XPtOxqimWYxCk5TRtB65XikJZRgbvMPZ5HtjzRggnaHreSJm1/QMWGaIQ/nBtN6/9aIfKhum7L6iW4X/v+IWDjOdv6RoJ04CW"
-- }

SWEP.Slot = 3
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m1a.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "0000000000000"

SWEP.BarrelLength = 50
------------------------- [[[           STATS            ]]] -------------------------

--          Damage

SWEP.DamageMax = 88
SWEP.DamageMin = 60
SWEP.PhysBulletMuzzleVelocity = 840 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      31 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   20/100

SWEP.DamageLookupTable = {
    {   10/0.0254, 
    88     },

    {   100 /0.0254, 
    84     },

    {   200 /0.0254, 
    80.2     },

    {   300 /0.0254, 
    76.6     },

    {   400 /0.0254, 
    73     },

    {   500 /0.0254, 
    69     },

    {   600 /0.0254, 
    65.5     },

    {   700 /0.0254, 
    63.4     },

    {   800 /0.0254, 
    62     },

    {   900 /0.0254, 
    60.8     },

    {   1000 /0.0254, 
    60     },
}




--          Spread
SWEP.Spread = 0.378 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 1.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 2   -- up recoil
SWEP.RecoilSide = 0.5 -- sideways recoil
SWEP.RecoilRandomUp   = 0.5 -- random up/down
SWEP.RecoilRandomSide = 0.4   -- random left/right

SWEP.RecoilAutoControl = 3.2 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.3   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.5   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.1   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = 0.05 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.75 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end
    
    if self:GetUBGL() then up = 4 end -- ubgl!

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10

--          Heating

SWEP.Overheat = true
SWEP.HeatCapacity = 90
SWEP.HeatDissipation = 6
SWEP.HeatLockout = false


SWEP.Malfunction = true 
SWEP.MalfunctionCycle = true 
SWEP.MalfunctionMeanShotsToFail = 200
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????

--          Firemodes

SWEP.RPM = 450
SWEP.Firemodes = { {Mode = 1 } }

-- SWEP.ManualAction = true
-- SWEP.ManualAction = true
-- SWEP.ManualActionNoLastCycle = true
-- SWEP.ManualActionEjectAnyway = false
SWEP.SuppressEmptySuffix = true 
-- SWEP.NoShellEject = true
-- SWEP.EjectDelay = 0.5

-- SWEP.ShotgunReload = true 
-- SWEP.ShotgunReloadIncludesChamber = false  
-- SWEP.ShotgunReloadNoChamber = true   

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"


--          Generic stats

SWEP.Ammo = "ar2"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineSounds = { }
SWEP.DropMagazineAmount = 0
SWEP.DropMagazineTime = 0.8
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, 40, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.41, -5, 0.89),
    Ang = Angle(0, 0.0, 0),
    ViewModelFOV = 54,
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

local IronSights2 = {
    Pos = Vector(-4.41, -5, 1),
    Ang = Angle(0, -0.35, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    if self:GetElements()["eft_m1a_muzzle_gas"] then
        return IronSights2
    end
end

SWEP.ActivePos = Vector(-0.7, -3.1, -.35)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, -10, -25)
SWEP.SprintPos = Vector(7, -2, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21, 33, 4)
SWEP.CustomizeSnapshotFOV = 90


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-5, 5, -4), -- rpg
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_m14"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x51.mdl"
SWEP.ShellScale = 1
SWEP.ShellVelocity = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
}

-- SWEP.HideBones = { -- please do it later
--     "vm_mag2",
--     "tag_mag2"
-- }

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "vm_mag",
--         "tag_mag"
--     },
--     [2] = {
--         "vm_mag2",
--         "tag_mag2"
--     }
-- }




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/m1a/"
-- local path = "weapons/darsu_eft/ak/"

SWEP.ShootSound = path .. "m1a_fire_close1.ogg"
SWEP.ShootSoundIndoor = path .. "m1a_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "m1a_fire_distant1.ogg"
SWEP.DistantShootSoundIndoor = path .. "m1a_fire_indoor_distant.ogg"

SWEP.ShootSoundSilenced = path .. "m1a_fire_silenced_close1.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "m1a_fire_silenced_indoor_close1.ogg"
SWEP.DistantShootSoundSilenced = path .. "m1a_fire_silenced_distant1.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "m1a_fire_silenced_indoor_distant1.ogg"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut
------------------------- [[[           Hooks & functions            ]]] -------------------------


------------------------- [[[           Animations            ]]] -------------------------

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""
    local mag = ""
    local nomag = false 

    if elements["eft_m1a_mag_20"] then mag = "_0"
    elseif elements["eft_m1a_mag_30"] then mag = "_1"
    elseif elements["eft_m1a_mag_50"] then mag = "_2"
    elseif elements["eft_m1a_mag_10"] then mag = "_3"
    else nomag = true end
    
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" then
        if empty then anim = "inspect_empty" end

        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        
        if rand == 2 and ARC9EFTBASE and SERVER then
            net.Start("arc9eftmagcheck")
            net.WriteBool(false) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
            rand = rand .. mag
        end

        return anim .. rand
    end
    
    if anim == "reload" or anim == "reload_empty" then
        if nomag then return "reload_single" end
        if empty then return "reload_empty" .. mag end
        return anim .. mag
    end

    if anim == "fix" then
        local rand = math.Truncate(util.SharedRandom("hi", 0, 4.99))

        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt 
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.25, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end
        
        return "jam" .. rand
    end
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_chamber = {
    { s = randspin, t = 0.05 },
    { s = "arc9_eft_shared/weap_bolt_handle_out.ogg", t = 0.43},
    { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 1.16},
    -- { s = path .. "m1a_slider_up.ogg", t = 0.43 },
    -- { s = path .. "m1a_slider_down.ogg", t = 1.16},
    { s = randspin, t = 1.67 },
}

local rst_magcheck = {
    { s = randspin, t = 0.02 },
    { s = path .. "m1a_magrelease_button.ogg", t = 0.48 },
    { s = path .. "m1a_mag_out.ogg", t = 0.6 },
    { s = randspin, t = 0.73 },
    { s = path .. "m1a_mag_in.ogg", t = 2.25 },
    { s = randspin, t = 2.65 },
}
local rst_chamberempty = {
    { s = randspin, t = 0.06 },
    { s = randspin, t = 0.76 },
}

local rst_look = {
    { s = randspin, t = 0.2 },
    { s = randspin, t = 1.23 },
    { s = randspin, t = 2.53 },
}

local rik_mag = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.15, lhik = 0, rhik = 1 },
    { t = 0.87, lhik = 0, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
} 
local alwayslhik = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
} 
local neverlhik = {
    { t = 0, lhik = 0, rhik = 0 },
    { t = 1, lhik = 0, rhik = 0 },
} 

SWEP.EnterBipodSound = false 
SWEP.ExitBipodSound = false
SWEP.BipodPos = Vector(-1.7, -3.5, 1)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.Animations = {
    ["idle"] = { 
        Source = "idle",
        IKTimeLine = alwayslhik,
        -- Time = 1000 -- RMOVE LATER!!!!!!!!!!!!!!!!!
    },

    ["ready"] = {
        -- Source = {"ready0", "ready1", "ready2"},
        Source = {"ready0", "ready1"},
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            { s = path .. "m1a_slider_up.ogg", t = 0.66 },
            { s = path .. "m1a_slider_down.ogg", t = 0.87 },
            { s = randspin, t = 1.37 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.01, lhik = 1, rhik = 0 },
            { t = 0.6, lhik = 1, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },

    ["draw"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0 } },
    IKTimeLine = {
        { t = 0, lhik = 0, rhik = 1 },
        { t = 0.42, lhik = 0, rhik = 1 },
        { t = 0.66, lhik = 1, rhik = 1 },
        { t = 1, lhik = 1, rhik = 1 },
    } },
    ["draw_empty"] = { Source = "draw_empty", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0 } },
    IKTimeLine = {
        { t = 0, lhik = 0, rhik = 1 },
        { t = 0.42, lhik = 0, rhik = 1 },
        { t = 0.66, lhik = 1, rhik = 1 },
        { t = 1, lhik = 1, rhik = 1 },
    } },
    ["holster"] = { Source = "holster", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0 } },
    IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1 },
        { t = 0.1, lhik = 1, rhik = 1 },
        { t = 0.45, lhik = 0, rhik = 1 },
        { t = 1, lhik = 0, rhik = 1 },
    } },
    ["holster_empty"] = { Source = "holster_empty", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0 } },
    IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1 },
        { t = 0.1, lhik = 1, rhik = 1 },
        { t = 0.45, lhik = 0, rhik = 1 },
        { t = 1, lhik = 0, rhik = 1 },
    } },


    ["fire"] = { Source = "fire", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_empty.ogg", t = 0 } }, IKTimeLine = alwayslhik },
    ["fire_empty"] = { Source = "fire_empty", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_empty.ogg", t = 0 } }, IKTimeLine = alwayslhik },
    ["fire_dry"] = { Source = "fire_dry", EventTable = { { s = "arc9_eft_shared/weap_trigger_empty.ogg", t = 0 } }, IKTimeLine = alwayslhik },
    ["fire_dry_empty"] = { Source = "fire_dry_empty", EventTable = { { s = "arc9_eft_shared/weap_trigger_empty.ogg", t = 0 } }, IKTimeLine = alwayslhik },

    ["reload"] = {
        Source = "reload0",
        MinProgress = 0.9,
        FireASAP = true,
        MagSwapTime = 1.35,
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.48 },
            { s = path .. "m1a_mag_out.ogg", t = 0.62 },
            { s = randspin, t = 0.95 },
            { s = pouchin, t = 1.22 },
            { s = pouchout, t = 1.51 },
            { s = path .. "m1a_mag_in.ogg", t = 2.07-0.1 },
            { s = randspin, t = 2.36 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.15, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_1"] = {
        Source = "reload1",
        MinProgress = 0.9,
        FireASAP = true,
        MagSwapTime = 1.35,
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.48 },
            { s = path .. "m1a_mag_out.ogg", t = 0.62 },
            { s = randspin, t = 0.95 },
            { s = pouchin, t = 1.22 },
            { s = pouchout, t = 1.51+0.15 },
            { s = path .. "m1a_mag_in.ogg", t = 2.07+0.15-0.1 },
            { s = randspin, t = 2.36+0.15 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.15, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_2"] = {
        Source = "reload2",
        MinProgress = 0.9,
        FireASAP = true,
        MagSwapTime = 1.35,
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.48 },
            { s = path .. "m1a_mag_out.ogg", t = 0.62 },
            { s = randspin, t = 0.95 },
            { s = pouchin, t = 1.22 },
            { s = pouchout, t = 1.51+0.27 },
            { s = path .. "m1a_mag_in.ogg", t = 2.07+0.27-0.1 },
            { s = randspin, t = 2.36+0.27 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.15, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_3"] = {
        Source = "reload3",
        MinProgress = 0.9,
        FireASAP = true,
        MagSwapTime = 1.35,
        EventTable = {
            { s = randspin, t = 0.02 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.48 },
            { s = path .. "m1a_mag_out.ogg", t = 0.62 },
            { s = randspin, t = 0.95 },
            { s = pouchin, t = 1.22 },
            { s = pouchout, t = 1.48 },
            { s = path .. "m1a_mag_in.ogg", t = 1.97-0.1 },
            { s = randspin, t = 2.43 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.15, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty0",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.4 },
            { s = path .. "m1a_mag_out.ogg", t = 0.45 },
            { s = randspin, t = 0.5 },
            { s = pouchout, t = 0.86 },
            { s = path .. "m1a_mag_in.ogg", t = 1.56-0.1 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.37 },
            { s = path .. "m1a_slider_down.ogg", t = 2.61 },
            { s = randspin, t = 2.8 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.8},
            {hide = 0, t = 1.1}
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.13, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 0, rhik = 1 },
            { t = 0.92, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_empty_1"] = {
        Source = "reload_empty1",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.4 },
            { s = path .. "m1a_mag_out.ogg", t = 0.45 },
            { s = randspin, t = 0.5 },
            { s = pouchout, t = 0.86+0.1 },
            { s = path .. "m1a_mag_in.ogg", t = 1.56+0.1-0.1 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.61 },
            { s = path .. "m1a_slider_down.ogg", t = 2.8 },
            { s = randspin, t = 3.2 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.8},
            {hide = 0, t = 1.1}
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.13, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 0, rhik = 1 },
            { t = 0.92, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_empty_2"] = {
        Source = "reload_empty2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.4 },
            { s = path .. "m1a_mag_out.ogg", t = 0.45 },
            { s = randspin, t = 0.5 },
            { s = pouchout, t = 0.86+0.1 },
            { s = path .. "m1a_mag_in.ogg", t = 1.83-0.1 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.75 },
            { s = path .. "m1a_slider_down.ogg", t = 2.99 },
            { s = randspin, t = 3.36 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.8},
            {hide = 0, t = 1.1}
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.13, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 0, rhik = 1 },
            { t = 0.92, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["reload_empty_3"] = {
        Source = "reload_empty3",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.4 },
            { s = path .. "m1a_mag_out.ogg", t = 0.45 },
            { s = randspin, t = 0.5 },
            { s = pouchout, t = 0.86+0.1 },
            { s = path .. "m1a_mag_in.ogg", t = 1.5-0.1 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.25 },
            { s = path .. "m1a_slider_down.ogg", t = 2.5 },
            { s = randspin, t = 2.85 },
            {hide = 0, t = 0},
            {hide = 1, t = 0.8},
            {hide = 0, t = 1.1}
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.13, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 0, rhik = 1 },
            { t = 0.92, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },


    
    ["reload_single"] = {
        Source = "reload_single",
        EventTable = {
            { s = randspin, t = 0.1 },   
            { s = path .. "m1a_slider_up.ogg", t = 0.53 },
            { s = path .. "m1a_magrelease_button.ogg", t = 0.76 },
            { s = randspin, t = 0.89 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2.49 - 1.5 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 2.11 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.97 },
            { s = path .. "m1a_slider_down.ogg", t = 3.19 },
            { s = randspin, t = 3.64 },   
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.08, lhik = 1, rhik = 0 },
            { t = 0.82, lhik = 1, rhik = 0 },
            { t = 0.92, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },


    ["inspect1"] = {
        Source = "look",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = alwayslhik
    },    
    ["inspect1_empty"] = {
        Source = "look_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = alwayslhik
    },


    ["inspect2_0"] = {
        Source = "check_0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_1"] = {
        Source = "check_0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_2"] = {
        Source = "check_2",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_3"] = {
        Source = "check_3",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_0"] = {
        Source = "check_0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_1"] = {
        Source = "check_0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_2"] = {
        Source = "check_2_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_3"] = {
        Source = "check_3_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },



    ["inspect0"] = {
        Source = "check_chamber",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_chamber,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.15, lhik = 1, rhik = 0 },
            { t = 0.77, lhik = 1, rhik = 0 },
            { t = 0.91, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },
    ["inspect0_empty"] = {
        Source = "check_chamber_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_chamberempty,
        IKTimeLine = alwayslhik
    },

    ["toggle"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }, IKTimeLine = alwayslhik },
    ["toggle_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }, IKTimeLine = alwayslhik },
    ["switchsights"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }, IKTimeLine = alwayslhik },
    ["switchsights_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }, IKTimeLine = alwayslhik },


    ["jam1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.82 },
            { s = randspin, t = 1.21 },

            { s = path .. "generic_jam_shell_ remove_medium2.ogg", t = 1.9 },
            { s = path .. "ak_jam_shell_remove.ogg", t = 2.28 },
            { s = randspin, t = 2.6 },
            { s = ARC9EFT.Shells556, t = 3.0 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 0.46, lhik = 1, rhik = 0 },
            { t = 0.78, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },
    ["jam2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.82 },
            { s = randspin, t = 1.21 },

            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.73 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.23 },
            { s = randspin, t = 2.74 },
            { s = path .. "generic_jam_shell_ remove_medium2.ogg", t = 2.92 },
            { s = randspin, t = 3.3 },
            { s = path .. "generic_jam_shell_ remove_medium1.ogg", t = 3.34 },
            { s = randspin, t = 3.69 },
            { s = path .. "m1a_slider_down.ogg", t = 3.99 },
            { s = randspin, t = 4.27 },
            { s = ARC9EFT.Shells556, t = 3.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.23, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 0 },
            { t = 0.92, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
        -- EjectAt = 6.5,
    },
    ["jam3"] = {
        Source = "jam_hardjam", -- jam hard
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.82 },
            { s = randspin, t = 1.21 },
            
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.89 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 2.44 },
            { s = randspin, t = 2.88 },
            { s = path .. "ak_jam_stuckbolt_out_hit1.ogg", t = 3.23 },
            { s = path .. "ak_jam_stuckbolt_out_hit1.ogg", t = 3.75 },
            { s = path .. "m1a_slider_up.ogg", t = 4.49 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 4.63 },
            { s = path .. "m1a_slider_down.ogg", t = 4.81 },
            { s = randspin, t = 5.11 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 1, rhik = 1 },
            { t = 0.28, lhik = 1, rhik = 0 },
            { t = 0.89, lhik = 1, rhik = 0 },
            { t = 0.94, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EjectAt = 4.63
    },
    ["jam4"] = {
        Source = "jam_softjam", -- jam soft
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = randspin, t = 0.82 },
            { s = randspin, t = 1.21 },

            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.86 },
            { s = path .. "m1a_slider_up.ogg", t = 2.49 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.69 },
            { s = path .. "m1a_slider_down.ogg", t = 2.92 },
            { s = randspin, t = 3.26 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.32, lhik = 1, rhik = 1 },
            { t = 0.41, lhik = 1, rhik = 0 },
            { t = 0.84, lhik = 1, rhik = 0 },
            { t = 0.93, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EjectAt = 2.69
    },
    ["enter_bipod"] = {
        Source = "action",
        EventTable = {
            { s = { "weapons/darsu_eft/bipod/bipod_atlas_unfold_1.ogg", "weapons/darsu_eft/bipod/bipod_atlas_unfold_2.ogg", "weapons/darsu_eft/bipod/bipod_atlas_unfold_3.ogg" }, t = 0.0 },
            { s = { "weapons/darsu_eft/bipod/bipod_stand_on_1.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_2.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_3.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_4.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_5.ogg" }, t = 0.2 },
        }
    },
    ["enter_bipod_empty"] = {
        Source = "action_empty",
        EventTable = {
            { s = { "weapons/darsu_eft/bipod/bipod_atlas_unfold_1.ogg", "weapons/darsu_eft/bipod/bipod_atlas_unfold_2.ogg", "weapons/darsu_eft/bipod/bipod_atlas_unfold_3.ogg" }, t = 0.0 },
            { s = { "weapons/darsu_eft/bipod/bipod_stand_on_1.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_2.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_3.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_4.ogg", "weapons/darsu_eft/bipod/bipod_stand_on_5.ogg" }, t = 0.2 },
        }
    },
    ["exit_bipod"] = {
        Source = "action",
        EventTable = {
            { s = { "weapons/darsu_eft/bipod/bipod_atlas_fold_1.ogg", "weapons/darsu_eft/bipod/bipod_atlas_fold_2.ogg", "weapons/darsu_eft/bipod/bipod_atlas_fold_3.ogg" }, t = 0.0 },
        }
    },
    ["exit_bipod_empty"] = {
        Source = "action_empty",
        EventTable = {
            { s = { "weapons/darsu_eft/bipod/bipod_atlas_fold_1.ogg", "weapons/darsu_eft/bipod/bipod_atlas_fold_2.ogg", "weapons/darsu_eft/bipod/bipod_atlas_fold_3.ogg" }, t = 0.0 },
        }
    },
}


------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_m1a_barrel_22"] = { Bodygroups = { {1, 2} } },
    ["eft_m1a_barrel_16"] = { Bodygroups = { {1, 1} } },

    ["eft_m1a_stock_std"] = { Bodygroups = { {4, 1} } },
    ["eft_m1a_stock_arch"] = { Bodygroups = { {4, 2} } },
    ["eft_m1a_stock_sass"] = { Bodygroups = { {4, 4} } },
    ["eft_m1a_stock_sage"] = { Bodygroups = { {4, 3} } },

    ["eft_m1a_upper_std"] = { Bodygroups = { {3, 1} } },
    ["eft_m1a_upper_m8"] = { Bodygroups = { {3, 3} } },
    ["eft_m1a_upper_amega"] = { Bodygroups = { {3, 2} } },
    ["eft_m1a_upper_vltor"] = { Bodygroups = { {3, 4} } },

    ["eft_m1a_side_arms"] = { Bodygroups = { {2, 1} } },
    ["eft_m1a_side_deluxe"] = { Bodygroups = { {2, 2} } },
    ["eft_m1a_side_dcsb"] = { Bodygroups = { {2, 3} } },

    ["eft_m1a_rearsight"] = { Bodygroups = { {7, 1} } },

    ["eft_m1a_stock_sage_stock"] = { Bodygroups = { {6, 1} } },
    ["eft_m1a_pgrip_sage"] = { Bodygroups = { {5, 1} } },
    ["eft_m1a_mag_50"] = { Bodygroups = { {8, 1} } },
}


SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_m1a_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_m1a_barrel_16",
        SubAttachments = {
            {
                Installed = "eft_m1a_muzzle_brakecomp",
                SubAttachments = {
                    {
                        Installed = "eft_m1a_fs_xs",
                    },
                }
            },
        },
    },
    {
        PrintName = "Stock",
        Category = "eft_m1a_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_m1a_stock_std",
        SubAttachments = {
            {
                Installed = "eft_m1a_upper_std",
            },
        },
    },
    {
        PrintName = "Rear sight",
        Category = "eft_m1a_rs",
        Bone = "mod_sight_rear",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_m1a_rearsight",
    },
    {
        PrintName = "Magazine",
        Category = "eft_m1a_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-3, 0, -1),
        Installed = "eft_m1a_mag_10",
    },
    { 
        PrintName = "Side mount", 
        Category = "eft_m1a_side",
        Bone = "mod_mount",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0.5, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_762x51",
        Integral = true,
        Installed = "eft_ammo_762x51_bpzfmj",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 1, -3),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_m1a"},
        Bone = "weapon",
        Pos = Vector(0, 8, -5),
        Ang = Angle(0, -90, 0),
    },
}

SWEP.EFTErgo = 28
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells556