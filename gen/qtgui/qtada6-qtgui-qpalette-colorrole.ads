-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpalette-colorrole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPalette.ColorRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   WindowText      : QPalette.ColorRole.Class;-- 0x0
   Button          : QPalette.ColorRole.Class;-- 0x1
   Light           : QPalette.ColorRole.Class;-- 0x2
   Midlight        : QPalette.ColorRole.Class;-- 0x3
   Dark            : QPalette.ColorRole.Class;-- 0x4
   Mid             : QPalette.ColorRole.Class;-- 0x5
   Text            : QPalette.ColorRole.Class;-- 0x6
   BrightText      : QPalette.ColorRole.Class;-- 0x7
   ButtonText      : QPalette.ColorRole.Class;-- 0x8
   Base            : QPalette.ColorRole.Class;-- 0x9
   Window          : QPalette.ColorRole.Class;-- 0xa
   Shadow          : QPalette.ColorRole.Class;-- 0xb
   Highlight       : QPalette.ColorRole.Class;-- 0xc
   HighlightedText : QPalette.ColorRole.Class;-- 0xd
   Link            : QPalette.ColorRole.Class;-- 0xe
   LinkVisited     : QPalette.ColorRole.Class;-- 0xf
   AlternateBase   : QPalette.ColorRole.Class;-- 0x10
   NoRole          : QPalette.ColorRole.Class;-- 0x11
   ToolTipBase     : QPalette.ColorRole.Class;-- 0x12
   ToolTipText     : QPalette.ColorRole.Class;-- 0x13
   PlaceholderText : QPalette.ColorRole.Class;-- 0x14
   NColorRoles     : QPalette.ColorRole.Class;-- 0x15
end QtAda6.QtGui.QPalette.ColorRole;
