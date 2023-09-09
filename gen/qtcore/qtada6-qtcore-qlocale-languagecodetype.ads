-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale-languagecodetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.QLocale.LanguageCodeType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnyLanguageCode    : QLocale.LanguageCodeType.Class;-- -0x1
   ISO639Alpha2       : QLocale.LanguageCodeType.Class;-- 0x1
   ISO639Part1        : QLocale.LanguageCodeType.Class;-- 0x1
   ISO639Part2B       : QLocale.LanguageCodeType.Class;-- 0x2
   ISO639Part2T       : QLocale.LanguageCodeType.Class;-- 0x4
   ISO639Part2        : QLocale.LanguageCodeType.Class;-- 0x6
   ISO639Part3        : QLocale.LanguageCodeType.Class;-- 0x8
   ISO639Alpha3       : QLocale.LanguageCodeType.Class;-- 0xe
   ISO639             : QLocale.LanguageCodeType.Class;-- 0xf
   LegacyLanguageCode : QLocale.LanguageCodeType.Class;-- 0x8000
end QtAda6.QtCore.QLocale.LanguageCodeType;
