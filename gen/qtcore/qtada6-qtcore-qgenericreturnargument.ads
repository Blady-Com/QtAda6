-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qgenericreturnargument.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QGenericArgument;
package QtAda6.QtCore.QGenericReturnArgument is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QGenericArgument.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (QGenericReturnArgument_P : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class) return Class;
   function Create (aName_P : bytes := null; aData_P : int := 0) return Class;
   procedure U_copy_U;
end QtAda6.QtCore.QGenericReturnArgument;
