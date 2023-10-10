-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdragmoveevent.ads
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
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QDropEvent;
package QtAda6.QtGui.QDragMoveEvent is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QDropEvent.Inst with null record;
procedure Finalize (Self : in out Class);
function Create(arg_1_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) return Class;
function Create(pos_P : access QtAda6.QtCore.QPoint.Inst'Class;actions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;data_P : access QtAda6.QtCore.QMimeData.Inst'Class;buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class) return Class;
function U_repr_U(self : access Inst) return object;
procedure accept_K(self : access Inst);
procedure accept_K(self : access Inst;r_P : access QtAda6.QtCore.QRect.Inst'Class);
function answerRect(self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
function clone(self : access Inst) return access QtAda6.QtGui.QDragMoveEvent.Inst'Class;
procedure ignore(self : access Inst);
procedure ignore(self : access Inst;r_P : access QtAda6.QtCore.QRect.Inst'Class);
end QtAda6.QtGui.QDragMoveEvent;
