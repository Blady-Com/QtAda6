-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qxmlstreamattributes.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QXmlStreamAttribute;
package body QtAda6.QtCore.QXmlStreamAttributes is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttributes");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QXmlStreamAttributes_P : access QtAda6.QtCore.QXmlStreamAttributes.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttributes");
      Args  := Tuple_New (1);
      Tuple_SetItem
        (Args, 0, (if QXmlStreamAttributes_P /= null then QXmlStreamAttributes_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute)
      return LIST_QtAda6_QtCore_QXmlStreamAttribute
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      List   := List_New (l_P'Length);
      for ind in l_P'Range loop
         List_SetItem
           (List, ssize_t (ind - l_P'First), (if l_P (ind) /= null then l_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttributes");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute)
      return LIST_QtAda6_QtCore_QXmlStreamAttribute
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      List   := List_New (l_P'Length);
      for ind in l_P'Range loop
         List_SetItem
           (List, ssize_t (ind - l_P'First), (if l_P (ind) /= null then l_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end U_lshift_U;
   procedure append (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end append;
   procedure append (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      List   := List_New (l_P'Length);
      for ind in l_P'Range loop
         List_SetItem
           (List, ssize_t (ind - l_P'First), (if l_P (ind) /= null then l_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end append;
   procedure append (self : access Inst; namespaceUri_P : str; name_P : str; value_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (value_P));
      Result := Object_CallObject (Method, Args, True);
   end append;
   procedure append (self : access Inst; qualifiedName_P : str; value_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      Result := Object_CallObject (Method, Args, True);
   end append;
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "at");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end at_K;
   function back (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "back");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end back;
   function capacity (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capacity;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function constData (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constData");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constData;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constFirst");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constFirst;
   function constLast (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constLast");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constLast;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function data (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "data");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end data;
   function empty (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "empty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end empty;
   function first (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "first");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end first;
   function first (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "first");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end first;
   function fromVector
     (vector_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute) return LIST_QtAda6_QtCore_QXmlStreamAttribute
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttributes");
      Method := Object_GetAttrString (Class, "fromVector");
      List   := List_New (vector_P'Length);
      for ind in vector_P'Range loop
         List_SetItem
           (List, ssize_t (ind - vector_P'First),
            (if vector_P (ind) /= null then vector_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end fromVector;
   function front (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "front");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end front;
   function hasAttribute (self : access Inst; namespaceUri_P : str; name_P : str) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAttribute");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAttribute;
   function hasAttribute (self : access Inst; qualifiedName_P : str) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAttribute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAttribute;
   procedure insert (self : access Inst; arg_1_P : int; arg_2_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insert;
   function isEmpty (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isSharedWith (self : access Inst; other_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSharedWith");
      List   := List_New (other_P'Length);
      for ind in other_P'Range loop
         List_SetItem
           (List, ssize_t (ind - other_P'First),
            (if other_P (ind) /= null then other_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSharedWith;
   function last (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "last");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end last;
   function last (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "last");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end last;
   function length (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end length;
   function mid (self : access Inst; pos_P : int; len_P : int := 0) return LIST_QtAda6_QtCore_QXmlStreamAttribute is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mid");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end mid;
   procedure move (self : access Inst; from_U_P : int; to_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "move");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (to_P));
      Result := Object_CallObject (Method, Args, True);
   end move;
   procedure prepend (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end prepend;
   procedure push_back (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_back");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end push_back;
   procedure push_front (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_front");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end push_front;
   procedure remove (self : access Inst; i_P : int; n_P : int := 0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   procedure removeAll (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAll");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeAll;
   procedure removeAt (self : access Inst; i_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
   end removeAt;
   procedure removeFirst (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeFirst");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeFirst;
   procedure removeLast (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeLast");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeLast;
   procedure removeOne (self : access Inst; arg_1_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeOne");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeOne;
   procedure reserve (self : access Inst; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reserve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end reserve;
   procedure resize (self : access Inst; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure shrink_to_fit (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shrink_to_fit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end shrink_to_fit;
   function size (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   function sliced (self : access Inst; pos_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end sliced;
   function sliced (self : access Inst; pos_P : int; n_P : int) return LIST_QtAda6_QtCore_QXmlStreamAttribute is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end sliced;
   procedure squeeze (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "squeeze");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end squeeze;
   procedure swap (self : access Inst; other_P : SEQUENCE_QtAda6_QtCore_QXmlStreamAttribute) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      List   := List_New (other_P'Length);
      for ind in other_P'Range loop
         List_SetItem
           (List, ssize_t (ind - other_P'First),
            (if other_P (ind) /= null then other_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swapItemsAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (j_P));
      Result := Object_CallObject (Method, Args, True);
   end swapItemsAt;
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttribute.Class := new QtAda6.QtCore.QXmlStreamAttribute.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAt;
   function toVector (self : access Inst) return LIST_QtAda6_QtCore_QXmlStreamAttribute is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVector");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end toVector;
   function value (self : access Inst; namespaceUri_P : str; name_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end value;
   function value (self : access Inst; qualifiedName_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end value;
end QtAda6.QtCore.QXmlStreamAttributes;
