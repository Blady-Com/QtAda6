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
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnyCountry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnyCountry"));
   end AnyCountry;
   function AnyTerritory return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnyTerritory"));
   end AnyTerritory;
   function Afghanistan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Afghanistan"));
   end Afghanistan;
   function AlandIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlandIslands"));
   end AlandIslands;
   function Albania return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Albania"));
   end Albania;
   function Algeria return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Algeria"));
   end Algeria;
   function AmericanSamoa return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AmericanSamoa"));
   end AmericanSamoa;
   function Andorra return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Andorra"));
   end Andorra;
   function Angola return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Angola"));
   end Angola;
   function Anguilla return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Anguilla"));
   end Anguilla;
   function Antarctica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Antarctica"));
   end Antarctica;
   function AntiguaAndBarbuda return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AntiguaAndBarbuda"));
   end AntiguaAndBarbuda;
   function Argentina return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Argentina"));
   end Argentina;
   function Armenia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Armenia"));
   end Armenia;
   function Aruba return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Aruba"));
   end Aruba;
   function AscensionIsland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AscensionIsland"));
   end AscensionIsland;
   function Australia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Australia"));
   end Australia;
   function Austria return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Austria"));
   end Austria;
   function Azerbaijan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Azerbaijan"));
   end Azerbaijan;
   function Bahamas return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bahamas"));
   end Bahamas;
   function Bahrain return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bahrain"));
   end Bahrain;
   function Bangladesh return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bangladesh"));
   end Bangladesh;
   function Barbados return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Barbados"));
   end Barbados;
   function Belarus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Belarus"));
   end Belarus;
   function Belgium return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Belgium"));
   end Belgium;
   function Belize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Belize"));
   end Belize;
   function Benin return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Benin"));
   end Benin;
   function Bermuda return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bermuda"));
   end Bermuda;
   function Bhutan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bhutan"));
   end Bhutan;
   function Bolivia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bolivia"));
   end Bolivia;
   function BosniaAndHerzegovina return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BosniaAndHerzegovina"));
   end BosniaAndHerzegovina;
   function BosniaAndHerzegowina return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BosniaAndHerzegowina"));
   end BosniaAndHerzegowina;
   function Botswana return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Botswana"));
   end Botswana;
   function BouvetIsland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BouvetIsland"));
   end BouvetIsland;
   function Brazil return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Brazil"));
   end Brazil;
   function BritishIndianOceanTerritory return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BritishIndianOceanTerritory"));
   end BritishIndianOceanTerritory;
   function BritishVirginIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BritishVirginIslands"));
   end BritishVirginIslands;
   function Brunei return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Brunei"));
   end Brunei;
   function Bulgaria return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bulgaria"));
   end Bulgaria;
   function BurkinaFaso return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BurkinaFaso"));
   end BurkinaFaso;
   function Burundi return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Burundi"));
   end Burundi;
   function Cambodia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cambodia"));
   end Cambodia;
   function Cameroon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cameroon"));
   end Cameroon;
   function Canada return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Canada"));
   end Canada;
   function CanaryIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CanaryIslands"));
   end CanaryIslands;
   function CapeVerde return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CapeVerde"));
   end CapeVerde;
   function Bonaire return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bonaire"));
   end Bonaire;
   function CaribbeanNetherlands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CaribbeanNetherlands"));
   end CaribbeanNetherlands;
   function CaymanIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CaymanIslands"));
   end CaymanIslands;
   function CentralAfricanRepublic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CentralAfricanRepublic"));
   end CentralAfricanRepublic;
   function CeutaAndMelilla return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CeutaAndMelilla"));
   end CeutaAndMelilla;
   function Chad return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Chad"));
   end Chad;
   function Chile return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Chile"));
   end Chile;
   function China return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "China"));
   end China;
   function ChristmasIsland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ChristmasIsland"));
   end ChristmasIsland;
   function ClippertonIsland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ClippertonIsland"));
   end ClippertonIsland;
   function CocosIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CocosIslands"));
   end CocosIslands;
   function Colombia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Colombia"));
   end Colombia;
   function Comoros return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Comoros"));
   end Comoros;
   function CongoBrazzaville return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CongoBrazzaville"));
   end CongoBrazzaville;
   function PeoplesRepublicOfCongo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PeoplesRepublicOfCongo"));
   end PeoplesRepublicOfCongo;
   function CongoKinshasa return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CongoKinshasa"));
   end CongoKinshasa;
   function DemocraticRepublicOfCongo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DemocraticRepublicOfCongo"));
   end DemocraticRepublicOfCongo;
   function CookIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CookIslands"));
   end CookIslands;
   function CostaRica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CostaRica"));
   end CostaRica;
   function Croatia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Croatia"));
   end Croatia;
   function Cuba return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cuba"));
   end Cuba;
   function CuraSao return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CuraSao"));
   end CuraSao;
   function Curacao return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Curacao"));
   end Curacao;
   function Cyprus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cyprus"));
   end Cyprus;
   function CzechRepublic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CzechRepublic"));
   end CzechRepublic;
   function Czechia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Czechia"));
   end Czechia;
   function Denmark return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Denmark"));
   end Denmark;
   function DiegoGarcia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DiegoGarcia"));
   end DiegoGarcia;
   function Djibouti return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Djibouti"));
   end Djibouti;
   function Dominica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dominica"));
   end Dominica;
   function DominicanRepublic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DominicanRepublic"));
   end DominicanRepublic;
   function Ecuador return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ecuador"));
   end Ecuador;
   function Egypt return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Egypt"));
   end Egypt;
   function ElSalvador return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ElSalvador"));
   end ElSalvador;
   function EquatorialGuinea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EquatorialGuinea"));
   end EquatorialGuinea;
   function Eritrea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Eritrea"));
   end Eritrea;
   function Estonia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Estonia"));
   end Estonia;
   function Eswatini return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Eswatini"));
   end Eswatini;
   function Swaziland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Swaziland"));
   end Swaziland;
   function Ethiopia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ethiopia"));
   end Ethiopia;
   function Europe return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Europe"));
   end Europe;
   function EuropeanUnion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EuropeanUnion"));
   end EuropeanUnion;
   function FalklandIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FalklandIslands"));
   end FalklandIslands;
   function FaroeIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FaroeIslands"));
   end FaroeIslands;
   function Fiji return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Fiji"));
   end Fiji;
   function Finland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Finland"));
   end Finland;
   function France return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "France"));
   end France;
   function FrenchGuiana return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrenchGuiana"));
   end FrenchGuiana;
   function FrenchPolynesia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrenchPolynesia"));
   end FrenchPolynesia;
   function FrenchSouthernTerritories return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrenchSouthernTerritories"));
   end FrenchSouthernTerritories;
   function Gabon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Gabon"));
   end Gabon;
   function Gambia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Gambia"));
   end Gambia;
   function Georgia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Georgia"));
   end Georgia;
   function Germany return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Germany"));
   end Germany;
   function Ghana return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ghana"));
   end Ghana;
   function Gibraltar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Gibraltar"));
   end Gibraltar;
   function Greece return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Greece"));
   end Greece;
   function Greenland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Greenland"));
   end Greenland;
   function Grenada return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Grenada"));
   end Grenada;
   function Guadeloupe return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Guadeloupe"));
   end Guadeloupe;
   function Guam return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Guam"));
   end Guam;
   function Guatemala return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Guatemala"));
   end Guatemala;
   function Guernsey return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Guernsey"));
   end Guernsey;
   function GuineaBissau return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GuineaBissau"));
   end GuineaBissau;
   function Guinea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Guinea"));
   end Guinea;
   function Guyana return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Guyana"));
   end Guyana;
   function Haiti return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Haiti"));
   end Haiti;
   function HeardAndMcDonaldIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HeardAndMcDonaldIslands"));
   end HeardAndMcDonaldIslands;
   function Honduras return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Honduras"));
   end Honduras;
   function HongKong return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HongKong"));
   end HongKong;
   function Hungary return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Hungary"));
   end Hungary;
   function Iceland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Iceland"));
   end Iceland;
   function India return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "India"));
   end India;
   function Indonesia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Indonesia"));
   end Indonesia;
   function Iran return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Iran"));
   end Iran;
   function Iraq return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Iraq"));
   end Iraq;
   function Ireland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ireland"));
   end Ireland;
   function IsleOfMan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IsleOfMan"));
   end IsleOfMan;
   function Israel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Israel"));
   end Israel;
   function Italy return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Italy"));
   end Italy;
   function IvoryCoast return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IvoryCoast"));
   end IvoryCoast;
   function Jamaica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Jamaica"));
   end Jamaica;
   function Japan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Japan"));
   end Japan;
   function Jersey return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Jersey"));
   end Jersey;
   function Jordan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Jordan"));
   end Jordan;
   function Kazakhstan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Kazakhstan"));
   end Kazakhstan;
   function Kenya return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Kenya"));
   end Kenya;
   function Kiribati return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Kiribati"));
   end Kiribati;
   function Kosovo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Kosovo"));
   end Kosovo;
   function Kuwait return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Kuwait"));
   end Kuwait;
   function Kyrgyzstan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Kyrgyzstan"));
   end Kyrgyzstan;
   function Laos return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Laos"));
   end Laos;
   function LatinAmerica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LatinAmerica"));
   end LatinAmerica;
   function LatinAmericaAndTheCaribbean return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LatinAmericaAndTheCaribbean"));
   end LatinAmericaAndTheCaribbean;
   function Latvia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Latvia"));
   end Latvia;
   function Lebanon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Lebanon"));
   end Lebanon;
   function Lesotho return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Lesotho"));
   end Lesotho;
   function Liberia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Liberia"));
   end Liberia;
   function Libya return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Libya"));
   end Libya;
   function Liechtenstein return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Liechtenstein"));
   end Liechtenstein;
   function Lithuania return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Lithuania"));
   end Lithuania;
   function Luxembourg return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Luxembourg"));
   end Luxembourg;
   function Macao return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Macao"));
   end Macao;
   function Macau return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Macau"));
   end Macau;
   function Macedonia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Macedonia"));
   end Macedonia;
   function Madagascar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Madagascar"));
   end Madagascar;
   function Malawi return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Malawi"));
   end Malawi;
   function Malaysia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Malaysia"));
   end Malaysia;
   function Maldives return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Maldives"));
   end Maldives;
   function Mali return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mali"));
   end Mali;
   function Malta return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Malta"));
   end Malta;
   function MarshallIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MarshallIslands"));
   end MarshallIslands;
   function Martinique return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Martinique"));
   end Martinique;
   function Mauritania return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mauritania"));
   end Mauritania;
   function Mauritius return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mauritius"));
   end Mauritius;
   function Mayotte return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mayotte"));
   end Mayotte;
   function Mexico return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mexico"));
   end Mexico;
   function Micronesia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Micronesia"));
   end Micronesia;
   function Moldova return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Moldova"));
   end Moldova;
   function Monaco return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Monaco"));
   end Monaco;
   function Mongolia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mongolia"));
   end Mongolia;
   function Montenegro return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Montenegro"));
   end Montenegro;
   function Montserrat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Montserrat"));
   end Montserrat;
   function Morocco return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Morocco"));
   end Morocco;
   function Mozambique return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mozambique"));
   end Mozambique;
   function Myanmar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Myanmar"));
   end Myanmar;
   function Namibia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Namibia"));
   end Namibia;
   function NauruCountry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NauruCountry"));
   end NauruCountry;
   function NauruTerritory return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NauruTerritory"));
   end NauruTerritory;
   function Nepal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Nepal"));
   end Nepal;
   function Netherlands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Netherlands"));
   end Netherlands;
   function NewCaledonia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewCaledonia"));
   end NewCaledonia;
   function NewZealand return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewZealand"));
   end NewZealand;
   function Nicaragua return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Nicaragua"));
   end Nicaragua;
   function Nigeria return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Nigeria"));
   end Nigeria;
   function Niger return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Niger"));
   end Niger;
   function Niue return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Niue"));
   end Niue;
   function NorfolkIsland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NorfolkIsland"));
   end NorfolkIsland;
   function NorthernMarianaIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NorthernMarianaIslands"));
   end NorthernMarianaIslands;
   function DemocraticRepublicOfKorea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DemocraticRepublicOfKorea"));
   end DemocraticRepublicOfKorea;
   function NorthKorea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NorthKorea"));
   end NorthKorea;
   function Norway return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Norway"));
   end Norway;
   function Oman return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Oman"));
   end Oman;
   function OutlyingOceania return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OutlyingOceania"));
   end OutlyingOceania;
   function Pakistan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Pakistan"));
   end Pakistan;
   function Palau return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Palau"));
   end Palau;
   function PalestinianTerritories return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PalestinianTerritories"));
   end PalestinianTerritories;
   function Panama return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Panama"));
   end Panama;
   function PapuaNewGuinea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PapuaNewGuinea"));
   end PapuaNewGuinea;
   function Paraguay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Paraguay"));
   end Paraguay;
   function Peru return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Peru"));
   end Peru;
   function Philippines return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Philippines"));
   end Philippines;
   function Pitcairn return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Pitcairn"));
   end Pitcairn;
   function Poland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Poland"));
   end Poland;
   function Portugal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Portugal"));
   end Portugal;
   function PuertoRico return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PuertoRico"));
   end PuertoRico;
   function Qatar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Qatar"));
   end Qatar;
   function Reunion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Reunion"));
   end Reunion;
   function Romania return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Romania"));
   end Romania;
   function Russia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Russia"));
   end Russia;
   function RussianFederation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RussianFederation"));
   end RussianFederation;
   function Rwanda return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Rwanda"));
   end Rwanda;
   function SaintBarthelemy return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintBarthelemy"));
   end SaintBarthelemy;
   function SaintHelena return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintHelena"));
   end SaintHelena;
   function SaintKittsAndNevis return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintKittsAndNevis"));
   end SaintKittsAndNevis;
   function SaintLucia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintLucia"));
   end SaintLucia;
   function SaintMartin return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintMartin"));
   end SaintMartin;
   function SaintPierreAndMiquelon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintPierreAndMiquelon"));
   end SaintPierreAndMiquelon;
   function SaintVincentAndGrenadines return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintVincentAndGrenadines"));
   end SaintVincentAndGrenadines;
   function SaintVincentAndTheGrenadines return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaintVincentAndTheGrenadines"));
   end SaintVincentAndTheGrenadines;
   function Samoa return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Samoa"));
   end Samoa;
   function SanMarino return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SanMarino"));
   end SanMarino;
   function SaoTomeAndPrincipe return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaoTomeAndPrincipe"));
   end SaoTomeAndPrincipe;
   function SaudiArabia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaudiArabia"));
   end SaudiArabia;
   function Senegal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Senegal"));
   end Senegal;
   function Serbia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Serbia"));
   end Serbia;
   function Seychelles return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Seychelles"));
   end Seychelles;
   function SierraLeone return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SierraLeone"));
   end SierraLeone;
   function Singapore return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Singapore"));
   end Singapore;
   function SintMaarten return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SintMaarten"));
   end SintMaarten;
   function Slovakia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Slovakia"));
   end Slovakia;
   function Slovenia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Slovenia"));
   end Slovenia;
   function SolomonIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SolomonIslands"));
   end SolomonIslands;
   function Somalia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Somalia"));
   end Somalia;
   function SouthAfrica return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SouthAfrica"));
   end SouthAfrica;
   function SouthGeorgiaAndSouthSandwichIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SouthGeorgiaAndSouthSandwichIslands"));
   end SouthGeorgiaAndSouthSandwichIslands;
   function SouthGeorgiaAndTheSouthSandwichIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SouthGeorgiaAndTheSouthSandwichIslands"));
   end SouthGeorgiaAndTheSouthSandwichIslands;
   function RepublicOfKorea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RepublicOfKorea"));
   end RepublicOfKorea;
   function SouthKorea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SouthKorea"));
   end SouthKorea;
   function SouthSudan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SouthSudan"));
   end SouthSudan;
   function Spain return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Spain"));
   end Spain;
   function SriLanka return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SriLanka"));
   end SriLanka;
   function Sudan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Sudan"));
   end Sudan;
   function Suriname return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Suriname"));
   end Suriname;
   function SvalbardAndJanMayen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SvalbardAndJanMayen"));
   end SvalbardAndJanMayen;
   function SvalbardAndJanMayenIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SvalbardAndJanMayenIslands"));
   end SvalbardAndJanMayenIslands;
   function Sweden return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Sweden"));
   end Sweden;
   function Switzerland return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Switzerland"));
   end Switzerland;
   function Syria return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Syria"));
   end Syria;
   function SyrianArabRepublic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SyrianArabRepublic"));
   end SyrianArabRepublic;
   function Taiwan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Taiwan"));
   end Taiwan;
   function Tajikistan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tajikistan"));
   end Tajikistan;
   function Tanzania return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tanzania"));
   end Tanzania;
   function Thailand return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Thailand"));
   end Thailand;
   function EastTimor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EastTimor"));
   end EastTimor;
   function TimorLeste return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TimorLeste"));
   end TimorLeste;
   function Togo return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Togo"));
   end Togo;
   function TokelauCountry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TokelauCountry"));
   end TokelauCountry;
   function TokelauTerritory return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TokelauTerritory"));
   end TokelauTerritory;
   function Tonga return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tonga"));
   end Tonga;
   function TrinidadAndTobago return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TrinidadAndTobago"));
   end TrinidadAndTobago;
   function TristanDaCunha return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TristanDaCunha"));
   end TristanDaCunha;
   function Tunisia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tunisia"));
   end Tunisia;
   function Turkey return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Turkey"));
   end Turkey;
   function Turkmenistan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Turkmenistan"));
   end Turkmenistan;
   function TurksAndCaicosIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TurksAndCaicosIslands"));
   end TurksAndCaicosIslands;
   function TuvaluCountry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TuvaluCountry"));
   end TuvaluCountry;
   function TuvaluTerritory return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TuvaluTerritory"));
   end TuvaluTerritory;
   function Uganda return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Uganda"));
   end Uganda;
   function Ukraine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ukraine"));
   end Ukraine;
   function UnitedArabEmirates return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnitedArabEmirates"));
   end UnitedArabEmirates;
   function UnitedKingdom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnitedKingdom"));
   end UnitedKingdom;
   function UnitedStatesMinorOutlyingIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnitedStatesMinorOutlyingIslands"));
   end UnitedStatesMinorOutlyingIslands;
   function UnitedStatesOutlyingIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnitedStatesOutlyingIslands"));
   end UnitedStatesOutlyingIslands;
   function UnitedStates return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnitedStates"));
   end UnitedStates;
   function UnitedStatesVirginIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnitedStatesVirginIslands"));
   end UnitedStatesVirginIslands;
   function Uruguay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Uruguay"));
   end Uruguay;
   function Uzbekistan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Uzbekistan"));
   end Uzbekistan;
   function Vanuatu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Vanuatu"));
   end Vanuatu;
   function VaticanCity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VaticanCity"));
   end VaticanCity;
   function VaticanCityState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VaticanCityState"));
   end VaticanCityState;
   function Venezuela return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Venezuela"));
   end Venezuela;
   function Vietnam return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Vietnam"));
   end Vietnam;
   function WallisAndFutuna return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WallisAndFutuna"));
   end WallisAndFutuna;
   function WallisAndFutunaIslands return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WallisAndFutunaIslands"));
   end WallisAndFutunaIslands;
   function WesternSahara return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WesternSahara"));
   end WesternSahara;
   function World return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "World"));
   end World;
   function Yemen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Yemen"));
   end Yemen;
   function Zambia return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Zambia"));
   end Zambia;
   function LastCountry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LastCountry"));
   end LastCountry;
   function LastTerritory return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LastTerritory"));
   end LastTerritory;
   function Zimbabwe return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Country");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Zimbabwe"));
   end Zimbabwe;
end QtAda6.QtCore.QLocale.Country;
