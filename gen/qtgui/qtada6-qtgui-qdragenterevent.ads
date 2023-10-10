-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdragenterevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QDragMoveEvent;
package QtAda6.QtGui.QDragEnterEvent is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QDragMoveEvent.Inst with null record;
procedure Finalize (Self : in out Class);
function Create(arg_1_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class) return Class;
function Create(pos_P : access QtAda6.QtCore.QPoint.Inst'Class;actions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;data_P : access QtAda6.QtCore.QMimeData.Inst'Class;buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) return Class;
function U_repr_U(self : access Inst) return object;
function clone(self : access Inst) return access QtAda6.QtGui.QDragEnterEvent.Inst'Class;
end QtAda6.QtGui.QDragEnterEvent;
