-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonarray.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QJsonValue;
limited with QtAda6.QtCore.QJsonValue.Type_K;
package QtAda6.QtCore.QJsonArray is
   type Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int is
     access Any;
   type Sequence_str is access Any;
   type Sequence_Any is access Any;
   type List_Any is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class;
   function U_add_U
     (self : access Inst;
      v_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst;
      v_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_lshift_U
     (self : access Inst;
      v_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   procedure append
     (self    : access Inst;
      value_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function contains
     (self      : access Inst;
      element_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return bool;
   function count (self : access Inst) return int;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function fromStringList (list_P : Sequence_str) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function fromVariantList (list_P : Sequence_Any) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   procedure insert
     (self    : access Inst; i_P : int;
      value_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function isEmpty (self : access Inst) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend
     (self    : access Inst;
      value_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   procedure push_back
     (self : access Inst;
      t_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   procedure push_front
     (self : access Inst;
      t_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   procedure replace
     (self    : access Inst; i_P : int;
      value_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function toVariantList (self : access Inst) return List_Any;
end QtAda6.QtCore.QJsonArray;
