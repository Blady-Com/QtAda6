-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethodqueryevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QInputMethodQueryEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QInputMethodQueryEvent.Inst'Class) return Class;
   function Create (queries_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QInputMethodQueryEvent.Inst'Class;
   function queries (self : access Inst) return access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class;
   procedure setValue
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; value_P : Any);
   function value (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
end QtAda6.QtGui.QInputMethodQueryEvent;
