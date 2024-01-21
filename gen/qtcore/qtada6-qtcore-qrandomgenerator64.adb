-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qrandomgenerator64.adb
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
with QtAda6.QtCore.QRandomGenerator;
package body QtAda6.QtCore.QRandomGenerator64 is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (begin_K_P : int; end_K_P : int) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (begin_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (end_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QRandomGenerator.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (seedValue_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (seedValue_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure discard (self : access Inst; z_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "discard");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (z_P));
      Result := Object_CallObject (Method, Args, True);
   end discard;
   function generate (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end generate;
   function global_U return access QtAda6.QtCore.QRandomGenerator64.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRandomGenerator64.Class := new QtAda6.QtCore.QRandomGenerator64.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Method           := Object_GetAttrString (Class, "global_");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end global_U;
   function max return int is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Method := Object_GetAttrString (Class, "max");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end max;
   function min return int is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Method := Object_GetAttrString (Class, "min");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end min;
   function securelySeeded return access QtAda6.QtCore.QRandomGenerator64.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRandomGenerator64.Class := new QtAda6.QtCore.QRandomGenerator64.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Method           := Object_GetAttrString (Class, "securelySeeded");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end securelySeeded;
   function system return access QtAda6.QtCore.QRandomGenerator64.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRandomGenerator64.Class := new QtAda6.QtCore.QRandomGenerator64.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator64");
      Method           := Object_GetAttrString (Class, "system");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end system;
end QtAda6.QtCore.QRandomGenerator64;
