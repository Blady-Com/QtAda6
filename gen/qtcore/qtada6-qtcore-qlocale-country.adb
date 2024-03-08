-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale-country.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.QLocale.Country is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnyCountry return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnyCountry"));
   end AnyCountry;
   function AnyTerritory return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnyTerritory"));
   end AnyTerritory;
   function Afghanistan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Afghanistan"));
   end Afghanistan;
   function AlandIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlandIslands"));
   end AlandIslands;
   function Albania return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Albania"));
   end Albania;
   function Algeria return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Algeria"));
   end Algeria;
   function AmericanSamoa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AmericanSamoa"));
   end AmericanSamoa;
   function Andorra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Andorra"));
   end Andorra;
   function Angola return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Angola"));
   end Angola;
   function Anguilla return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Anguilla"));
   end Anguilla;
   function Antarctica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Antarctica"));
   end Antarctica;
   function AntiguaAndBarbuda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AntiguaAndBarbuda"));
   end AntiguaAndBarbuda;
   function Argentina return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Argentina"));
   end Argentina;
   function Armenia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Armenia"));
   end Armenia;
   function Aruba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Aruba"));
   end Aruba;
   function AscensionIsland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AscensionIsland"));
   end AscensionIsland;
   function Australia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Australia"));
   end Australia;
   function Austria return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Austria"));
   end Austria;
   function Azerbaijan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Azerbaijan"));
   end Azerbaijan;
   function Bahamas return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bahamas"));
   end Bahamas;
   function Bahrain return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bahrain"));
   end Bahrain;
   function Bangladesh return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bangladesh"));
   end Bangladesh;
   function Barbados return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Barbados"));
   end Barbados;
   function Belarus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Belarus"));
   end Belarus;
   function Belgium return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Belgium"));
   end Belgium;
   function Belize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Belize"));
   end Belize;
   function Benin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Benin"));
   end Benin;
   function Bermuda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bermuda"));
   end Bermuda;
   function Bhutan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bhutan"));
   end Bhutan;
   function Bolivia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bolivia"));
   end Bolivia;
   function BosniaAndHerzegovina return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BosniaAndHerzegovina"));
   end BosniaAndHerzegovina;
   function BosniaAndHerzegowina return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BosniaAndHerzegowina"));
   end BosniaAndHerzegowina;
   function Botswana return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Botswana"));
   end Botswana;
   function BouvetIsland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BouvetIsland"));
   end BouvetIsland;
   function Brazil return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Brazil"));
   end Brazil;
   function BritishIndianOceanTerritory return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BritishIndianOceanTerritory"));
   end BritishIndianOceanTerritory;
   function BritishVirginIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BritishVirginIslands"));
   end BritishVirginIslands;
   function Brunei return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Brunei"));
   end Brunei;
   function Bulgaria return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bulgaria"));
   end Bulgaria;
   function BurkinaFaso return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BurkinaFaso"));
   end BurkinaFaso;
   function Burundi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Burundi"));
   end Burundi;
   function Cambodia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cambodia"));
   end Cambodia;
   function Cameroon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cameroon"));
   end Cameroon;
   function Canada return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Canada"));
   end Canada;
   function CanaryIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CanaryIslands"));
   end CanaryIslands;
   function CapeVerde return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CapeVerde"));
   end CapeVerde;
   function Bonaire return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bonaire"));
   end Bonaire;
   function CaribbeanNetherlands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CaribbeanNetherlands"));
   end CaribbeanNetherlands;
   function CaymanIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CaymanIslands"));
   end CaymanIslands;
   function CentralAfricanRepublic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CentralAfricanRepublic"));
   end CentralAfricanRepublic;
   function CeutaAndMelilla return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CeutaAndMelilla"));
   end CeutaAndMelilla;
   function Chad return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chad"));
   end Chad;
   function Chile return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chile"));
   end Chile;
   function China return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "China"));
   end China;
   function ChristmasIsland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ChristmasIsland"));
   end ChristmasIsland;
   function ClippertonIsland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ClippertonIsland"));
   end ClippertonIsland;
   function CocosIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CocosIslands"));
   end CocosIslands;
   function Colombia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Colombia"));
   end Colombia;
   function Comoros return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Comoros"));
   end Comoros;
   function CongoBrazzaville return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CongoBrazzaville"));
   end CongoBrazzaville;
   function PeoplesRepublicOfCongo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PeoplesRepublicOfCongo"));
   end PeoplesRepublicOfCongo;
   function CongoKinshasa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CongoKinshasa"));
   end CongoKinshasa;
   function DemocraticRepublicOfCongo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DemocraticRepublicOfCongo"));
   end DemocraticRepublicOfCongo;
   function CookIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CookIslands"));
   end CookIslands;
   function CostaRica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CostaRica"));
   end CostaRica;
   function Croatia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Croatia"));
   end Croatia;
   function Cuba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cuba"));
   end Cuba;
   function CuraSao return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CuraSao"));
   end CuraSao;
   function Curacao return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Curacao"));
   end Curacao;
   function Cyprus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cyprus"));
   end Cyprus;
   function CzechRepublic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CzechRepublic"));
   end CzechRepublic;
   function Czechia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Czechia"));
   end Czechia;
   function Denmark return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Denmark"));
   end Denmark;
   function DiegoGarcia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DiegoGarcia"));
   end DiegoGarcia;
   function Djibouti return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Djibouti"));
   end Djibouti;
   function Dominica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Dominica"));
   end Dominica;
   function DominicanRepublic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DominicanRepublic"));
   end DominicanRepublic;
   function Ecuador return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ecuador"));
   end Ecuador;
   function Egypt return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Egypt"));
   end Egypt;
   function ElSalvador return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ElSalvador"));
   end ElSalvador;
   function EquatorialGuinea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EquatorialGuinea"));
   end EquatorialGuinea;
   function Eritrea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Eritrea"));
   end Eritrea;
   function Estonia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Estonia"));
   end Estonia;
   function Eswatini return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Eswatini"));
   end Eswatini;
   function Swaziland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Swaziland"));
   end Swaziland;
   function Ethiopia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ethiopia"));
   end Ethiopia;
   function Europe return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Europe"));
   end Europe;
   function EuropeanUnion return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EuropeanUnion"));
   end EuropeanUnion;
   function FalklandIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FalklandIslands"));
   end FalklandIslands;
   function FaroeIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FaroeIslands"));
   end FaroeIslands;
   function Fiji return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fiji"));
   end Fiji;
   function Finland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Finland"));
   end Finland;
   function France return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "France"));
   end France;
   function FrenchGuiana return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrenchGuiana"));
   end FrenchGuiana;
   function FrenchPolynesia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrenchPolynesia"));
   end FrenchPolynesia;
   function FrenchSouthernTerritories return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FrenchSouthernTerritories"));
   end FrenchSouthernTerritories;
   function Gabon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gabon"));
   end Gabon;
   function Gambia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gambia"));
   end Gambia;
   function Georgia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Georgia"));
   end Georgia;
   function Germany return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Germany"));
   end Germany;
   function Ghana return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ghana"));
   end Ghana;
   function Gibraltar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gibraltar"));
   end Gibraltar;
   function Greece return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Greece"));
   end Greece;
   function Greenland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Greenland"));
   end Greenland;
   function Grenada return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Grenada"));
   end Grenada;
   function Guadeloupe return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guadeloupe"));
   end Guadeloupe;
   function Guam return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guam"));
   end Guam;
   function Guatemala return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guatemala"));
   end Guatemala;
   function Guernsey return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guernsey"));
   end Guernsey;
   function GuineaBissau return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GuineaBissau"));
   end GuineaBissau;
   function Guinea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guinea"));
   end Guinea;
   function Guyana return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guyana"));
   end Guyana;
   function Haiti return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Haiti"));
   end Haiti;
   function HeardAndMcDonaldIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HeardAndMcDonaldIslands"));
   end HeardAndMcDonaldIslands;
   function Honduras return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Honduras"));
   end Honduras;
   function HongKong return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HongKong"));
   end HongKong;
   function Hungary return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hungary"));
   end Hungary;
   function Iceland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Iceland"));
   end Iceland;
   function India return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "India"));
   end India;
   function Indonesia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Indonesia"));
   end Indonesia;
   function Iran return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Iran"));
   end Iran;
   function Iraq return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Iraq"));
   end Iraq;
   function Ireland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ireland"));
   end Ireland;
   function IsleOfMan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsleOfMan"));
   end IsleOfMan;
   function Israel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Israel"));
   end Israel;
   function Italy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Italy"));
   end Italy;
   function IvoryCoast return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IvoryCoast"));
   end IvoryCoast;
   function Jamaica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Jamaica"));
   end Jamaica;
   function Japan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Japan"));
   end Japan;
   function Jersey return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Jersey"));
   end Jersey;
   function Jordan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Jordan"));
   end Jordan;
   function Kazakhstan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kazakhstan"));
   end Kazakhstan;
   function Kenya return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kenya"));
   end Kenya;
   function Kiribati return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kiribati"));
   end Kiribati;
   function Kosovo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kosovo"));
   end Kosovo;
   function Kuwait return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kuwait"));
   end Kuwait;
   function Kyrgyzstan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kyrgyzstan"));
   end Kyrgyzstan;
   function Laos return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Laos"));
   end Laos;
   function LatinAmerica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LatinAmerica"));
   end LatinAmerica;
   function LatinAmericaAndTheCaribbean return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LatinAmericaAndTheCaribbean"));
   end LatinAmericaAndTheCaribbean;
   function Latvia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Latvia"));
   end Latvia;
   function Lebanon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lebanon"));
   end Lebanon;
   function Lesotho return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lesotho"));
   end Lesotho;
   function Liberia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Liberia"));
   end Liberia;
   function Libya return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Libya"));
   end Libya;
   function Liechtenstein return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Liechtenstein"));
   end Liechtenstein;
   function Lithuania return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lithuania"));
   end Lithuania;
   function Luxembourg return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Luxembourg"));
   end Luxembourg;
   function Macao return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Macao"));
   end Macao;
   function Macau return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Macau"));
   end Macau;
   function Macedonia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Macedonia"));
   end Macedonia;
   function Madagascar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Madagascar"));
   end Madagascar;
   function Malawi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malawi"));
   end Malawi;
   function Malaysia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malaysia"));
   end Malaysia;
   function Maldives return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Maldives"));
   end Maldives;
   function Mali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mali"));
   end Mali;
   function Malta return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malta"));
   end Malta;
   function MarshallIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MarshallIslands"));
   end MarshallIslands;
   function Martinique return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Martinique"));
   end Martinique;
   function Mauritania return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mauritania"));
   end Mauritania;
   function Mauritius return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mauritius"));
   end Mauritius;
   function Mayotte return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mayotte"));
   end Mayotte;
   function Mexico return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mexico"));
   end Mexico;
   function Micronesia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Micronesia"));
   end Micronesia;
   function Moldova return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Moldova"));
   end Moldova;
   function Monaco return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Monaco"));
   end Monaco;
   function Mongolia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mongolia"));
   end Mongolia;
   function Montenegro return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Montenegro"));
   end Montenegro;
   function Montserrat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Montserrat"));
   end Montserrat;
   function Morocco return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Morocco"));
   end Morocco;
   function Mozambique return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mozambique"));
   end Mozambique;
   function Myanmar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Myanmar"));
   end Myanmar;
   function Namibia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Namibia"));
   end Namibia;
   function NauruCountry return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NauruCountry"));
   end NauruCountry;
   function NauruTerritory return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NauruTerritory"));
   end NauruTerritory;
   function Nepal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nepal"));
   end Nepal;
   function Netherlands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Netherlands"));
   end Netherlands;
   function NewCaledonia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NewCaledonia"));
   end NewCaledonia;
   function NewZealand return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NewZealand"));
   end NewZealand;
   function Nicaragua return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nicaragua"));
   end Nicaragua;
   function Nigeria return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nigeria"));
   end Nigeria;
   function Niger return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Niger"));
   end Niger;
   function Niue return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Niue"));
   end Niue;
   function NorfolkIsland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorfolkIsland"));
   end NorfolkIsland;
   function NorthernMarianaIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthernMarianaIslands"));
   end NorthernMarianaIslands;
   function DemocraticRepublicOfKorea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DemocraticRepublicOfKorea"));
   end DemocraticRepublicOfKorea;
   function NorthKorea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthKorea"));
   end NorthKorea;
   function Norway return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Norway"));
   end Norway;
   function Oman return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Oman"));
   end Oman;
   function OutlyingOceania return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutlyingOceania"));
   end OutlyingOceania;
   function Pakistan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pakistan"));
   end Pakistan;
   function Palau return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Palau"));
   end Palau;
   function PalestinianTerritories return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PalestinianTerritories"));
   end PalestinianTerritories;
   function Panama return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Panama"));
   end Panama;
   function PapuaNewGuinea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PapuaNewGuinea"));
   end PapuaNewGuinea;
   function Paraguay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Paraguay"));
   end Paraguay;
   function Peru return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Peru"));
   end Peru;
   function Philippines return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Philippines"));
   end Philippines;
   function Pitcairn return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pitcairn"));
   end Pitcairn;
   function Poland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Poland"));
   end Poland;
   function Portugal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Portugal"));
   end Portugal;
   function PuertoRico return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PuertoRico"));
   end PuertoRico;
   function Qatar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qatar"));
   end Qatar;
   function Reunion return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Reunion"));
   end Reunion;
   function Romania return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Romania"));
   end Romania;
   function Russia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Russia"));
   end Russia;
   function RussianFederation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RussianFederation"));
   end RussianFederation;
   function Rwanda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rwanda"));
   end Rwanda;
   function SaintBarthelemy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintBarthelemy"));
   end SaintBarthelemy;
   function SaintHelena return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintHelena"));
   end SaintHelena;
   function SaintKittsAndNevis return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintKittsAndNevis"));
   end SaintKittsAndNevis;
   function SaintLucia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintLucia"));
   end SaintLucia;
   function SaintMartin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintMartin"));
   end SaintMartin;
   function SaintPierreAndMiquelon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintPierreAndMiquelon"));
   end SaintPierreAndMiquelon;
   function SaintVincentAndGrenadines return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintVincentAndGrenadines"));
   end SaintVincentAndGrenadines;
   function SaintVincentAndTheGrenadines return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaintVincentAndTheGrenadines"));
   end SaintVincentAndTheGrenadines;
   function Samoa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Samoa"));
   end Samoa;
   function SanMarino return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SanMarino"));
   end SanMarino;
   function SaoTomeAndPrincipe return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaoTomeAndPrincipe"));
   end SaoTomeAndPrincipe;
   function SaudiArabia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SaudiArabia"));
   end SaudiArabia;
   function Senegal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Senegal"));
   end Senegal;
   function Serbia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Serbia"));
   end Serbia;
   function Seychelles return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Seychelles"));
   end Seychelles;
   function SierraLeone return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SierraLeone"));
   end SierraLeone;
   function Singapore return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Singapore"));
   end Singapore;
   function SintMaarten return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SintMaarten"));
   end SintMaarten;
   function Slovakia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Slovakia"));
   end Slovakia;
   function Slovenia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Slovenia"));
   end Slovenia;
   function SolomonIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SolomonIslands"));
   end SolomonIslands;
   function Somalia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Somalia"));
   end Somalia;
   function SouthAfrica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthAfrica"));
   end SouthAfrica;
   function SouthGeorgiaAndSouthSandwichIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthGeorgiaAndSouthSandwichIslands"));
   end SouthGeorgiaAndSouthSandwichIslands;
   function SouthGeorgiaAndTheSouthSandwichIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthGeorgiaAndTheSouthSandwichIslands"));
   end SouthGeorgiaAndTheSouthSandwichIslands;
   function RepublicOfKorea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RepublicOfKorea"));
   end RepublicOfKorea;
   function SouthKorea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthKorea"));
   end SouthKorea;
   function SouthSudan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthSudan"));
   end SouthSudan;
   function Spain return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Spain"));
   end Spain;
   function SriLanka return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SriLanka"));
   end SriLanka;
   function Sudan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sudan"));
   end Sudan;
   function Suriname return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Suriname"));
   end Suriname;
   function SvalbardAndJanMayen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SvalbardAndJanMayen"));
   end SvalbardAndJanMayen;
   function SvalbardAndJanMayenIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SvalbardAndJanMayenIslands"));
   end SvalbardAndJanMayenIslands;
   function Sweden return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sweden"));
   end Sweden;
   function Switzerland return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Switzerland"));
   end Switzerland;
   function Syria return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Syria"));
   end Syria;
   function SyrianArabRepublic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SyrianArabRepublic"));
   end SyrianArabRepublic;
   function Taiwan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Taiwan"));
   end Taiwan;
   function Tajikistan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tajikistan"));
   end Tajikistan;
   function Tanzania return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tanzania"));
   end Tanzania;
   function Thailand return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Thailand"));
   end Thailand;
   function EastTimor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EastTimor"));
   end EastTimor;
   function TimorLeste return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TimorLeste"));
   end TimorLeste;
   function Togo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Togo"));
   end Togo;
   function TokelauCountry return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TokelauCountry"));
   end TokelauCountry;
   function TokelauTerritory return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TokelauTerritory"));
   end TokelauTerritory;
   function Tonga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tonga"));
   end Tonga;
   function TrinidadAndTobago return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TrinidadAndTobago"));
   end TrinidadAndTobago;
   function TristanDaCunha return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TristanDaCunha"));
   end TristanDaCunha;
   function Tunisia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tunisia"));
   end Tunisia;
   function Turkey return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Turkey"));
   end Turkey;
   function Turkmenistan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Turkmenistan"));
   end Turkmenistan;
   function TurksAndCaicosIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TurksAndCaicosIslands"));
   end TurksAndCaicosIslands;
   function TuvaluCountry return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TuvaluCountry"));
   end TuvaluCountry;
   function TuvaluTerritory return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TuvaluTerritory"));
   end TuvaluTerritory;
   function Uganda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uganda"));
   end Uganda;
   function Ukraine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ukraine"));
   end Ukraine;
   function UnitedArabEmirates return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnitedArabEmirates"));
   end UnitedArabEmirates;
   function UnitedKingdom return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnitedKingdom"));
   end UnitedKingdom;
   function UnitedStatesMinorOutlyingIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnitedStatesMinorOutlyingIslands"));
   end UnitedStatesMinorOutlyingIslands;
   function UnitedStatesOutlyingIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnitedStatesOutlyingIslands"));
   end UnitedStatesOutlyingIslands;
   function UnitedStates return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnitedStates"));
   end UnitedStates;
   function UnitedStatesVirginIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnitedStatesVirginIslands"));
   end UnitedStatesVirginIslands;
   function Uruguay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uruguay"));
   end Uruguay;
   function Uzbekistan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uzbekistan"));
   end Uzbekistan;
   function Vanuatu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vanuatu"));
   end Vanuatu;
   function VaticanCity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "VaticanCity"));
   end VaticanCity;
   function VaticanCityState return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "VaticanCityState"));
   end VaticanCityState;
   function Venezuela return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Venezuela"));
   end Venezuela;
   function Vietnam return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vietnam"));
   end Vietnam;
   function WallisAndFutuna return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WallisAndFutuna"));
   end WallisAndFutuna;
   function WallisAndFutunaIslands return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WallisAndFutunaIslands"));
   end WallisAndFutunaIslands;
   function WesternSahara return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WesternSahara"));
   end WesternSahara;
   function World return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "World"));
   end World;
   function Yemen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Yemen"));
   end Yemen;
   function Zambia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Zambia"));
   end Zambia;
   function LastCountry return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastCountry"));
   end LastCountry;
   function LastTerritory return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastTerritory"));
   end LastTerritory;
   function Zimbabwe return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Zimbabwe"));
   end Zimbabwe;
end QtAda6.QtCore.QLocale.Country;
