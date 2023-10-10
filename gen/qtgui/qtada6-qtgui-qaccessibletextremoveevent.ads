-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibletextremoveevent.ads
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
with QtAda6.QtGui.QAccessibleTextCursorEvent;
package QtAda6.QtGui.QAccessibleTextRemoveEvent is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QAccessibleTextCursorEvent.Inst with null record;
procedure Finalize (Self : in out Class);
function Create(iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;position_P : int;text_P : str) return Class;
function Create(obj_P : access QtAda6.QtCore.QObject.Inst'Class;position_P : int;text_P : str) return Class;
function changePosition(self : access Inst) return int;
function textRemoved(self : access Inst) return str;
end QtAda6.QtGui.QAccessibleTextRemoveEvent;
