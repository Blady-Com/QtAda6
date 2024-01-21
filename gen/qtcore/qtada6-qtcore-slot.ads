-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-slot.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Slot is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Object with null record;
   type CALLABLE is new Any;
   procedure Finalize (Self : in out Class);
   function Create (types_P : Type_K_T; name_P : str := ""; result_P : str := "") return Class;
   function U_call_U (self : access Inst; function_K_P : CALLABLE) return Any;
end QtAda6.QtCore.Slot;
