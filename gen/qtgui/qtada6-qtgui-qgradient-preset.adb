-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qgradient-preset.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QGradient.Preset is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function WarmFlame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WarmFlame"));
   end WarmFlame;
   function NightFade return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NightFade"));
   end NightFade;
   function SpringWarmth return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SpringWarmth"));
   end SpringWarmth;
   function JuicyPeach return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JuicyPeach"));
   end JuicyPeach;
   function YoungPassion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YoungPassion"));
   end YoungPassion;
   function LadyLips return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LadyLips"));
   end LadyLips;
   function SunnyMorning return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SunnyMorning"));
   end SunnyMorning;
   function RainyAshville return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RainyAshville"));
   end RainyAshville;
   function FrozenDreams return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrozenDreams"));
   end FrozenDreams;
   function WinterNeva return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WinterNeva"));
   end WinterNeva;
   function DustyGrass return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DustyGrass"));
   end DustyGrass;
   function TemptingAzure return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TemptingAzure"));
   end TemptingAzure;
   function HeavyRain return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HeavyRain"));
   end HeavyRain;
   function AmyCrisp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AmyCrisp"));
   end AmyCrisp;
   function MeanFruit return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MeanFruit"));
   end MeanFruit;
   function DeepBlue return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeepBlue"));
   end DeepBlue;
   function RipeMalinka return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RipeMalinka"));
   end RipeMalinka;
   function CloudyKnoxville return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CloudyKnoxville"));
   end CloudyKnoxville;
   function MalibuBeach return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MalibuBeach"));
   end MalibuBeach;
   function NewLife return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewLife"));
   end NewLife;
   function TrueSunset return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TrueSunset"));
   end TrueSunset;
   function MorpheusDen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MorpheusDen"));
   end MorpheusDen;
   function RareWind return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RareWind"));
   end RareWind;
   function NearMoon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NearMoon"));
   end NearMoon;
   function WildApple return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WildApple"));
   end WildApple;
   function SaintPetersburg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintPetersburg"));
   end SaintPetersburg;
   function PlumPlate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PlumPlate"));
   end PlumPlate;
   function EverlastingSky return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EverlastingSky"));
   end EverlastingSky;
   function HappyFisher return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HappyFisher"));
   end HappyFisher;
   function Blessing return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Blessing"));
   end Blessing;
   function SharpeyeEagle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SharpeyeEagle"));
   end SharpeyeEagle;
   function LadogaBottom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LadogaBottom"));
   end LadogaBottom;
   function LemonGate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LemonGate"));
   end LemonGate;
   function ItmeoBranding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItmeoBranding"));
   end ItmeoBranding;
   function ZeusMiracle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ZeusMiracle"));
   end ZeusMiracle;
   function OldHat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldHat"));
   end OldHat;
   function StarWine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StarWine"));
   end StarWine;
   function HappyAcid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HappyAcid"));
   end HappyAcid;
   function AwesomePine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AwesomePine"));
   end AwesomePine;
   function NewYork return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewYork"));
   end NewYork;
   function ShyRainbow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShyRainbow"));
   end ShyRainbow;
   function MixedHopes return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MixedHopes"));
   end MixedHopes;
   function FlyHigh return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FlyHigh"));
   end FlyHigh;
   function StrongBliss return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StrongBliss"));
   end StrongBliss;
   function FreshMilk return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FreshMilk"));
   end FreshMilk;
   function SnowAgain return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SnowAgain"));
   end SnowAgain;
   function FebruaryInk return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FebruaryInk"));
   end FebruaryInk;
   function KindSteel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KindSteel"));
   end KindSteel;
   function SoftGrass return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SoftGrass"));
   end SoftGrass;
   function GrownEarly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GrownEarly"));
   end GrownEarly;
   function SharpBlues return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SharpBlues"));
   end SharpBlues;
   function ShadyWater return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShadyWater"));
   end ShadyWater;
   function DirtyBeauty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyBeauty"));
   end DirtyBeauty;
   function GreatWhale return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GreatWhale"));
   end GreatWhale;
   function TeenNotebook return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TeenNotebook"));
   end TeenNotebook;
   function PoliteRumors return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PoliteRumors"));
   end PoliteRumors;
   function SweetPeriod return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SweetPeriod"));
   end SweetPeriod;
   function WideMatrix return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WideMatrix"));
   end WideMatrix;
   function SoftCherish return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SoftCherish"));
   end SoftCherish;
   function RedSalvation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RedSalvation"));
   end RedSalvation;
   function BurningSpring return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BurningSpring"));
   end BurningSpring;
   function NightParty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NightParty"));
   end NightParty;
   function SkyGlider return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SkyGlider"));
   end SkyGlider;
   function HeavenPeach return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HeavenPeach"));
   end HeavenPeach;
   function PurpleDivision return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PurpleDivision"));
   end PurpleDivision;
   function AquaSplash return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AquaSplash"));
   end AquaSplash;
   function SpikyNaga return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SpikyNaga"));
   end SpikyNaga;
   function LoveKiss return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LoveKiss"));
   end LoveKiss;
   function CleanMirror return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CleanMirror"));
   end CleanMirror;
   function PremiumDark return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PremiumDark"));
   end PremiumDark;
   function ColdEvening return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ColdEvening"));
   end ColdEvening;
   function CochitiLake return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CochitiLake"));
   end CochitiLake;
   function SummerGames return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SummerGames"));
   end SummerGames;
   function PassionateBed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PassionateBed"));
   end PassionateBed;
   function MountainRock return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MountainRock"));
   end MountainRock;
   function DesertHump return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DesertHump"));
   end DesertHump;
   function JungleDay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JungleDay"));
   end JungleDay;
   function PhoenixStart return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PhoenixStart"));
   end PhoenixStart;
   function OctoberSilence return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OctoberSilence"));
   end OctoberSilence;
   function FarawayRiver return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FarawayRiver"));
   end FarawayRiver;
   function AlchemistLab return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlchemistLab"));
   end AlchemistLab;
   function OverSun return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OverSun"));
   end OverSun;
   function PremiumWhite return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PremiumWhite"));
   end PremiumWhite;
   function MarsParty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MarsParty"));
   end MarsParty;
   function EternalConstance return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EternalConstance"));
   end EternalConstance;
   function JapanBlush return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JapanBlush"));
   end JapanBlush;
   function SmilingRain return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SmilingRain"));
   end SmilingRain;
   function CloudyApple return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CloudyApple"));
   end CloudyApple;
   function BigMango return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BigMango"));
   end BigMango;
   function HealthyWater return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HealthyWater"));
   end HealthyWater;
   function AmourAmour return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AmourAmour"));
   end AmourAmour;
   function RiskyConcrete return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RiskyConcrete"));
   end RiskyConcrete;
   function StrongStick return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StrongStick"));
   end StrongStick;
   function ViciousStance return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ViciousStance"));
   end ViciousStance;
   function PaloAlto return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PaloAlto"));
   end PaloAlto;
   function HappyMemories return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HappyMemories"));
   end HappyMemories;
   function MidnightBloom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MidnightBloom"));
   end MidnightBloom;
   function Crystalline return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Crystalline"));
   end Crystalline;
   function PartyBliss return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PartyBliss"));
   end PartyBliss;
   function ConfidentCloud return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ConfidentCloud"));
   end ConfidentCloud;
   function LeCocktail return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LeCocktail"));
   end LeCocktail;
   function RiverCity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RiverCity"));
   end RiverCity;
   function FrozenBerry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrozenBerry"));
   end FrozenBerry;
   function ChildCare return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ChildCare"));
   end ChildCare;
   function FlyingLemon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FlyingLemon"));
   end FlyingLemon;
   function NewRetrowave return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewRetrowave"));
   end NewRetrowave;
   function HiddenJaguar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HiddenJaguar"));
   end HiddenJaguar;
   function AboveTheSky return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AboveTheSky"));
   end AboveTheSky;
   function Nega return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Nega"));
   end Nega;
   function DenseWater return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DenseWater"));
   end DenseWater;
   function Seashore return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Seashore"));
   end Seashore;
   function MarbleWall return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MarbleWall"));
   end MarbleWall;
   function CheerfulCaramel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CheerfulCaramel"));
   end CheerfulCaramel;
   function NightSky return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NightSky"));
   end NightSky;
   function MagicLake return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MagicLake"));
   end MagicLake;
   function YoungGrass return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YoungGrass"));
   end YoungGrass;
   function ColorfulPeach return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ColorfulPeach"));
   end ColorfulPeach;
   function GentleCare return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GentleCare"));
   end GentleCare;
   function PlumBath return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PlumBath"));
   end PlumBath;
   function HappyUnicorn return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HappyUnicorn"));
   end HappyUnicorn;
   function AfricanField return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AfricanField"));
   end AfricanField;
   function SolidStone return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SolidStone"));
   end SolidStone;
   function OrangeJuice return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OrangeJuice"));
   end OrangeJuice;
   function GlassWater return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GlassWater"));
   end GlassWater;
   function NorthMiracle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NorthMiracle"));
   end NorthMiracle;
   function FruitBlend return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FruitBlend"));
   end FruitBlend;
   function MillenniumPine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MillenniumPine"));
   end MillenniumPine;
   function HighFlight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HighFlight"));
   end HighFlight;
   function MoleHall return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoleHall"));
   end MoleHall;
   function SpaceShift return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SpaceShift"));
   end SpaceShift;
   function ForestInei return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForestInei"));
   end ForestInei;
   function RoyalGarden return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RoyalGarden"));
   end RoyalGarden;
   function RichMetal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RichMetal"));
   end RichMetal;
   function JuicyCake return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JuicyCake"));
   end JuicyCake;
   function SmartIndigo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SmartIndigo"));
   end SmartIndigo;
   function SandStrike return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SandStrike"));
   end SandStrike;
   function NorseBeauty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NorseBeauty"));
   end NorseBeauty;
   function AquaGuidance return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AquaGuidance"));
   end AquaGuidance;
   function SunVeggie return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SunVeggie"));
   end SunVeggie;
   function SeaLord return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SeaLord"));
   end SeaLord;
   function BlackSea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BlackSea"));
   end BlackSea;
   function GrassShampoo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GrassShampoo"));
   end GrassShampoo;
   function LandingAircraft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LandingAircraft"));
   end LandingAircraft;
   function WitchDance return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WitchDance"));
   end WitchDance;
   function SleeplessNight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SleeplessNight"));
   end SleeplessNight;
   function AngelCare return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AngelCare"));
   end AngelCare;
   function CrystalRiver return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CrystalRiver"));
   end CrystalRiver;
   function SoftLipstick return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SoftLipstick"));
   end SoftLipstick;
   function SaltMountain return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaltMountain"));
   end SaltMountain;
   function PerfectWhite return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PerfectWhite"));
   end PerfectWhite;
   function FreshOasis return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FreshOasis"));
   end FreshOasis;
   function StrictNovember return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StrictNovember"));
   end StrictNovember;
   function MorningSalad return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MorningSalad"));
   end MorningSalad;
   function DeepRelief return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeepRelief"));
   end DeepRelief;
   function SeaStrike return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SeaStrike"));
   end SeaStrike;
   function NightCall return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NightCall"));
   end NightCall;
   function SupremeSky return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SupremeSky"));
   end SupremeSky;
   function LightBlue return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LightBlue"));
   end LightBlue;
   function MindCrawl return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MindCrawl"));
   end MindCrawl;
   function LilyMeadow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LilyMeadow"));
   end LilyMeadow;
   function SugarLollipop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SugarLollipop"));
   end SugarLollipop;
   function SweetDessert return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SweetDessert"));
   end SweetDessert;
   function MagicRay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MagicRay"));
   end MagicRay;
   function TeenParty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TeenParty"));
   end TeenParty;
   function FrozenHeat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrozenHeat"));
   end FrozenHeat;
   function GagarinView return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GagarinView"));
   end GagarinView;
   function FabledSunset return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FabledSunset"));
   end FabledSunset;
   function PerfectBlue return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PerfectBlue"));
   end PerfectBlue;
   function NumPresets return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGradient");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Preset");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NumPresets"));
   end NumPresets;
end QtAda6.QtGui.QGradient.Preset;
