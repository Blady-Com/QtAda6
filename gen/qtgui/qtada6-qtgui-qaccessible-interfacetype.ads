-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-interfacetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QAccessible.InterfaceType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   TextInterface         : QAccessible.InterfaceType.Class;-- 0x0
   EditableTextInterface : QAccessible.InterfaceType.Class;-- 0x1
   ValueInterface        : QAccessible.InterfaceType.Class;-- 0x2
   ActionInterface       : QAccessible.InterfaceType.Class;-- 0x3
   ImageInterface        : QAccessible.InterfaceType.Class;-- 0x4
   TableInterface        : QAccessible.InterfaceType.Class;-- 0x5
   TableCellInterface    : QAccessible.InterfaceType.Class;-- 0x6
   HyperlinkInterface    : QAccessible.InterfaceType.Class;-- 0x7
   SelectionInterface    : QAccessible.InterfaceType.Class;-- 0x8
end QtAda6.QtGui.QAccessible.InterfaceType;
