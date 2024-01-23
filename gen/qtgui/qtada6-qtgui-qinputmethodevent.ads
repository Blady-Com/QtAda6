-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethodevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QInputMethodEvent.Attribute;
package QtAda6.QtGui.QInputMethodEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   subtype SEQUENCE_QtAda6_QtGui_QInputMethodEvent_Attribute is QtAda6.QtGui.QInputMethodEvent.Attribute.Class_Array;
   subtype LIST_QtAda6_QtGui_QInputMethodEvent_Attribute is QtAda6.QtGui.QInputMethodEvent.Attribute.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) return Class;
   function Create (preeditText_P : str; attributes_P : SEQUENCE_QtAda6_QtGui_QInputMethodEvent_Attribute) return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function attributes (self : access Inst) return LIST_QtAda6_QtGui_QInputMethodEvent_Attribute;
   function clone (self : access Inst) return access QtAda6.QtGui.QInputMethodEvent.Inst'Class;
   function commitString (self : access Inst) return str;
   function preeditString (self : access Inst) return str;
   function replacementLength (self : access Inst) return int;
   function replacementStart (self : access Inst) return int;
   procedure setCommitString
     (self : access Inst; commitString_P : str; replaceFrom_P : int := 0; replaceLength_P : int := 0);
end QtAda6.QtGui.QInputMethodEvent;
