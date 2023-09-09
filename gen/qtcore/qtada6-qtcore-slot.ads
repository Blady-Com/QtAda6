-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-slot.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Slot is
   type Optional_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (types_P : type_K_T; name_P : Optional_str; result_P : Optional_str) return Class;
   function U_call_U (self : access Inst; function_K_P : Callable) return Any;
end QtAda6.QtCore.Slot;
