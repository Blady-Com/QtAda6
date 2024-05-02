-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qgenericreturnargumentholder.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMetaType;
limited with QtAda6.QtCore.QMetaType.Type_K;
limited with QtAda6.QtCore.QGenericReturnArgument;
package QtAda6.QtCore.QGenericReturnArgumentHolder is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class) return Class;
   function Create (type_K_P : access QtAda6.QtCore.QMetaType.Inst'Class; aData_P : int) return Class;
   function Create (type_K_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; aData_P : int) return Class;
   procedure U_copy_U;
   function data (self : access Inst) return int;
   function metaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function toGenericReturnArgument (self : access Inst) return access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
end QtAda6.QtCore.QGenericReturnArgumentHolder;
