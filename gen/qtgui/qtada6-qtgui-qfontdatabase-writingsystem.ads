-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfontdatabase-writingsystem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QFontDatabase.WritingSystem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Any                 : QFontDatabase.WritingSystem.Class;-- 0x0
   Latin               : QFontDatabase.WritingSystem.Class;-- 0x1
   Greek               : QFontDatabase.WritingSystem.Class;-- 0x2
   Cyrillic            : QFontDatabase.WritingSystem.Class;-- 0x3
   Armenian            : QFontDatabase.WritingSystem.Class;-- 0x4
   Hebrew              : QFontDatabase.WritingSystem.Class;-- 0x5
   Arabic              : QFontDatabase.WritingSystem.Class;-- 0x6
   Syriac              : QFontDatabase.WritingSystem.Class;-- 0x7
   Thaana              : QFontDatabase.WritingSystem.Class;-- 0x8
   Devanagari          : QFontDatabase.WritingSystem.Class;-- 0x9
   Bengali             : QFontDatabase.WritingSystem.Class;-- 0xa
   Gurmukhi            : QFontDatabase.WritingSystem.Class;-- 0xb
   Gujarati            : QFontDatabase.WritingSystem.Class;-- 0xc
   Oriya               : QFontDatabase.WritingSystem.Class;-- 0xd
   Tamil               : QFontDatabase.WritingSystem.Class;-- 0xe
   Telugu              : QFontDatabase.WritingSystem.Class;-- 0xf
   Kannada             : QFontDatabase.WritingSystem.Class;-- 0x10
   Malayalam           : QFontDatabase.WritingSystem.Class;-- 0x11
   Sinhala             : QFontDatabase.WritingSystem.Class;-- 0x12
   Thai                : QFontDatabase.WritingSystem.Class;-- 0x13
   Lao                 : QFontDatabase.WritingSystem.Class;-- 0x14
   Tibetan             : QFontDatabase.WritingSystem.Class;-- 0x15
   Myanmar             : QFontDatabase.WritingSystem.Class;-- 0x16
   Georgian            : QFontDatabase.WritingSystem.Class;-- 0x17
   Khmer               : QFontDatabase.WritingSystem.Class;-- 0x18
   SimplifiedChinese   : QFontDatabase.WritingSystem.Class;-- 0x19
   TraditionalChinese  : QFontDatabase.WritingSystem.Class;-- 0x1a
   Japanese            : QFontDatabase.WritingSystem.Class;-- 0x1b
   Korean              : QFontDatabase.WritingSystem.Class;-- 0x1c
   Vietnamese          : QFontDatabase.WritingSystem.Class;-- 0x1d
   Other               : QFontDatabase.WritingSystem.Class;-- 0x1e
   Symbol              : QFontDatabase.WritingSystem.Class;-- 0x1e
   Ogham               : QFontDatabase.WritingSystem.Class;-- 0x1f
   Runic               : QFontDatabase.WritingSystem.Class;-- 0x20
   Nko                 : QFontDatabase.WritingSystem.Class;-- 0x21
   WritingSystemsCount : QFontDatabase.WritingSystem.Class;-- 0x22
end QtAda6.QtGui.QFontDatabase.WritingSystem;
