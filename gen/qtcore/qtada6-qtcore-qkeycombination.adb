-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qkeycombination.adb
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
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.Key;
with QtAda6.QtCore.Qt.Modifier;
package body QtAda6.QtCore.QKeyCombination is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (arg_1_P : Union_QtAda6_QtCore_QKeyCombination_QtAda6_QtCore_Qt_KeyboardModifier_QtAda6_QtCore_Qt_Key) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QKeyCombination");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (key_P : access QtAda6.QtCore.Qt.Key.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QKeyCombination");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, key_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class; key_P : access QtAda6.QtCore.Qt.Key.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QKeyCombination");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, modifiers_P.Python_Proxy);
      Tuple_SetItem (Args, 1, key_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (modifiers_P : access QtAda6.QtCore.Qt.Modifier.Inst'Class; key_P : access QtAda6.QtCore.Qt.Key.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QKeyCombination");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, modifiers_P.Python_Proxy);
      Tuple_SetItem (Args, 1, key_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QKeyCombination");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function fromCombined (combined_P : int) return access QtAda6.QtCore.QKeyCombination.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QKeyCombination.Class := new QtAda6.QtCore.QKeyCombination.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QKeyCombination");
      Method := Object_GetAttrString (Class, "fromCombined");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (combined_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCombined;
   function key (self : access Inst) return access QtAda6.QtCore.Qt.Key.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.Key.Class := new QtAda6.QtCore.Qt.Key.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "key");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end key;
   function keyboardModifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "keyboardModifiers");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end keyboardModifiers;
   function toCombined (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCombined");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toCombined;
end QtAda6.QtCore.QKeyCombination;
