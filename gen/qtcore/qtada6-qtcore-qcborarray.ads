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
   type SEQUENCE_str is array (Positive range <>) of str;
   type SEQUENCE_Any is array (Positive range <>) of Any;
   type LIST_Any is array (Positive range <>) of Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QCborArray.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborValue.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborTag.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U (self : access Inst; v_P : str) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U (self : access Inst; v_P : bool) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U (self : access Inst; v_P : bytes) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U (self : access Inst; v_P : float) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_add_U (self : access Inst; v_P : int) return access QtAda6.QtCore.QCborArray.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborValue.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborTag.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U (self : access Inst; v_P : str) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U (self : access Inst; v_P : bool) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U (self : access Inst; v_P : bytes) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U (self : access Inst; v_P : float) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_iadd_U (self : access Inst; v_P : int) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborValue.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborTag.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U (self : access Inst; v_P : str) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U (self : access Inst; v_P : bool) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U (self : access Inst; v_P : bytes) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U (self : access Inst; v_P : float) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function U_lshift_U (self : access Inst; v_P : int) return access QtAda6.QtCore.QCborArray.Inst'Class;
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborValue.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborTag.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class);
   procedure append (self : access Inst; value_P : str);
   procedure append (self : access Inst; value_P : bool);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   procedure append (self : access Inst; value_P : bytes);
   procedure append (self : access Inst; value_P : float);
   procedure append (self : access Inst; value_P : int);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class;
   procedure clear (self : access Inst);
   function compare (self : access Inst; other_P : access QtAda6.QtCore.QCborArray.Inst'Class) return int;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborValue.Inst'Class) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborTag.Inst'Class) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class) return bool;
   function contains (self : access Inst; value_P : str) return bool;
   function contains (self : access Inst; value_P : bool) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QByteArray.Inst'Class) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborArray.Inst'Class) return bool;
   function contains (self : access Inst; value_P : access QtAda6.QtCore.QCborMap.Inst'Class) return bool;
   function contains (self : access Inst; value_P : bytes) return bool;
   function contains (self : access Inst; value_P : float) return bool;
   function contains (self : access Inst; value_P : int) return bool;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromJsonArray
     (array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function fromStringList (list_P : SEQUENCE_str) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function fromVariantList (list_P : SEQUENCE_Any) return access QtAda6.QtCore.QCborArray.Inst'Class;
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborValue.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborTag.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : str);
   procedure insert (self : access Inst; i_P : int; value_P : bool);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : bytes);
   procedure insert (self : access Inst; i_P : int; value_P : float);
   procedure insert (self : access Inst; i_P : int; value_P : int);
   function isEmpty (self : access Inst) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class;
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborValue.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborTag.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class);
   procedure prepend (self : access Inst; value_P : str);
   procedure prepend (self : access Inst; value_P : bool);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   procedure prepend (self : access Inst; value_P : bytes);
   procedure prepend (self : access Inst; value_P : float);
   procedure prepend (self : access Inst; value_P : int);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborValue.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborTag.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class);
   procedure push_back (self : access Inst; t_P : str);
   procedure push_back (self : access Inst; t_P : bool);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   procedure push_back (self : access Inst; t_P : bytes);
   procedure push_back (self : access Inst; t_P : float);
   procedure push_back (self : access Inst; t_P : int);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborValue.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborTag.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class);
   procedure push_front (self : access Inst; t_P : str);
   procedure push_front (self : access Inst; t_P : bool);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborArray.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QCborMap.Inst'Class);
   procedure push_front (self : access Inst; t_P : bytes);
   procedure push_front (self : access Inst; t_P : float);
   procedure push_front (self : access Inst; t_P : int);
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
