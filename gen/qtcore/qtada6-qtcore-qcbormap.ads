-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcbormap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
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
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type DICT_str_QtAda6_QtCore_QJsonValue is record
      C0 : str;
      C1 : access QtAda6.QtCore.QJsonValue.Inst'Class;
   end record;
   type DICT_str_Any is record
      C0 : str;
      C1 : Any;
   end record;
   subtype LIST_QtAda6_QtCore_QCborValue is QtAda6.QtCore.QCborValue.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QCborMap.Inst'Class) return Class;
   procedure U_copy_U;
   procedure clear (self : access Inst);
   function compare (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class) return int;
   function contains (self : access Inst; key_P : str) return bool;
   function contains (self : access Inst; key_P : int) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Inst'Class) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborTag.Inst'Class) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class) return bool;
-- function contains(self : access Inst;key_P : str) return bool;
   function contains (self : access Inst; key_P : bool) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QByteArray.Inst'Class) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborArray.Inst'Class) return bool;
   function contains (self : access Inst; key_P : access QtAda6.QtCore.QCborMap.Inst'Class) return bool;
   function contains (self : access Inst; key_P : bytes) return bool;
   function contains (self : access Inst; key_P : float) return bool;
-- function contains(self : access Inst;key_P : int) return bool;
   function empty (self : access Inst) return bool;
   function fromJsonObject (o_P : DICT_str_QtAda6_QtCore_QJsonValue) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function fromVariantHash (hash_P : DICT_str_Any) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function fromVariantMap (map_P : DICT_str_Any) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function keys (self : access Inst) return LIST_QtAda6_QtCore_QCborValue;
   procedure remove (self : access Inst; key_P : str);
   procedure remove (self : access Inst; key_P : int);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Inst'Class);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborTag.Inst'Class);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class);
-- procedure remove(self : access Inst;key_P : str);
   procedure remove (self : access Inst; key_P : bool);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   procedure remove (self : access Inst; key_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   procedure remove (self : access Inst; key_P : bytes);
   procedure remove (self : access Inst; key_P : float);
-- procedure remove(self : access Inst;key_P : int);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   function take (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborTag.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
-- function take(self : access Inst;key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take (self : access Inst; key_P : bool) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self : access Inst; key_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take (self : access Inst; key_P : bytes) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take (self : access Inst; key_P : float) return access QtAda6.QtCore.QCborValue.Inst'Class;
-- function take(self : access Inst;key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toCborValue (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toJsonObject (self : access Inst) return DICT_str_QtAda6_QtCore_QJsonValue;
   function toVariantHash (self : access Inst) return DICT_str_Any;
   function toVariantMap (self : access Inst) return DICT_str_Any;
   function value (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborTag.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
-- function value(self : access Inst;key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value (self : access Inst; key_P : bool) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self : access Inst; key_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value (self : access Inst; key_P : bytes) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value (self : access Inst; key_P : float) return access QtAda6.QtCore.QCborValue.Inst'Class;
-- function value(self : access Inst;key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
end QtAda6.QtCore.QCborMap;
