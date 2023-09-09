-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qitemselection.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.QItemSelectionRange;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
package body QtAda6.QtCore.QItemSelection is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QItemSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QItemSelection_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (topLeft_P     : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QItemSelection.Class := new QtAda6.QtCore.QItemSelection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; l_P : Sequence_QtAda6_QtCore_QItemSelectionRange)
      return List_QtAda6_QtCore_QItemSelectionRange
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_iadd_U;
   function U_lshift_U
     (self : access Inst; l_P : Sequence_QtAda6_QtCore_QItemSelectionRange)
      return List_QtAda6_QtCore_QItemSelectionRange
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_lshift_U;
   procedure append (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end append;
   procedure append (self : access Inst; l_P : Sequence_QtAda6_QtCore_QItemSelectionRange) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end append;
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "at");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end at_K;
   function back (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "back");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end back;
   function capacity (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capacity;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function constData (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constData");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constData;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constFirst");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constFirst;
   function constLast (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constLast");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constLast;
   function contains
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function count (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function data (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "data");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end data;
   function empty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "empty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end empty;
   function first (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "first");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end first;
   function first (self : access Inst; n_P : int) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "first");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end first;
   function fromList (list_P : Sequence_QtAda6_QtCore_QItemSelectionRange) return List_QtAda6_QtCore_QItemSelectionRange
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Method := Object_GetAttrString (Class, "fromList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end fromList;
   function fromVector
     (vector_P : Sequence_QtAda6_QtCore_QItemSelectionRange) return List_QtAda6_QtCore_QItemSelectionRange
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Method := Object_GetAttrString (Class, "fromVector");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end fromVector;
   function front (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "front");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end front;
   function indexes (self : access Inst) return List_QtAda6_QtCore_QModelIndex is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end indexes;
   procedure insert (self : access Inst; arg_1_P : int; arg_2_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end insert;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isSharedWith (self : access Inst; other_P : Sequence_QtAda6_QtCore_QItemSelectionRange) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSharedWith");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSharedWith;
   function last (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "last");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end last;
   function last (self : access Inst; n_P : int) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "last");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end last;
   function length (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end length;
   procedure merge
     (self      : access Inst; other_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "merge");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Tuple_SetItem (Args, 1, command_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end merge;
   function mid (self : access Inst; pos_P : int; len_P : int) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mid");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end mid;
   procedure move (self : access Inst; from_U_P : int; to_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "move");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (to_P));
      Result := Object_CallObject (Method, Args, True);
   end move;
   procedure pop_back (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pop_back");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end pop_back;
   procedure pop_front (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pop_front");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end pop_front;
   procedure prepend (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end prepend;
   procedure push_back (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_back");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end push_back;
   procedure push_front (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_front");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end push_front;
   procedure remove (self : access Inst; i_P : int; n_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   procedure removeAll (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAll");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end removeAll;
   procedure removeAt (self : access Inst; i_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
   end removeAt;
   procedure removeFirst (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeFirst");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeFirst;
   procedure removeLast (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeLast");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeLast;
   procedure removeOne (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeOne");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end removeOne;
   procedure reserve (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reserve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end reserve;
   procedure resize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure select_K
     (self          : access Inst; topLeft_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end select_K;
   procedure shrink_to_fit (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shrink_to_fit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end shrink_to_fit;
   function size (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   function sliced (self : access Inst; pos_P : int) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end sliced;
   function sliced (self : access Inst; pos_P : int; n_P : int) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end sliced;
   procedure split
     (range_K_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
      other_P   : access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
      result_P  : access QtAda6.QtCore.QItemSelection.Inst'Class)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelection");
      Method := Object_GetAttrString (Class, "split");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, range_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, other_P.Python_Proxy);
      Tuple_SetItem (Args, 2, result_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end split;
   procedure squeeze (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "squeeze");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end squeeze;
   procedure swap (self : access Inst; other_P : Sequence_QtAda6_QtCore_QItemSelectionRange) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swapItemsAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (j_P));
      Result := Object_CallObject (Method, Args, True);
   end swapItemsAt;
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAt;
   function toList (self : access Inst) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toList;
   function toVector (self : access Inst) return List_QtAda6_QtCore_QItemSelectionRange is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVector");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toVector;
   function value (self : access Inst; i_P : int) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionRange.Class := new QtAda6.QtCore.QItemSelectionRange.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end value;
end QtAda6.QtCore.QItemSelection;
