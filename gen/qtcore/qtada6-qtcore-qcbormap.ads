-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcbormap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCborValue;
limited with QtAda6.QtCore.QCborKnownTags;
limited with QtAda6.QtCore.QCborSimpleType;
limited with QtAda6.QtCore.QCborTag;
limited with QtAda6.QtCore.QCborValue.Type_K;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QCborArray;
limited with QtAda6.QtCore.QJsonValue;
package QtAda6.QtCore.QCborMap is
   type Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int is
     access Any;
   type Dict_str_QtAda6_QtCore_QJsonValue is access Any;
   type Dict_str_Any is access Any;
   type List_QtAda6_QtCore_QCborValue is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QCborMap.Inst'Class) return Class;
   procedure U_copy_U;
   procedure clear (self : access Inst);
   function compare (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class) return int;
   function contains (self : access Inst; key_P : str) return bool;
   function contains (self : access Inst; key_P : int) return bool;
   function contains
     (self  : access Inst;
      key_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return bool;
   function empty (self : access Inst) return bool;
   function fromJsonObject (o_P : Dict_str_QtAda6_QtCore_QJsonValue) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function fromVariantHash (hash_P : Dict_str_Any) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function fromVariantMap (map_P : Dict_str_Any) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function keys (self : access Inst) return List_QtAda6_QtCore_QCborValue;
   procedure remove (self : access Inst; key_P : str);
   procedure remove (self : access Inst; key_P : int);
   procedure remove
     (self  : access Inst;
      key_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   function take (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self  : access Inst;
      key_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toCborValue (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toJsonObject (self : access Inst) return Dict_str_QtAda6_QtCore_QJsonValue;
   function toVariantHash (self : access Inst) return Dict_str_Any;
   function toVariantMap (self : access Inst) return Dict_str_Any;
   function value (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self  : access Inst;
      key_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
end QtAda6.QtCore.QCborMap;
