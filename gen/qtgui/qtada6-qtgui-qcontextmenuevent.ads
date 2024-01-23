-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qcontextmenuevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QContextMenuEvent.Reason;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QInputEvent;
package QtAda6.QtGui.QContextMenuEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QInputEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) return Class;
   function Create
     (reason_P : access QtAda6.QtGui.QContextMenuEvent.Reason.Inst'Class;
      pos_P    : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create
     (reason_P    : access QtAda6.QtGui.QContextMenuEvent.Reason.Inst'Class;
      pos_P       : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QContextMenuEvent.Inst'Class;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function globalX (self : access Inst) return int;
   function globalY (self : access Inst) return int;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function reason_F (self : access Inst) return access QtAda6.QtGui.QContextMenuEvent.Reason.Inst'Class;
   function x (self : access Inst) return int;
   function y (self : access Inst) return int;
end QtAda6.QtGui.QContextMenuEvent;
