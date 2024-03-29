-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qgradient-preset.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QGradient.Preset is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function WarmFlame return Class;-- 0x1
   function NightFade return Class;-- 0x2
   function SpringWarmth return Class;-- 0x3
   function JuicyPeach return Class;-- 0x4
   function YoungPassion return Class;-- 0x5
   function LadyLips return Class;-- 0x6
   function SunnyMorning return Class;-- 0x7
   function RainyAshville return Class;-- 0x8
   function FrozenDreams return Class;-- 0x9
   function WinterNeva return Class;-- 0xa
   function DustyGrass return Class;-- 0xb
   function TemptingAzure return Class;-- 0xc
   function HeavyRain return Class;-- 0xd
   function AmyCrisp return Class;-- 0xe
   function MeanFruit return Class;-- 0xf
   function DeepBlue return Class;-- 0x10
   function RipeMalinka return Class;-- 0x11
   function CloudyKnoxville return Class;-- 0x12
   function MalibuBeach return Class;-- 0x13
   function NewLife return Class;-- 0x14
   function TrueSunset return Class;-- 0x15
   function MorpheusDen return Class;-- 0x16
   function RareWind return Class;-- 0x17
   function NearMoon return Class;-- 0x18
   function WildApple return Class;-- 0x19
   function SaintPetersburg return Class;-- 0x1a
   function PlumPlate return Class;-- 0x1c
   function EverlastingSky return Class;-- 0x1d
   function HappyFisher return Class;-- 0x1e
   function Blessing return Class;-- 0x1f
   function SharpeyeEagle return Class;-- 0x20
   function LadogaBottom return Class;-- 0x21
   function LemonGate return Class;-- 0x22
   function ItmeoBranding return Class;-- 0x23
   function ZeusMiracle return Class;-- 0x24
   function OldHat return Class;-- 0x25
   function StarWine return Class;-- 0x26
   function HappyAcid return Class;-- 0x29
   function AwesomePine return Class;-- 0x2a
   function NewYork return Class;-- 0x2b
   function ShyRainbow return Class;-- 0x2c
   function MixedHopes return Class;-- 0x2e
   function FlyHigh return Class;-- 0x2f
   function StrongBliss return Class;-- 0x30
   function FreshMilk return Class;-- 0x31
   function SnowAgain return Class;-- 0x32
   function FebruaryInk return Class;-- 0x33
   function KindSteel return Class;-- 0x34
   function SoftGrass return Class;-- 0x35
   function GrownEarly return Class;-- 0x36
   function SharpBlues return Class;-- 0x37
   function ShadyWater return Class;-- 0x38
   function DirtyBeauty return Class;-- 0x39
   function GreatWhale return Class;-- 0x3a
   function TeenNotebook return Class;-- 0x3b
   function PoliteRumors return Class;-- 0x3c
   function SweetPeriod return Class;-- 0x3d
   function WideMatrix return Class;-- 0x3e
   function SoftCherish return Class;-- 0x3f
   function RedSalvation return Class;-- 0x40
   function BurningSpring return Class;-- 0x41
   function NightParty return Class;-- 0x42
   function SkyGlider return Class;-- 0x43
   function HeavenPeach return Class;-- 0x44
   function PurpleDivision return Class;-- 0x45
   function AquaSplash return Class;-- 0x46
   function SpikyNaga return Class;-- 0x48
   function LoveKiss return Class;-- 0x49
   function CleanMirror return Class;-- 0x4b
   function PremiumDark return Class;-- 0x4c
   function ColdEvening return Class;-- 0x4d
   function CochitiLake return Class;-- 0x4e
   function SummerGames return Class;-- 0x4f
   function PassionateBed return Class;-- 0x50
   function MountainRock return Class;-- 0x51
   function DesertHump return Class;-- 0x52
   function JungleDay return Class;-- 0x53
   function PhoenixStart return Class;-- 0x54
   function OctoberSilence return Class;-- 0x55
   function FarawayRiver return Class;-- 0x56
   function AlchemistLab return Class;-- 0x57
   function OverSun return Class;-- 0x58
   function PremiumWhite return Class;-- 0x59
   function MarsParty return Class;-- 0x5a
   function EternalConstance return Class;-- 0x5b
   function JapanBlush return Class;-- 0x5c
   function SmilingRain return Class;-- 0x5d
   function CloudyApple return Class;-- 0x5e
   function BigMango return Class;-- 0x5f
   function HealthyWater return Class;-- 0x60
   function AmourAmour return Class;-- 0x61
   function RiskyConcrete return Class;-- 0x62
   function StrongStick return Class;-- 0x63
   function ViciousStance return Class;-- 0x64
   function PaloAlto return Class;-- 0x65
   function HappyMemories return Class;-- 0x66
   function MidnightBloom return Class;-- 0x67
   function Crystalline return Class;-- 0x68
   function PartyBliss return Class;-- 0x6a
   function ConfidentCloud return Class;-- 0x6b
   function LeCocktail return Class;-- 0x6c
   function RiverCity return Class;-- 0x6d
   function FrozenBerry return Class;-- 0x6e
   function ChildCare return Class;-- 0x70
   function FlyingLemon return Class;-- 0x71
   function NewRetrowave return Class;-- 0x72
   function HiddenJaguar return Class;-- 0x73
   function AboveTheSky return Class;-- 0x74
   function Nega return Class;-- 0x75
   function DenseWater return Class;-- 0x76
   function Seashore return Class;-- 0x78
   function MarbleWall return Class;-- 0x79
   function CheerfulCaramel return Class;-- 0x7a
   function NightSky return Class;-- 0x7b
   function MagicLake return Class;-- 0x7c
   function YoungGrass return Class;-- 0x7d
   function ColorfulPeach return Class;-- 0x7e
   function GentleCare return Class;-- 0x7f
   function PlumBath return Class;-- 0x80
   function HappyUnicorn return Class;-- 0x81
   function AfricanField return Class;-- 0x83
   function SolidStone return Class;-- 0x84
   function OrangeJuice return Class;-- 0x85
   function GlassWater return Class;-- 0x86
   function NorthMiracle return Class;-- 0x88
   function FruitBlend return Class;-- 0x89
   function MillenniumPine return Class;-- 0x8a
   function HighFlight return Class;-- 0x8b
   function MoleHall return Class;-- 0x8c
   function SpaceShift return Class;-- 0x8e
   function ForestInei return Class;-- 0x8f
   function RoyalGarden return Class;-- 0x90
   function RichMetal return Class;-- 0x91
   function JuicyCake return Class;-- 0x92
   function SmartIndigo return Class;-- 0x93
   function SandStrike return Class;-- 0x94
   function NorseBeauty return Class;-- 0x95
   function AquaGuidance return Class;-- 0x96
   function SunVeggie return Class;-- 0x97
   function SeaLord return Class;-- 0x98
   function BlackSea return Class;-- 0x99
   function GrassShampoo return Class;-- 0x9a
   function LandingAircraft return Class;-- 0x9b
   function WitchDance return Class;-- 0x9c
   function SleeplessNight return Class;-- 0x9d
   function AngelCare return Class;-- 0x9e
   function CrystalRiver return Class;-- 0x9f
   function SoftLipstick return Class;-- 0xa0
   function SaltMountain return Class;-- 0xa1
   function PerfectWhite return Class;-- 0xa2
   function FreshOasis return Class;-- 0xa3
   function StrictNovember return Class;-- 0xa4
   function MorningSalad return Class;-- 0xa5
   function DeepRelief return Class;-- 0xa6
   function SeaStrike return Class;-- 0xa7
   function NightCall return Class;-- 0xa8
   function SupremeSky return Class;-- 0xa9
   function LightBlue return Class;-- 0xaa
   function MindCrawl return Class;-- 0xab
   function LilyMeadow return Class;-- 0xac
   function SugarLollipop return Class;-- 0xad
   function SweetDessert return Class;-- 0xae
   function MagicRay return Class;-- 0xaf
   function TeenParty return Class;-- 0xb0
   function FrozenHeat return Class;-- 0xb1
   function GagarinView return Class;-- 0xb2
   function FabledSunset return Class;-- 0xb3
   function PerfectBlue return Class;-- 0xb4
   function NumPresets return Class;-- 0xb5
end QtAda6.QtGui.QGradient.Preset;
