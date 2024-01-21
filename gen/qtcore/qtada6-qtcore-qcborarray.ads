-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborarray.ads
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
limited with QtAda6.QtCore.QCborMap;
limited with QtAda6.QtCore.QJsonArray;
package QtAda6.QtCore.QCborArray is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint is
     new Any;
   type SEQUENCE_str is array (Positive range <>) of str;
   type SEQUENCE_Any is array (Positive range <>) of Any;
   type LIST_Any is array (Positive range <>) of Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QCborArray.Inst'Class) return Class;
   function U_add_U
     (self : access Inst;
      v_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst;
      v_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst;
      v_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   procedure append
     (self    : access Inst;
      value_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   procedure clear (self : access Inst);
   function compare (self : access Inst; other_P : access QtAda6.QtCore.QCborArray.Inst'Class) return int;
   function contains
     (self    : access Inst;
      value_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return bool;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromJsonArray
     (array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function fromStringList (list_P : SEQUENCE_str) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function fromVariantList (list_P : SEQUENCE_Any) return access QtAda6.QtCore.QCborArray.Inst'Class;
   procedure insert
     (self    : access Inst; i_P : int;
      value_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   function isEmpty (self : access Inst) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend
     (self    : access Inst;
      value_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   procedure push_back
     (self : access Inst;
      t_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   procedure push_front
     (self : access Inst;
      t_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function takeFirst (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function takeLast (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toCborValue (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toJsonArray (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function toVariantList (self : access Inst) return LIST_Any;
end QtAda6.QtCore.QCborArray;
