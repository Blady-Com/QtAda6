-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qrandomgenerator.adb
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
package body QtAda6.QtCore.QRandomGenerator is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (begin_K_P : int; end_K_P : int) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (begin_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (end_K_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QRandomGenerator.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (seedValue_P : int := 0) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if seedValue_P /= 0 then
         Dict_SetItemString (Dict, "seedValue", Long_FromLong (seedValue_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function bounded (self : access Inst; highest_P : float) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bounded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (highest_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end bounded;
   function bounded (self : access Inst; highest_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bounded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (highest_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end bounded;
   function bounded (self : access Inst; lowest_P : int; highest_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bounded");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (lowest_P));
      Tuple_SetItem (Args, 1, Long_FromLong (highest_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end bounded;
   procedure discard (self : access Inst; z_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "discard");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (z_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end discard;
   function generate (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end generate;
   function generate64 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generate64");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end generate64;
   function generateDouble (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generateDouble");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end generateDouble;
   function global_U return access QtAda6.QtCore.QRandomGenerator.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRandomGenerator.Class := new QtAda6.QtCore.QRandomGenerator.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Method           := Object_GetAttrString (Class, "global_");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end global_U;
   function max return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Method := Object_GetAttrString (Class, "max");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end max;
   function min return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Method := Object_GetAttrString (Class, "min");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end min;
   function securelySeeded return access QtAda6.QtCore.QRandomGenerator.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRandomGenerator.Class := new QtAda6.QtCore.QRandomGenerator.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Method           := Object_GetAttrString (Class, "securelySeeded");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end securelySeeded;
   procedure seed (self : access Inst; s_P : int := 0) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "seed");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if s_P /= 0 then
         Dict_SetItemString (Dict, "s", Long_FromLong (s_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end seed;
   function system return access QtAda6.QtCore.QRandomGenerator.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRandomGenerator.Class := new QtAda6.QtCore.QRandomGenerator.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRandomGenerator");
      Method           := Object_GetAttrString (Class, "system");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end system;
end QtAda6.QtCore.QRandomGenerator;
