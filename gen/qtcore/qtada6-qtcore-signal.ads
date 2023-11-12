-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-signal.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
with QtAda6.QtCore.SignalInstance;
package QtAda6.QtCore.Signal is
   type Optional_str is access Any;
   type Optional_Any is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (types_P : type_K_T; name_P : Optional_str; arguments_P : Optional_str) return Class;
   function U_get_U
     (self : access Inst; instance_P : None; owner_P : Optional_Any) return access QtAda6.QtCore.Signal.Inst'Class;
   function U_get_U
     (self : access Inst; instance_P : access QtAda6.QtCore.QObject.Inst'Class; owner_P : Optional_Any)
      return access QtAda6.QtCore.SignalInstance.Inst'Class;
   function U_get_U (self : access Inst) return access QtAda6.QtCore.SignalInstance.Inst'Class;
end QtAda6.QtCore.Signal;
