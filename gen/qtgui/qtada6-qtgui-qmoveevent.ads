-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmoveevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QMoveEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QMoveEvent.Inst'Class) return Class;
   function Create
     (pos_P : access QtAda6.QtCore.QPoint.Inst'Class; oldPos_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QMoveEvent.Inst'Class;
   function oldPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
end QtAda6.QtGui.QMoveEvent;
