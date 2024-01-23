-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfontdatabase-writingsystem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QFontDatabase.WritingSystem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Any return Class;-- 0x0
   function Latin return Class;-- 0x1
   function Greek return Class;-- 0x2
   function Cyrillic return Class;-- 0x3
   function Armenian return Class;-- 0x4
   function Hebrew return Class;-- 0x5
   function Arabic return Class;-- 0x6
   function Syriac return Class;-- 0x7
   function Thaana return Class;-- 0x8
   function Devanagari return Class;-- 0x9
   function Bengali return Class;-- 0xa
   function Gurmukhi return Class;-- 0xb
   function Gujarati return Class;-- 0xc
   function Oriya return Class;-- 0xd
   function Tamil return Class;-- 0xe
   function Telugu return Class;-- 0xf
   function Kannada return Class;-- 0x10
   function Malayalam return Class;-- 0x11
   function Sinhala return Class;-- 0x12
   function Thai return Class;-- 0x13
   function Lao return Class;-- 0x14
   function Tibetan return Class;-- 0x15
   function Myanmar return Class;-- 0x16
   function Georgian return Class;-- 0x17
   function Khmer return Class;-- 0x18
   function SimplifiedChinese return Class;-- 0x19
   function TraditionalChinese return Class;-- 0x1a
   function Japanese return Class;-- 0x1b
   function Korean return Class;-- 0x1c
   function Vietnamese return Class;-- 0x1d
   function Other return Class;-- 0x1e
   function Symbol return Class;-- 0x1e
   function Ogham return Class;-- 0x1f
   function Runic return Class;-- 0x20
   function Nko return Class;-- 0x21
   function WritingSystemsCount return Class;-- 0x22
end QtAda6.QtGui.QFontDatabase.WritingSystem;
