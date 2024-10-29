AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_sg")
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    -- [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    -- [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "Mossberg 590A1"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pumpsg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "O.F. Mossberg & Sons",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "12 Gauge",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= "Pump",
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_usa"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1961"
}

SWEP.Description = [[The Mossberg 500 Series is one of the most famous and widespread pump-action shotguns in the world. Protects your front lawn since 1961.]]

SWEP.StandardPresets = {
    -- "[Breacher]XQAAAQDxAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD3QBNat72mxqHsDzw/jsqi/g9xXSLCVEdEzuopZ1zAPATGjsZRwSNXip83BQY15AotCVygnxfiOccvPHrBNHaPomIGjPl5NHBMW3QN5tCHUomIqSwPI6pPbIdSLJiOMe2LDAO2H7RtyXHKuM/GusyFnzGVSWlpAKWawhHTtV738WrQWbrlXAvT1W+5rZpr90erkGKIJUNGy6fsyYqeTfL5+mVXN8H8LGFqj1orFkUbiBFF+IVD8UGabF1R808HAA==",
    -- "[Hammer]XQAAAQCKAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD3QBNat72mxqHsDzw/jsqi/g9xXSLCVEdEzuopZ1zAPATGjsZRwSNXip83TnhqbVGJ66+9xH9vxxTIpVcBbYR+kE3A3phx1MQA/HlFSHqcz6148Y4Yjo2wGw4JBcEEJeWqH3bw2LfcZzAeeqMdi7YWO5ttag7OeP//hAssBNa8kg4frZ4heRjKKoM7mrIwD+V/A286CpUA"
}

SWEP.Slot = 3
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m590.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000000"

SWEP.BarrelLength = 30
------------------------- [[[           STATS            ]]] -------------------------

--          Damage

-- default
SWEP.DamageMax = 192 * 1
SWEP.DamageMin = 143.8 * 1
SWEP.PhysBulletMuzzleVelocity = 420 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 10 /0.0254

SWEP.Penetration =      39 *2.54/100/0.0254
SWEP.PenetrationDelta = 75/100
SWEP.ArmorPiercing =    75/100
SWEP.RicochetChance =   40/100

SWEP.Num = 1


--          Spread
SWEP.Spread = 15.47 * ARC9.MOAToAcc
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.005
SWEP.DispersionSpreadAddHipFire = 0.02
SWEP.DispersionSpreadMultMove = 1.5
SWEP.DispersionSpreadAddMove = 0.015

--          Recoil
-- touch these

SWEP.Recoil = 1.2 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.5 -- random up/down
SWEP.RecoilRandomSide = 1   -- random left/right

SWEP.RecoilAutoControl = 3.2 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 2 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 3   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 3   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.04   --   when fullautoing
SWEP.VisualRecoilRoll = 5 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = 0.05 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 12, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.85 -- camera roll each shot + makes camera go more up when fullautoing

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
        if self:GetSightAmount() < 0.2 then up = 4 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10


--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionCycle = true  
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 150
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.MalfunctionWait = -1 -- oh god why the fuck 0 is 0.5???????
SWEP.Overheat = true
SWEP.HeatCapacity = 30
SWEP.HeatDissipation = 0.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 999

SWEP.SuppressEmptySuffix = false 
SWEP.NoFiremodeWhenEmpty = true 

SWEP.Firemodes = {
    { Mode = 1, PrintName = "Pump-action" },
}

SWEP.SlamFire = true
SWEP.SuppressEmptySuffix = true
SWEP.ManualAction = true
SWEP.NoShellEject = true
SWEP.EjectDelay = 0.15
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

SWEP.Ammo = "Buckshot"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 0
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.27, -6, 0.41),
    -- Pos = Vector(-4.27, -6, 1),
    -- Ang = Angle(0, 1.2, 0),
    Ang = Angle(0, 0.45, 0),
    -- Ang = Angle(0, 0.0, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.5, -3.2, -0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, -10, -25)
SWEP.SprintPos = Vector(7, -2, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20.5, 30, 4)
SWEP.CustomizeSnapshotFOV = 100


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

-- SWEP.TPIKParentToSpine4 = true
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5.5, -3.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-9, 5, 0), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),

    
    -- TPIKPos = Vector(6, -2, -3), -- TPIKParentToSpine4 pos ang
    -- TPIKAng = Angle(35, 55, 90), -- sadly, fucks up vm offsets like sprint
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.1


SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleParticle = "muzzleflash_M3"
SWEP.AfterShotParticle = "barrel_smoke"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/patron_12x70_shell.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-- SWEP.BulletBones = {
--     [1] = "bullet001",
--     [2] = "bullet002",
--     [3] = "bullet003",
--     [4] = "bullet004",
--     [5] = "bullet005",
-- }




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/m590/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = path .. "moss500_fire_close1.ogg"
SWEP.ShootSoundIndoor = path .. "moss500_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "moss500_fire_distant1.ogg"
SWEP.DistantShootSoundIndoor = path .. "moss500_fire_indoor_distant.ogg"

SWEP.ShootSoundSilenced = "weapons/darsu_eft/m870/mr133_fire_silenced_close.ogg" -- blehh no 870 and590 silenced sounds  btw this one cant have sil
SWEP.ShootSoundSilencedIndoor = "weapons/darsu_eft/m870/mr133_fire_silenced_indoor_close.ogg"
SWEP.DistantShootSoundSilenced = "weapons/darsu_eft/m870/mr133_fire_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = "weapons/darsu_eft/m870/mr133_fire_silenced_indoor_distant.ogg"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut



------------------------- [[[           Hooks & functions            ]]] -------------------------


------------------------- [[[           Animations            ]]] -------------------------

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "mod_magazine",
--         "bullet1",
--         "bullet2",
--         "bullet3",
--         "bullet4",
--     },
-- }

SWEP.ShotgunReload = true
-- SWEP.ShellVelocity = 0
SWEP.ManualActionNoLastCycle = false
SWEP.ManualActionEjectAnyway = false

-- local infitieammoconvar = GetConVar("arc9_infinite_ammo")

SWEP.Hook_TranslateAnimation = function(swep, anim)
    -- local elements = swep:GetElements()
    
    if !IsValid(swep:GetOwner()) then return end

    local clip = swep:Clip1()
    local empty = clip == 0
    local maxclip = swep:GetMaxClip1()+1
    
    if anim == "inspect" then        
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end

        if rand == 0 then anim = (empty and "checkchamber_empty" or "checkchamber") end

        if rand == 2 then
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(clip , maxclip), 9)
                net.WriteUInt(maxclip, 9)
                net.Send(swep:GetOwner())
            end
            anim = (clip < 2 and "magcheck_empty" or "magcheck")
        elseif rand == 1 then
            anim = "look"
        end
        
        return anim
    end
    
    if anim == "reload_start" then
        if empty then
            swep.startedinpouch = true
            return "reload_start_empty"
        end

        return "reload_start2"
    elseif anim == "reload_insert" then
        if swep.startedinpouch then
            swep.startedinpouch = nil 
            return "reload_loop"
        end

        return "reload_loop2"
    elseif anim == "reload_finish" then
        if swep.startedinpouch then
            swep.startedinpouch = nil 
            return "reload_end"
        end

        return "reload_end2"
    elseif anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.5, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end

        return "jam_" .. rand
    end

    return anim
end


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
local switchi = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }
local shell_in = {path .. "mr133_shell_in_mag2.ogg", path .. "mr133_shell_in_mag3.ogg"}


local look = {
    { s = randspin, t = 0.04 },
    { s = randspin, t = 1.04 },
    { s = randspin, t = 2.1 },
}
local magcheck = {
    { s = randspin, t = 0.1 },
    { s = randspin, t = 0.89 },
}
local checkchamber = {
    { s = randspin, t = 0.05 },
    { s = path .. "moss500_pump_in.ogg", t = 0.28 },
    { s = path .. "moss500_pump_out.ogg", t = 0.77 },
    { s = randspin, t = 0.95 },
}

SWEP.Animations = {
    ["idle"] = { Source = "idle",
    IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1 },
        { t = 1, lhik = 1, rhik = 1 },
    } },

    ["ready"] = { Source = {"ready0", "ready1", "ready2"}, EventTable = {
        { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
        { s = path .. "moss500_pump_in.ogg", t = 0.4 },
        { s = path .. "moss500_pump_out.ogg", t = 0.56 },
        { s = randspin, t = 0.8 },
    } },

    ["draw"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0 } } },
    ["holster"] = { Source = "holster", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0 } } },

    ["fire"] = { Source = "fire_sa", EventTable = { { s = path .. "mr133_trigger.ogg", t = 0 } }, NoIdle = true },

    ["dryfire"] = { Source = "dryfire", EventTable = { { s = path .. "mr133_trigger.ogg", t = 0 } } },

    ["cycle"] = { Source = {"pump0", "pump1", "pump2"}, EventTable = {
        -- { s = randspin, t = 0.0 },
        { s = path .. "moss500_pump_in.ogg", t = 0.0 },
        { s = path .. "pump_jam_extract.ogg", t = 0.05 },
        { s = path .. "moss500_pump_out.ogg", t = 0.17 },
        { s = randspin, t = 0.29 },
    } },

    ["look"] = { Source = "look", MinProgress = 0.95, FireASAP = true, EventTable = look,
    IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1 },
        { t = 0.2, lhik = 0, rhik = 1 },
        { t = 0.8, lhik = 0, rhik = 1 },
        { t = 1, lhik = 1, rhik = 1 },
    }, },
    ["look_empty"] = { Source = "look_empty", MinProgress = 0.95, FireASAP = true, EventTable = look },

    ["magcheck"] = { Source = "magcheck", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["magcheck_empty"] = { Source = "magcheck_empty", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },

    ["checkchamber"] = { Source = "checkchamber", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber },
    ["checkchamber_empty"] = { Source = "checkchamber_empty", MinProgress = 0.95, FireASAP = true, EventTable = checkchamber },

    ["toggle"] = {        Source = "mod_switch", EventTable = switchi },
    ["switchsights"] = {  Source = "mod_switch", EventTable = switchi },

    
    ["reload_start_empty"] = { Source = "reload_start_empty0", RestoreAmmo = 1, EventTable = { 
        { s = path .. "moss500_pump_in.ogg", t = 0 },
        { s = randspin, t = 0.2 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.3 },
        { s = path .. "mr133_shell_in_port.ogg", t = 0.79 },
        -- { s = randspin, t = 1.16 },
        { s = path .. "moss500_pump_out.ogg", t = 1.2 },
        { s = randspin, t = 1.35 },
    },
    IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1 },
        { t = 0.05, lhik = 1, rhik = 1 },
        { t = 0.16, lhik = 0, rhik = 1 },
        { t = 0.55, lhik = 0, rhik = 1 },
        { t = 0.69, lhik = 1, rhik = 1 },
        { t = 0.74, lhik = 1, rhik = 1 },
        { t = 0.87, lhik = 0, rhik = 1 },
        { t = 1, lhik = 0, rhik = 1 },
    }},

    ["reload_start2"] = { Source = "reload_start2", RestoreAmmo = 1, EventTable = {
        { s = randspin, t = 0.03 },
        { s = path .. "mr133_shell_pickup.ogg", t = 0.33 },
        { s = randspin, t = 0.62 },
        -- { s = path .. "mr133_magcover.ogg", t = 0.88 },
        { s = shell_in, t = 1.0 },
    },
    IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1 },
        { t = 0.25, lhik = 0, rhik = 1 },
        { t = 1, lhik = 0, rhik = 1 },
    }},
    ["reload_loop"] = { Source = "reload_loop", EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.18 },
        { s = randspin, t = 0.22 },
        -- { s = path .. "mr133_magcover.ogg", t = 0.49 },
        { s = shell_in, t = 0.59 },
    },
    IKTimeLine = {
        { t = 0, lhik = 0, rhik = 1 },
        { t = 1, lhik = 0, rhik = 1 },
    },
    Mult = 0.85},
    ["reload_loop2"] = { Source = "reload_loop2", EventTable = {
        { s = path .. "mr133_shell_pickup.ogg", t = 0.31 },
        { s = randspin, t = 0.41 },
        -- { s = path .. "mr133_magcover.ogg", t = 0.73 },
        { s = shell_in, t = 0.7 },
    },
    IKTimeLine = {
        { t = 0, lhik = 0, rhik = 1 },
        { t = 1, lhik = 0, rhik = 1 },
    },
    Mult = 0.85},
    ["reload_end"] = { Source = "reload_end", EventTable = {
        { s = randspin, t = 0.24 },
    },
    IKTimeLine = {
        { t = 0, lhik = 0, rhik = 1 },
        { t = 0.5, lhik = 0, rhik = 1 },
        { t = 1, lhik = 1, rhik = 1 },
    }},
    ["reload_end2"] = { Source = "reload_end2", EventTable = {
        { s = randspin, t = 0.15 },
    },
    IKTimeLine = {
        { t = 0, lhik = 0, rhik = 1 },
        { t = 1, lhik = 1, rhik = 1 },
    }},

    
    ["jam_1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = path .. "moss500_pump_in.ogg", t = 0 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 0.19 },
            { s = randspin, t = 0.59 },
            { s = randspin, t = 1.12 },
            { s = randspin, t = 1.54 },
            { s = path .. "pump_jam_slidelock_try3.ogg", t = 1.8 },
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 2.04 },
            { s = path .. "pump_jam_shell_out2.ogg", t = 2.05 },
            { s = randspin, t = 2.28 },
            { s = path .. "moss500_pump_out.ogg", t = 2.73 },
            { s = randspin, t = 2.96 },
            { s =  ARC9EFT.Shells12cal, t = 3.1 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },
    ["jam_2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = path .. "moss500_pump_in.ogg", t = 0 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 0.19 },
            { s = randspin, t = 0.75 },
            { s = randspin, t = 1.26 },
            { s = randspin, t = 1.61 },
            { s = path .. "pump_jam_slidelock_try3.ogg", t = 2.05 },
            { s = path .. "longweapon_jam_rattle5.ogg", t = 2.51 },
            { s = path .. "longweapon_jam_rattle4.ogg", t = 3.04 },
            { s = path .. "pump_jam_shell_out1.ogg", t = 3.09 },
            { s = randspin, t = 3.41 },
            { s = path .. "moss500_pump_out.ogg", t = 3.8 },
            { s = randspin, t = 4.09 },
            { s =  ARC9EFT.Shells12cal, t = 4.1 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },
    ["jam_3"] = {
        Source = "jam_hardslide", -- jam hard
        EventTable = {
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 0 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.21 },
            { s = randspin, t = 1.79 },
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 2.16 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 2.47 },
            { s = path .. "longweapon_jam_rattle2.ogg", t = 2.68 },
            { s = path .. "pump_jam_slidelock_try3.ogg", t = 3.13 },
            { s = randspin, t = 3.9 },
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 4.3 },
            { s = path .. "moss500_pump_out.ogg", t = 4.58 },
            { s = path .. "pump_jam_extract.ogg", t = 4.64 },
            { s = randspin, t = 4.87 },
            { s = path .. "moss500_pump_in.ogg", t = 5.25 },
            { s = randspin, t = 5.46 },
        },
        EjectAt = 4.64,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },
    ["jam_4"] = {
        Source = "jam_softslide", -- jam soft
        EventTable = {
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 0 },
            { s = randspin, t = 0.7 },
            { s = randspin, t = 1.21 },
            { s = randspin, t = 1.75 },
            { s = path .. "pump_jam_slidelock_try4.ogg", t = 2.21 },
            { s = path .. "pump_jam_slidelock_try2.ogg", t = 2.5 },
            { s = randspin, t = 2.84 },
            { s = path .. "moss500_pump_out.ogg", t = 3.18 },
            { s = path .. "pump_jam_extract.ogg", t = 3.25 },
            { s = path .. "moss500_pump_in.ogg", t = 3.48 },
            { s = randspin, t = 3.7 },
        },
        EjectAt = 3.25,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        }
    },

}

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasMag") or 
        !self:GetValue("HasGrip") or
        !self:GetValue("HasHG") or
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
    if  !self:GetValue("HasMag") or 
        !self:GetValue("HasGrip") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_m590_barrel_508"] = { Bodygroups = { {1, 1} } },

    ["eft_m590_hg_speed"] = { Bodygroups = { {2, 1} } },
    ["eft_m590_hg_moe"] = { Bodygroups = { {2, 2} } },

    ["eft_m590_stock_sga"] = { Bodygroups = { {3, 2} } },
    ["eft_m590_stock_std"] = { Bodygroups = { {3, 1} } },
    ["eft_m590_stock_leo"] = { Bodygroups = { {3, 3} } },

    ["eft_m590_mag_8"] = { Bodygroups = { {4, 1} } },
    
    ["eft_m590_rs_ghost"] = { Bodygroups = { {5, 1} } },
    ["eft_m590_fs_ghost"] = { Bodygroups = { {6, 1} } },
    ["eft_m590_mount_tac"] = { Bodygroups = { {5, 2} } },

    ["eft_ammo_12x70_std"] = { Bodygroups = { {7, 1} } },
    ["eft_ammo_12x70_dual_sabot"] = { Bodygroups = { {7, 2} } },
    ["eft_ammo_12x70_flechette"] = { Bodygroups = { {7, 3} } },
    ["eft_ammo_12x70_rip"] = { Bodygroups = { {7, 4} } },
    ["eft_ammo_12x70_50bmg"] = { Bodygroups = { {7, 5} } },
    ["eft_ammo_12x70_ap20"] = { Bodygroups = { {7, 6} } },
    ["eft_ammo_12x70_ftx"] = { Bodygroups = { {7, 7} } },
    ["eft_ammo_12x70_grizzly40"] = { Bodygroups = { {7, 8} } },
    ["eft_ammo_12x70_hpcopper"] = { Bodygroups = { {7, 9} } },
    ["eft_ammo_12x70_poleva3"] = { Bodygroups = { {7, 10} } },
    ["eft_ammo_12x70_poleva6u"] = { Bodygroups = { {7, 11} } },
    ["eft_ammo_12x70_superformance"] = { Bodygroups = { {7, 12} } },
    ["eft_ammo_12x70_slug"] = { Bodygroups = { {7, 13} } },
    ["eft_ammo_12x70_mixed_50bmg_p3"] = { Bodygroups = { {7, 14} } },
}

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_m590_barrel",
        Bone = "mod_magazine",
        Installed = "eft_m590_barrel_508",
        Pos = Vector(0, -10.98, 1.33),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_m590_fs_ghost",
            },
        },
    },
    {
        PrintName = "Handguard",
        Category = "eft_m590_hg",
        Bone = "mod_handguard",
        Installed = "eft_m590_hg_speed",
        Pos = Vector(0, -1, -1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -2, 0),
    },
    {
        PrintName = "Mount",
        Category = "eft_m590_rs",
        Bone = "mod_mount",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_m590_rs_ghost",
    },
    {
        PrintName = "Ammunition",
        Category = {"eft_ammo_12x70"},
        Bone = "mod_magazine",
        Pos = Vector(0, -14, -3),
        Ang = Angle(0, 0, 0),
        Installed = "eft_ammo_12x70_7mm",
        Integral = "eft_ammo_12x70_7mm",
    },
    {
        PrintName = "Magazine",
        Category = "eft_m590_mag",
        Bone = "mod_magazine",
        Installed = "eft_m590_mag_8",
        Pos = Vector(0, 0.5, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_m590_stock",
        Bone = "mod_stock",
        Installed = "eft_m590_stock_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_m590"}, -- , "eft_ak_gp34"
        Bone = "mod_stock",
        Pos = Vector(0, -5, -4),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
        -- CosmeticOnly = true,
    },
}

SWEP.EFTErgo = 48
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
SWEP.ShellSounds = ARC9EFT.Shells12cal