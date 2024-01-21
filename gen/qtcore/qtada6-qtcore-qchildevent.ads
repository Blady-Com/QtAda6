-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qchildevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QEvent;
package QtAda6.QtCore.QChildEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtCore.QChildEvent.Inst'Class) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; child_P : access QtAda6.QtCore.QObject.Inst'Class)
      return Class;
   function added (self : access Inst) return bool;
   function child (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function clone (self : access Inst) return access QtAda6.QtCore.QChildEvent.Inst'Class;
   function polished (self : access Inst) return bool;
   function removed (self : access Inst) return bool;
end QtAda6.QtCore.QChildEvent;
