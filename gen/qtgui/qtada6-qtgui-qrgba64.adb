-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qrgba64.adb
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
with QtAda6.QtGui.QRgba64;
package body QtAda6.QtGui.QRgba64 is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QRgba64_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QRgba64_P /= null then QRgba64_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function alpha (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alpha");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end alpha;
   function alpha8 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alpha8");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end alpha8;
   function blue (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blue");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end blue;
   function blue8 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blue8");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end blue8;
   function fromArgb32 (rgb_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Method := Object_GetAttrString (Class, "fromArgb32");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromArgb32;
   function fromRgba
     (red_P : int; green_P : int; blue_P : int; alpha_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Method := Object_GetAttrString (Class, "fromRgba");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (red_P));
      Tuple_SetItem (Args, 1, Long_FromLong (green_P));
      Tuple_SetItem (Args, 2, Long_FromLong (blue_P));
      Tuple_SetItem (Args, 3, Long_FromLong (alpha_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgba;
   function fromRgba64 (c_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Method := Object_GetAttrString (Class, "fromRgba64");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgba64;
   function fromRgba64
     (red_P : int; green_P : int; blue_P : int; alpha_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRgba64");
      Method := Object_GetAttrString (Class, "fromRgba64");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (red_P));
      Tuple_SetItem (Args, 1, Long_FromLong (green_P));
      Tuple_SetItem (Args, 2, Long_FromLong (blue_P));
      Tuple_SetItem (Args, 3, Long_FromLong (alpha_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgba64;
   function green (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "green");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end green;
   function green8 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "green8");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end green8;
   function isOpaque (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isOpaque");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isOpaque;
   function isTransparent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTransparent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTransparent;
   function premultiplied (self : access Inst) return access QtAda6.QtGui.QRgba64.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "premultiplied");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end premultiplied;
   function red (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "red");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end red;
   function red8 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "red8");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end red8;
   procedure setAlpha (self : access Inst; U_alpha_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlpha");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (U_alpha_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAlpha;
   procedure setBlue (self : access Inst; U_blue_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (U_blue_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBlue;
   procedure setGreen (self : access Inst; U_green_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (U_green_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGreen;
   procedure setRed (self : access Inst; U_red_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (U_red_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRed;
   function toArgb32 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toArgb32");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end toArgb32;
   function toRgb16 (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toRgb16");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end toRgb16;
   function unpremultiplied (self : access Inst) return access QtAda6.QtGui.QRgba64.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "unpremultiplied");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end unpremultiplied;
end QtAda6.QtGui.QRgba64;
