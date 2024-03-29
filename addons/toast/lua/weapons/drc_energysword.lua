SWEP.Base				= "draconic_melee_base"

SWEP.HoldType			= "knife" -- https://wiki.garrysmod.com/page/Hold_Types
SWEP.CrouchHoldType		= "knife"
SWEP.Category			= "Draconic: Halo"
SWEP.PrintName			= "Type-1 Energy Sword"
SWEP.WepSelectIcon 		= "vgui/entities/drchalo_sword"

SWEP.Manufacturer		= "Assembly Forges"
SWEP.InfoDescription	= "A traditional, yet effective, Sangheili weapon.\n To the Sangheili the energy sword is a symbol of skill, honor, and nobility."

SWEP.RenderGroup = RENDERGROUP_TRANSLUCENT

SWEP.CrosshairColor		= Color(127, 220, 255, 255)
SWEP.CrosshairShadow	= true
SWEP.CrosshairStatic	= "models/vuthakral/halo/HUD/reticles/ret_es.vmt"
SWEP.CrosshairSizeMul	= 1

SWEP.AdminSpawnable = true
SWEP.AutoSwitchTo   = false
SWEP.Spawnable      = true
SWEP.AutoSwitchFrom = false
SWEP.FiresUnderwater= false
SWEP.Weight         = 5
SWEP.DrawCrosshair  = true
SWEP.Slot           = 0
SWEP.SlotPos        = 1
SWEP.DrawAmmo		= false

SWEP.UseHands		= true
SWEP.ViewModel 		= "models/vuthakral/halo/weapons/c_hum_energysword.mdl"
SWEP.WorldModel 	= "models/vuthakral/halo/weapons/w_energysword.mdl"
SWEP.ViewModelFOV   = 60
SWEP.VMPos 			= Vector(0, 0, 0)
SWEP.VMAng 			= Vector(0, 0, 0)
SWEP.DoesPassiveSprint = false
SWEP.SS 			= 1
SWEP.BS 			= 1

SWEP.ViewModelFlip  = false
SWEP.ShowWorldModel = true

SWEP.Glow = true
SWEP.GlowColor		= Color(100, 200, 255)
SWEP.GlowBrightness	= 1
SWEP.GlowDecay		= 1000
SWEP.GlowSize		= 150
SWEP.GlowStyle		= 5

SWEP.Primary.SwingSound		= Sound( "D_HaloES.Melee" )
SWEP.Primary.HitSoundWorld 	= Sound( "D_HaloES.HitWorld" )
SWEP.Primary.HitSoundFlesh 	= Sound( "D_HaloES.HitFlesh" )
SWEP.Primary.HitSoundEnt	= Sound( "D_HaloES.HitWorld" )
SWEP.Primary.HoldType		= "melee"
SWEP.Primary.HoldTypeCrouch	= "melee"
SWEP.Primary.ImpactDecal 	= "ManhackCut"
SWEP.Primary.Automatic		= false
SWEP.Primary.Damage			= 300
SWEP.Primary.DamageType		= DMG_SLASH
SWEP.Primary.Range			= 16.5
SWEP.Primary.Force			= 15
SWEP.Primary.DelayMiss		= 0.72
SWEP.Primary.DelayHit 		= 0.54
SWEP.Primary.CanAttackCrouched = true
SWEP.Primary.MissActivity	= ACT_VM_PRIMARYATTACK 
SWEP.Primary.CrouchMissActivity	= ACT_VM_PRIMARYATTACK 
SWEP.Primary.HitDelay		= 0.2
SWEP.Primary.StartX			= 30
SWEP.Primary.EndX			= -30
SWEP.Primary.StartY			= 35
SWEP.Primary.EndY			= -35

SWEP.Primary.CanLunge			= true
SWEP.Primary.LungeAutomatic		= true
SWEP.Primary.LungeVelocity		= 1000
SWEP.Primary.LungeMaxDist		= 225
SWEP.Primary.LungeSwingSound	= Sound( "D_HaloES.Lunge" )
SWEP.Primary.LungeHitSoundWorld = Sound( "D_HaloES.HitWorld" )
SWEP.Primary.LungeHitSoundFlesh = Sound( "D_HaloES.HitFlesh" )
SWEP.Primary.LungeHitSoundEnt	= Sound( "D_HaloES.HitWorld" )
SWEP.LungeHoldType		= "melee"
SWEP.LungeHoldTypeCrouch		= "melee"
SWEP.Primary.LungeImpactDecal 	= "ManhackCut"
SWEP.Primary.LungeMissAct		= ACT_VM_MISSCENTER
SWEP.Primary.LungeDelayMiss		= 1.3
SWEP.Primary.LungeDelayHit		= 0.7
SWEP.Primary.LungeHitDelay		= 0.26
SWEP.Primary.LungeDamage		= 300
SWEP.Primary.LungeDamageType	= DMG_SLASH
SWEP.Primary.LungeRange			= 25
SWEP.Primary.LungeForce			= 20
SWEP.Primary.LungeStartX		= 30
SWEP.Primary.LungeEndX			= -30
SWEP.Primary.LungeStartY		= -2.5
SWEP.Primary.LungeEndY			= 2.5

SWEP.Secondary.SwingSound 	 = Sound( "D_HaloES.Melee" )
SWEP.Secondary.HitSoundWorld = Sound( "D_HaloES.HitWorld" )
SWEP.Secondary.HitSoundFlesh = Sound( "D_HaloES.HitFlesh" )
SWEP.Secondary.HitSoundEnt 	 = Sound( "D_HaloES.HitWorld" )
SWEP.Secondary.HoldType		 = "melee2"
SWEP.Secondary.HoldTypeCrouch= "melee2"
SWEP.Secondary.ImpactDecal 	 = "ManhackCut"
SWEP.Secondary.Automatic 	 = false
SWEP.Secondary.Damage 	  	 = 300
SWEP.Secondary.DamageType	 = DMG_SLASH
SWEP.Secondary.Range       	 = 25
SWEP.Secondary.Force	   	 = 15
SWEP.Secondary.DelayMiss   	 = 0.72
SWEP.Secondary.DelayHit	   	 = 0.54
SWEP.Secondary.CanAttackCrouched = true
SWEP.Secondary.MissActivity	= ACT_VM_HITRIGHT
SWEP.Secondary.CrouchMissActivity	= ACT_VM_HITRIGHT
SWEP.Secondary.HitDelay		= 0.23
SWEP.Secondary.CanLunge		= false
SWEP.Secondary.Velocity		= Vector(0, 0, 0)
SWEP.Secondary.StartX		= 30
SWEP.Secondary.EndX			= -30
SWEP.Secondary.StartY		= -2
SWEP.Secondary.EndY			= -3