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
limited with QtAda6.QtCore.QCborKnownTags;
limited with QtAda6.QtCore.QCborSimpleType;
limited with QtAda6.QtCore.QCborTag;
limited with QtAda6.QtCore.QCborValue.Type_K;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QCborArray;
limited with QtAda6.QtCore.QJsonValue;
with QtAda6.QtCore.QCborValue;
package QtAda6.QtCore.QCborMap is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint is
     new Any;
   type DICT_strQtAda6_QtCore_QJsonValue is new Any;
   type DICT_strAny is new Any;
   subtype LIST_QtAda6_QtCore_QCborValue is QtAda6.QtCore.QCborValue.Class_Array;
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
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return bool;
   function empty (self : access Inst) return bool;
   function fromJsonObject (o_P : DICT_strQtAda6_QtCore_QJsonValue) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function fromVariantHash (hash_P : DICT_strAny) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function fromVariantMap (map_P : DICT_strAny) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function keys (self : access Inst) return LIST_QtAda6_QtCore_QCborValue;
   procedure remove (self : access Inst; key_P : str);
   procedure remove (self : access Inst; key_P : int);
   procedure remove
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   function take (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function take
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toCborValue (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toJsonObject (self : access Inst) return DICT_strQtAda6_QtCore_QJsonValue;
   function toVariantHash (self : access Inst) return DICT_strAny;
   function toVariantMap (self : access Inst) return DICT_strAny;
   function value (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function value
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
end QtAda6.QtCore.QCborMap;
