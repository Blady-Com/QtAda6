-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibletextcursorevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAccessibleInterface;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QAccessibleEvent;
package QtAda6.QtGui.QAccessibleTextCursorEvent is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QAccessibleEvent.Inst with null record;
procedure Finalize (Self : in out Class);
function Create(iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;cursorPos_P : int) return Class;
function Create(obj_P : access QtAda6.QtCore.QObject.Inst'Class;cursorPos_P : int) return Class;
function cursorPosition(self : access Inst) return int;
procedure setCursorPosition(self : access Inst;position_P : int);
end QtAda6.QtGui.QAccessibleTextCursorEvent;
