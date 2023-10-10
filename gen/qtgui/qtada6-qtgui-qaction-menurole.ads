-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaction-menurole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Enum;
package QtAda6.QtGui.QAction.MenuRole is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Enum.Inst with null record;
procedure Finalize (Self : in out Class);
NoRole:QAction.MenuRole.Class;-- 0x0
TextHeuristicRole:QAction.MenuRole.Class;-- 0x1
ApplicationSpecificRole:QAction.MenuRole.Class;-- 0x2
AboutQtRole:QAction.MenuRole.Class;-- 0x3
AboutRole:QAction.MenuRole.Class;-- 0x4
PreferencesRole:QAction.MenuRole.Class;-- 0x5
QuitRole:QAction.MenuRole.Class;-- 0x6
end QtAda6.QtGui.QAction.MenuRole;
