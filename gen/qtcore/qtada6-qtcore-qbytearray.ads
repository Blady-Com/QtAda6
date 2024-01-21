-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbytearray.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.CaseSensitivity;
limited with QtAda6.QtCore.QByteArray.Base64Option;
limited with QtAda6.QtCore.QByteArray.FromBase64Result;
package QtAda6.QtCore.QByteArray is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : bytearray) return Class;
   function Create (arg_1_P : bytes) return Class;
   function Create (arg_1_P : bytes; size_P : int := 0) return Class;
   function Create (arg_1_P : UNION_QtAda6_QtCore_QByteArraybytes) return Class;
   function Create (size_P : int; c_P : int) return Class;
   function U_add_U (self : access Inst; a2_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_add_U
     (self : access Inst; a2_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_add_U (self : access Inst; arg_1_P : bytearray) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure U_add_U (self : access Inst; arg_1_P : bytes);
-- function U_add_U(self : access Inst;rhs_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_add_U (self : access Inst; rhs_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
-- function U_add_U(self : access Inst;rhs_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_add_U (self : access Inst; s_P : str) return str;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; a_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_iadd_U (self : access Inst; arg_1_P : bytearray) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_iadd_U (self : access Inst; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_str_U (self : access Inst) return access Object'Class;
   function append
     (self : access Inst; a_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function append (self : access Inst; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function append (self : access Inst; count_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function append (self : access Inst; s_P : bytes; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function at_K (self : access Inst; i_P : int) return int;
   function back (self : access Inst) return int;
   function capacity (self : access Inst) return int;
   function cbegin (self : access Inst) return bytes;
   function cend (self : access Inst) return bytes;
   procedure chop (self : access Inst; n_P : int);
   function chopped (self : access Inst; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure clear (self : access Inst);
   function compare
     (self : access Inst; a_P : UNION_QtAda6_QtCore_QByteArraybytes;
      cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class := null) return int;
   function contains (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes) return bool;
   function contains (self : access Inst; c_P : int) return bool;
   function count (self : access Inst) return int;
   function count (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes) return int;
   function count (self : access Inst; c_P : int) return int;
   function data (self : access Inst) return bytes;
   function endsWith (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes) return bool;
   function endsWith (self : access Inst; c_P : int) return bool;
   function erase (self : access Inst; first_P : bytes; last_P : bytes) return bytes;
   function erase (self : access Inst; it_P : bytes) return bytes;
   function fill (self : access Inst; c_P : int; size_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function first (self : access Inst; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function fromBase64_F
     (base64_P  : UNION_QtAda6_QtCore_QByteArraybytes;
      options_P : access QtAda6.QtCore.QByteArray.Base64Option.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function fromBase64Encoding
     (base64_P  : UNION_QtAda6_QtCore_QByteArraybytes;
      options_P : access QtAda6.QtCore.QByteArray.Base64Option.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.FromBase64Result.Inst'Class;
   function fromHex
     (hexEncoded_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function fromPercentEncoding
     (pctEncoded_P : UNION_QtAda6_QtCore_QByteArraybytes; percent_P : int := 0)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function fromRawData (data_P : bytes; size_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function fromStdString (s_P : str) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function front (self : access Inst) return int;
   function indexOf (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes; from_U_P : int := 0) return int;
   function indexOf (self : access Inst; c_P : int; from_U_P : int := 0) return int;
   function insert (self : access Inst; i_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function insert
     (self : access Inst; i_P : int; count_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function insert
     (self : access Inst; i_P : int; data_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function insert (self : access Inst; i_P : int; s_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function insert
     (self : access Inst; i_P : int; s_P : bytes; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function isLower (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isSharedWith (self : access Inst; other_P : UNION_QtAda6_QtCore_QByteArraybytes) return bool;
   function isUpper (self : access Inst) return bool;
   function isValidUtf8 (self : access Inst) return bool;
   function last (self : access Inst; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function lastIndexOf (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes) return int;
   function lastIndexOf (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes; from_U_P : int) return int;
   function lastIndexOf (self : access Inst; c_P : int; from_U_P : int := 0) return int;
   function left (self : access Inst; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function leftJustified
     (self : access Inst; width_P : int; fill_P : int := 0; truncate_P : bool := False)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function length (self : access Inst) return int;
   function mid (self : access Inst; index_P : int; len_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function number
     (arg_1_P : float; format_P : int := 0; precision_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function number (arg_1_P : int; base_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
-- function number(arg_1_P : int;base_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function percentDecoded (self : access Inst; percent_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function prepend
     (self : access Inst; a_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function prepend (self : access Inst; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function prepend (self : access Inst; count_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function prepend (self : access Inst; s_P : bytes; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure push_back (self : access Inst; a_P : UNION_QtAda6_QtCore_QByteArraybytes);
   procedure push_front (self : access Inst; a_P : UNION_QtAda6_QtCore_QByteArraybytes);
   function remove (self : access Inst; index_P : int; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function removeAt (self : access Inst; pos_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function removeFirst (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function removeLast (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function repeated (self : access Inst; times_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function replace
     (self : access Inst; before_P : bytes; bsize_P : int; after_P : bytes; asize_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function replace
     (self : access Inst; before_P : int; after_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function replace
     (self : access Inst; before_P : int; after_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function replace
     (self : access Inst; before_P : UNION_QtAda6_QtCore_QByteArraybytes; after_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function replace
     (self : access Inst; index_P : int; len_P : int; s_P : bytes; alen_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function replace
     (self : access Inst; index_P : int; len_P : int; s_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure reserve (self : access Inst; size_P : int);
   procedure resize (self : access Inst; size_P : int);
   procedure resize (self : access Inst; size_P : int; c_P : int);
   function right (self : access Inst; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function rightJustified
     (self : access Inst; width_P : int; fill_P : int := 0; truncate_P : bool := False)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function setNum
     (self : access Inst; arg_1_P : float; format_P : int := 0; precision_P : int := 0)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function setNum
     (self : access Inst; arg_1_P : int; base_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
-- function setNum(self : access Inst;arg_1_P : int;base_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function setRawData (self : access Inst; a_P : bytes; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure shrink_to_fit (self : access Inst);
   function simplified (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function size (self : access Inst) return int;
   function sliced (self : access Inst; pos_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function sliced (self : access Inst; pos_P : int; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function split (self : access Inst; sep_P : int) return LIST_QtAda6_QtCore_QByteArray;
   procedure squeeze (self : access Inst);
   function startsWith (self : access Inst; bv_P : UNION_QtAda6_QtCore_QByteArraybytes) return bool;
   function startsWith (self : access Inst; c_P : int) return bool;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QByteArraybytes);
   function toBase64
     (self : access Inst; options_P : access QtAda6.QtCore.QByteArray.Base64Option.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toDouble (self : access Inst) return float;
   function toFloat (self : access Inst) return float;
   function toHex (self : access Inst; separator_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toInt (self : access Inst; base_P : int := 0) return int;
   function toLong (self : access Inst; base_P : int := 0) return int;
   function toLongLong (self : access Inst; base_P : int := 0) return int;
   function toLower (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toPercentEncoding
     (self      : access Inst; exclude_P : UNION_QtAda6_QtCore_QByteArraybytes := null;
      include_P : UNION_QtAda6_QtCore_QByteArraybytes := null; percent_P : int := 0)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toShort (self : access Inst; base_P : int := 0) return int;
   function toStdString (self : access Inst) return str;
   function toUInt (self : access Inst; base_P : int := 0) return int;
   function toULong (self : access Inst; base_P : int := 0) return int;
   function toULongLong (self : access Inst; base_P : int := 0) return int;
   function toUShort (self : access Inst; base_P : int := 0) return int;
   function toUpper (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function trimmed (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure truncate (self : access Inst; pos_P : int);
end QtAda6.QtCore.QByteArray;
