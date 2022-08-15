SWEP.Base			= "draconic_gun_base"

SWEP.HoldType			= "shotgun"
SWEP.Category			= "Draconic: Halo"
SWEP.PrintName			= "M90 Mk II"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_shotgun"

SWEP.Manufacturer		= "Weapon System Technologies"
SWEP.InfoName			= "Tactical Shotgun"
SWEP.InfoDescription	= "The Mark II M90 is a prototype that underwent field assessment but was ultimately refitted into the M90A CAWS.\n Because of its ostensibly short-range effectiveness, it saw widespread adoption among navy personnel."

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_sg.vmt"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Slot				= 3
SWEP.SlotPos			= 0

SWEP.ViewModelFOV		= 60
SWEP.ViewModelFlip		= false

SWEP.UseHands			= true
SWEP.ViewModel 			= "models/vuthakral/halo/weapons/c_hum_m90_h2a.mdl"
SWEP.WorldModel			= "models/vuthakral/halo/weapons/w_m90_h2.mdl"
SWEP.VMPos 				= Vector(0, 6, -1.5)
SWEP.VMAng 				= Vector(0, 0, 0)
SWEP.VMPosCrouch		= Vector(0, -4, 0.4)
SWEP.VMAngCrouch		= Vector(0, 0, 0)
SWEP.IronSightsPos 		= Vector(-4, 1, 1)
SWEP.IronSightsAng 		= Vector(-1.5, -3.15, -2.67)
SWEP.PassivePos 		= Vector(2, 3, 0)
SWEP.PassiveAng 		= Vector(-15, 25, 0)
SWEP.SprintPos 			= Vector(0, 3, -5)
SWEP.SprintAng 			= Vector(40, 50, 0)
SWEP.DoesPassiveSprint = false
SWEP.SS = 0.8
SWEP.BS = 0.9

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 3
SWEP.FireModes_SwitchSound = Sound("Weapon_AR2.Empty")

SWEP.LoadAfterShot 			= true
SWEP.LoadAfterReloadEmpty	= true
SWEP.ManualReload			= true

SWEP.Primary.NumShots 		= 15
SWEP.Primary.IronRecoilMul	= 0.5
SWEP.Primary.Spread			= 20
SWEP.Primary.SpreadDiv		= 100
SWEP.Primary.Kick			= 3.2
SWEP.Primary.RecoilUp		= 2
SWEP.Primary.RecoilDown		= 2
SWEP.Primary.RecoilHoriz	= 15
SWEP.Primary.Force			= 0.2
SWEP.Primary.Damage			= 6
SWEP.Primary.Automatic		= false
SWEP.Primary.Delay			= 0.115
SWEP.Primary.ClipSize		= 12
SWEP.Primary.DefaultClip	= 12
SWEP.Primary.APS			= 1
SWEP.Primary.RPM			= 110
SWEP.Primary.Tracer			= 0 -- https://wiki.garrysmod.com/page/Enums/TRACER
SWEP.Primary.TracerEffect	= "drc_halo_shotgun_bullet"
SWEP.Primary.ReloadHoldType	= "shotgun"
SWEP.Primary.EmptySound		= Sound("drc.halo_mag_empty")
SWEP.Primary.Sound			= Sound("drc.m90h2_fire")
SWEP.Primary.DistSound 		= Sound("drc.m90_fire_dist")
SWEP.Primary.SoundDistance 	= 1500

SWEP.FireModes_CanAuto	= false
SWEP.FireModes_CanBurst = false
SWEP.FireModes_CanSemi	= true
SWEP.FireModes_BurstShots = 0

SWEP.Primary.CanMelee		= true
SWEP.Primary.MeleeSwingSound	= Sound( "" )
SWEP.Primary.MeleeHitSoundWorld = Sound( "weapon.ImpactSoft" )
SWEP.Primary.MeleeHitSoundFlesh = Sound( "flesh.ImpactSoft" )
SWEP.Primary.MeleeHitSoundEnt 	= Sound( "weapon.ImpactHard" )
SWEP.Primary.MeleeImpactDecal 	= ""
SWEP.Primary.MeleeDamage		= 25
SWEP.Primary.MeleeDamageType	= DMG_CLUB
SWEP.Primary.MeleeRange			= 16.5
SWEP.Primary.MeleeForce			= 13
SWEP.Primary.MeleeDelayMiss		= 1
SWEP.Primary.MeleeDelayHit 		= 1
SWEP.Primary.MeleeMissActivity	= ACT_VM_HITCENTER 

SWEP.Secondary.Disabled		= true
SWEP.Secondary.Ironsights	= true
SWEP.Secondary.Scoped		= false
SWEP.Secondary.ScopeMat		= "overlays/draconic_scope"
SWEP.Secondary.IronFOV		= 90

SWEP.AttachmentTable = {
	AmmunitionTypes = {"drc_att_bprofile_haloshotgun"}
}