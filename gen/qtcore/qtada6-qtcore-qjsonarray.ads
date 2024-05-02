-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonarray.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QJsonValue;
limited with QtAda6.QtCore.QJsonValue.Type_K;
package QtAda6.QtCore.QJsonArray is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int is record
      C0 : str;
      C1 : access QtAda6.QtCore.QJsonValue.Inst'Class;
      C2 : str;
      C3 : bytes;
      C4 : float;
      C5 : int;
   end record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type SEQUENCE_Any is array (Positive range <>) of Any;
   type LIST_Any is array (Positive range <>) of Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonValue.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_add_U (self : access Inst; v_P : bool) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_add_U
     (self : access Inst; v_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonValue.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_iadd_U (self : access Inst; v_P : bool) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_iadd_U
     (self : access Inst; v_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonValue.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_lshift_U (self : access Inst; v_P : bool) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function U_lshift_U
     (self : access Inst; v_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QJsonArray.Inst'Class;
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QJsonValue.Inst'Class);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class);
   procedure append (self : access Inst; value_P : bool);
   procedure append (self : access Inst; value_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure append (self : access Inst; value_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function contains (self : access Inst; element_P : access QtAda6.QtCore.QJsonValue.Inst'Class) return bool;
   function contains (self : access Inst; element_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class) return bool;
   function contains (self : access Inst; element_P : bool) return bool;
   function contains (self : access Inst; element_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return bool;
   function contains
     (self : access Inst; element_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int) return bool;
   function count (self : access Inst) return int;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function fromStringList (list_P : SEQUENCE_str) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function fromVariantList (list_P : SEQUENCE_Any) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QJsonValue.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : bool);
   procedure insert (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure insert (self : access Inst; i_P : int; value_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function isEmpty (self : access Inst) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QJsonValue.Inst'Class);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class);
   procedure prepend (self : access Inst; value_P : bool);
   procedure prepend (self : access Inst; value_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure prepend (self : access Inst; value_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QJsonValue.Inst'Class);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class);
   procedure push_back (self : access Inst; t_P : bool);
   procedure push_back (self : access Inst; t_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure push_back (self : access Inst; t_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QJsonValue.Inst'Class);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class);
   procedure push_front (self : access Inst; t_P : bool);
   procedure push_front (self : access Inst; t_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure push_front (self : access Inst; t_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   procedure replace (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QJsonValue.Inst'Class);
   procedure replace (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class);
   procedure replace (self : access Inst; i_P : int; value_P : bool);
   procedure replace (self : access Inst; i_P : int; value_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure replace (self : access Inst; i_P : int; value_P : DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function toVariantList (self : access Inst) return LIST_Any;
end QtAda6.QtCore.QJsonArray;
