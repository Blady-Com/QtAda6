-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonvalue.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QJsonArray;
limited with QtAda6.QtCore.QJsonValue.Type_K;
package QtAda6.QtCore.QJsonValue is
   type Dict_str_QtAda6_QtCore_QJsonValue is access Any;
   type Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int is
     access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (a_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class) return Class;
   function Create (b_P : bool) return Class;
   function Create (n_P : float) return Class;
   function Create (n_P : int) return Class;
   function Create (o_P : Dict_str_QtAda6_QtCore_QJsonValue) return Class;
   function Create
     (other_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return Class;
   function Create (s_P : str) return Class;
   function Create (s_P : bytes) return Class;
-- function Create(v_P : int) return Class;
   procedure U_copy_U;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function isArray (self : access Inst) return bool;
   function isBool (self : access Inst) return bool;
   function isDouble (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isObject (self : access Inst) return bool;
   function isString (self : access Inst) return bool;
   function isUndefined (self : access Inst) return bool;
   procedure swap
     (self    : access Inst;
      other_P : Union_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_Dict_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function toArray (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function toArray
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function toBool (self : access Inst; defaultValue_P : bool) return bool;
   function toDouble (self : access Inst; defaultValue_P : float) return float;
   function toInt (self : access Inst; defaultValue_P : int) return int;
   function toInteger (self : access Inst; defaultValue_P : int) return int;
   function toObject (self : access Inst) return Dict_str_QtAda6_QtCore_QJsonValue;
   function toObject
     (self : access Inst; defaultValue_P : Dict_str_QtAda6_QtCore_QJsonValue) return Dict_str_QtAda6_QtCore_QJsonValue;
   function toString (self : access Inst) return str;
   function toString (self : access Inst; defaultValue_P : str) return str;
   function toVariant (self : access Inst) return Any;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class;
end QtAda6.QtCore.QJsonValue;
