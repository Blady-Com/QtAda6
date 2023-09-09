-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbitarray.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSysInfo.Endian;
package QtAda6.QtCore.QBitArray is
   type Union_QtAda6_QtCore_QBitArray_int is access Any;
   type Tuple_int_bool is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : Union_QtAda6_QtCore_QBitArray_int) return Class;
   function Create (size_P : int; val_P : bool) return Class;
   function U_and_U
     (self : access Inst; arg_2_P : Union_QtAda6_QtCore_QBitArray_int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   procedure U_copy_U;
   function U_iand_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QBitArray_int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function U_invert_U (self : access Inst) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function U_ior_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QBitArray_int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function U_ixor_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QBitArray_int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function U_or_U
     (self : access Inst; arg_2_P : Union_QtAda6_QtCore_QBitArray_int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function U_xor_U
     (self : access Inst; arg_2_P : Union_QtAda6_QtCore_QBitArray_int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function at_K (self : access Inst; i_P : int) return bool;
   function bits (self : access Inst) return bytes;
   procedure clear (self : access Inst);
   procedure clearBit (self : access Inst; i_P : int);
   function count (self : access Inst) return int;
   function count (self : access Inst; on_P : bool) return int;
   procedure fill (self : access Inst; val_P : bool; first_P : int; last_P : int);
   function fill (self : access Inst; val_P : bool; size_P : int) return bool;
   function fromBits (data_P : bytes; len_P : int) return access QtAda6.QtCore.QBitArray.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   procedure resize (self : access Inst; size_P : int);
   procedure setBit (self : access Inst; i_P : int);
   procedure setBit (self : access Inst; i_P : int; val_P : bool);
   function size (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QBitArray_int);
   function testBit (self : access Inst; i_P : int) return bool;
   function toUInt32
     (self : access Inst; endianness_P : access QtAda6.QtCore.QSysInfo.Endian.Inst'Class) return Tuple_int_bool;
   function toggleBit (self : access Inst; i_P : int) return bool;
   procedure truncate (self : access Inst; pos_P : int);
end QtAda6.QtCore.QBitArray;
