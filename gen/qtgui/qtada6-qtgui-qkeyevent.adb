-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qkeyevent.adb
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
with QtAda6.QtGui.QInputEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QInputDevice;
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtGui.QKeySequence.StandardKey;
package body QtAda6.QtGui.QKeyEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeyEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P           : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; key_P : int;
      modifiers_P        : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; nativeScanCode_P : int;
      nativeVirtualKey_P : int; nativeModifiers_P : int; text_P : str := ""; autorep_P : bool := False;
      count_P            : int := 0; device_P : access QtAda6.QtGui.QInputDevice.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeyEvent");
      Args  := Tuple_New (10);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (key_P));
      Tuple_SetItem (Args, 2, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (nativeScanCode_P));
      Tuple_SetItem (Args, 4, Long_FromLong (nativeVirtualKey_P));
      Tuple_SetItem (Args, 5, Long_FromLong (nativeModifiers_P));
      Tuple_SetItem (Args, 6, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 7, To_Python (autorep_P));
      Tuple_SetItem (Args, 8, Long_FromLong (count_P));
      Tuple_SetItem (Args, 9, (if device_P /= null then device_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; key_P : int;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; text_P : str := ""; autorep_P : bool := False;
      count_P     : int := 0) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QKeyEvent");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (key_P));
      Tuple_SetItem (Args, 2, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 4, To_Python (autorep_P));
      Tuple_SetItem (Args, 5, Long_FromLong (count_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_repr_U;
   function clone (self : access Inst) return access QtAda6.QtGui.QKeyEvent.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QKeyEvent.Class := new QtAda6.QtGui.QKeyEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function isAutoRepeat (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAutoRepeat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAutoRepeat;
   function key (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "key");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end key;
   function keyCombination (self : access Inst) return access QtAda6.QtCore.QKeyCombination.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QKeyCombination.Class := new QtAda6.QtCore.QKeyCombination.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "keyCombination");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end keyCombination;
   function matches (self : access Inst; key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end matches;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "modifiers");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modifiers;
   function nativeModifiers (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeModifiers");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end nativeModifiers;
   function nativeScanCode (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeScanCode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end nativeScanCode;
   function nativeVirtualKey (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeVirtualKey");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end nativeVirtualKey;
   function text (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
end QtAda6.QtGui.QKeyEvent;
