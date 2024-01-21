-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-metasignal.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.MetaSignal is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new type_K with null record;
   procedure Finalize (Self : in out Class);
   function U_instancecheck_U (self : access Inst; object_P : access Object'Class) return bool;
end QtAda6.QtCore.MetaSignal;
