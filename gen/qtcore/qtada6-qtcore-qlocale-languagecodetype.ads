-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale-languagecodetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QLocale.LanguageCodeType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function AnyLanguageCode return Class;-- -0x1
   function ISO639Alpha2 return Class;-- 0x1
   function ISO639Part1 return Class;-- 0x1
   function ISO639Part2B return Class;-- 0x2
   function ISO639Part2T return Class;-- 0x4
   function ISO639Part2 return Class;-- 0x6
   function ISO639Part3 return Class;-- 0x8
   function ISO639Alpha3 return Class;-- 0xe
   function ISO639 return Class;-- 0xf
   function LegacyLanguageCode return Class;-- 0x8000
end QtAda6.QtCore.QLocale.LanguageCodeType;
