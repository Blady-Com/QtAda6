-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qgenericargumentholder.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMetaType;
limited with QtAda6.QtCore.QMetaType.Type_K;
limited with QtAda6.QtCore.QGenericArgument;
package QtAda6.QtCore.QGenericArgumentHolder is
   type Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class) return Class;
   function Create
     (type_K_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K; aData_P : int) return Class;
   procedure U_copy_U;
   function data (self : access Inst) return int;
   function metaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function toGenericArgument (self : access Inst) return access QtAda6.QtCore.QGenericArgument.Inst'Class;
end QtAda6.QtCore.QGenericArgumentHolder;
