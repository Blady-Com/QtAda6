-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
package QtAda6.QtCore.QEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return Class;
   function Create (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class) return Class;
   function U_repr_U (self : access Inst) return Object;
   procedure accept_K (self : access Inst);
   function clone (self : access Inst) return access QtAda6.QtCore.QEvent.Inst'Class;
   procedure ignore (self : access Inst);
   function isAccepted (self : access Inst) return bool;
   function isInputEvent (self : access Inst) return bool;
   function isPointerEvent (self : access Inst) return bool;
   function isSinglePointEvent (self : access Inst) return bool;
   function registerEventType (hint_P : int) return int;
   procedure setAccepted (self : access Inst; accepted_P : bool);
   function spontaneous (self : access Inst) return bool;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
end QtAda6.QtCore.QEvent;
