-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont-stretch.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QFont.Stretch is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function AnyStretch return Class;-- 0x0
   function UltraCondensed return Class;-- 0x32
   function ExtraCondensed return Class;-- 0x3e
   function Condensed return Class;-- 0x4b
   function SemiCondensed return Class;-- 0x57
   function Unstretched return Class;-- 0x64
   function SemiExpanded return Class;-- 0x70
   function Expanded return Class;-- 0x7d
   function ExtraExpanded return Class;-- 0x96
   function UltraExpanded return Class;-- 0xc8
end QtAda6.QtGui.QFont.Stretch;
