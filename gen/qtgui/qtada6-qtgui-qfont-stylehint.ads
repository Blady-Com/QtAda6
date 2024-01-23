-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-stylehint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QFont.StyleHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Helvetica return Class;-- 0x0
   function SansSerif return Class;-- 0x0
   function Serif return Class;-- 0x1
   function Times return Class;-- 0x1
   function Courier return Class;-- 0x2
   function TypeWriter return Class;-- 0x2
   function Decorative return Class;-- 0x3
   function OldEnglish return Class;-- 0x3
   function System return Class;-- 0x4
   function AnyStyle return Class;-- 0x5
   function Cursive return Class;-- 0x6
   function Monospace return Class;-- 0x7
   function Fantasy return Class;-- 0x8
end QtAda6.QtGui.QFont.StyleHint;
