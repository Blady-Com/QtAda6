-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qkeysequence.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.Key;
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtGui.QKeySequence.SequenceFormat;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QKeySequence.SequenceMatch;
package body QtAda6.QtGui.QKeySequence is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (k1_P : int; k2_P : int := 0; k3_P : int := 0; k4_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (k1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (k2_P));
      Tuple_SetItem (Args, 2, Long_FromLong (k3_P));
      Tuple_SetItem (Args, 3, Long_FromLong (k4_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (k1_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key;
      k2_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key := null;
      k3_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key := null;
      k4_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if k1_P /= null then k1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if k2_P /= null then k2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if k3_P /= null then k3_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if k4_P /= null then k4_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (key_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (ks_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ks_P /= null then ks_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if in_U_P /= null then in_U_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_repr_U;
   function U_rshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if out_K_P /= null then out_K_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function fromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null)
      return access QtAda6.QtGui.QKeySequence.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isEmpty (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function keyBindings
     (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return LIST_QtAda6_QtGui_QKeySequence
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "keyBindings");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end keyBindings;
   function listFromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null)
      return LIST_QtAda6_QtGui_QKeySequence
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "listFromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end listFromString;
   function listToString
     (list_P   : SEQUENCE_QtAda6_QtGui_QKeySequence;
      format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return str
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "listToString");
      List   := List_New (list_P'Length);
      for ind in list_P'Range loop
         List_SetItem
           (List, ssize_t (ind - list_P'First), (if list_P (ind) /= null then list_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end listToString;
   function matches
     (self  : access Inst;
      seq_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if seq_P /= null then seq_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function mnemonic (text_P : str) return access QtAda6.QtGui.QKeySequence.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "mnemonic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mnemonic;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toString
     (self : access Inst; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
end QtAda6.QtGui.QKeySequence;
