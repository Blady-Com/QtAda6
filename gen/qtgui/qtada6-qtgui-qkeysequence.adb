-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qkeysequence.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (k1_P : int; k2_P : int; k3_P : int; k4_P : int) return Class is
      Class, Args : Handle;
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
     (k1_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k2_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k3_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key;
      k4_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, key_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (key_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (ks_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
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
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, in_U_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function U_rshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, out_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function count (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function fromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class)
      return access QtAda6.QtGui.QKeySequence.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function keyBindings
     (key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return List_QtAda6_QtGui_QKeySequence
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "keyBindings");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, key_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end keyBindings;
   function listFromString
     (str_P : str; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class)
      return List_QtAda6_QtGui_QKeySequence
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "listFromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end listFromString;
   function listToString
     (list_P   : Sequence_QtAda6_QtGui_QKeySequence;
      format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class) return str
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeySequence");
      Method := Object_GetAttrString (Class, "listToString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end listToString;
   function matches
     (self  : access Inst;
      seq_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QKeySequence.SequenceMatch.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QKeySequence.SequenceMatch.Class := new QtAda6.QtGui.QKeySequence.SequenceMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matches;
   function mnemonic (text_P : str) return access QtAda6.QtGui.QKeySequence.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
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
      other_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toString
     (self : access Inst; format_P : access QtAda6.QtGui.QKeySequence.SequenceFormat.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
end QtAda6.QtGui.QKeySequence;
