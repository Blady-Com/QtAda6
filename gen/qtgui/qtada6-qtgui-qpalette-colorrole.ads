-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpalette-colorrole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPalette.ColorRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function WindowText return Class;-- 0x0
   function Button return Class;-- 0x1
   function Light return Class;-- 0x2
   function Midlight return Class;-- 0x3
   function Dark return Class;-- 0x4
   function Mid return Class;-- 0x5
   function Text return Class;-- 0x6
   function BrightText return Class;-- 0x7
   function ButtonText return Class;-- 0x8
   function Base return Class;-- 0x9
   function Window return Class;-- 0xa
   function Shadow return Class;-- 0xb
   function Highlight return Class;-- 0xc
   function HighlightedText return Class;-- 0xd
   function Link return Class;-- 0xe
   function LinkVisited return Class;-- 0xf
   function AlternateBase return Class;-- 0x10
   function NoRole return Class;-- 0x11
   function ToolTipBase return Class;-- 0x12
   function ToolTipText return Class;-- 0x13
   function PlaceholderText return Class;-- 0x14
   function NColorRoles return Class;-- 0x15
end QtAda6.QtGui.QPalette.ColorRole;
