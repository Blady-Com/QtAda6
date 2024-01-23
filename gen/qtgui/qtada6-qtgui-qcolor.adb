-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qcolor.adb
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
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtGui.QColor.Spec;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QColor.NameFormat;
package body QtAda6.QtGui.QColor is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : Any) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (r_P : int; g_P : int; b_P : int; a_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (rgb_P : int) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (rgba64_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rgba64_P /= null then rgba64_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (spec_P : access QtAda6.QtGui.QColor.Spec.Inst'Class; a1_P : int; a2_P : int; a3_P : int; a4_P : int;
      a5_P   : int := 0) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (a2_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a3_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a4_P));
      Tuple_SetItem (Args, 5, Long_FromLong (a5_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
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
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function U_setstate_U (self : access Inst; arg_1_P : access Object'Class) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__setstate__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_setstate_U;
   function U_str_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__str__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_str_U;
   function alpha (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alpha");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end alpha;
   function alphaF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alphaF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end alphaF;
   function black (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "black");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end black;
   function blackF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blackF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end blackF;
   function blue (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end blue;
   function blueF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blueF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end blueF;
   function colorNames return LIST_str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "colorNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end colorNames;
   function convertTo
     (self : access Inst; colorSpec_P : access QtAda6.QtGui.QColor.Spec.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorSpec_P /= null then colorSpec_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end convertTo;
   function cyan (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cyan");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cyan;
   function cyanF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cyanF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end cyanF;
   function darker (self : access Inst; f_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "darker");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (f_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end darker;
   function fromCmyk
     (c_P : int; m_P : int; y_P : int; k_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromCmyk");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (k_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCmyk;
   function fromCmykF
     (c_P : float; m_P : float; y_P : float; k_P : float; a_P : float := 0.0)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromCmykF");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (c_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (m_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (k_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCmykF;
   function fromHsl (h_P : int; s_P : int; l_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromHsl");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (s_P));
      Tuple_SetItem (Args, 2, Long_FromLong (l_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHsl;
   function fromHslF
     (h_P : float; s_P : float; l_P : float; a_P : float := 0.0) return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromHslF");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (s_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (l_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHslF;
   function fromHsv (h_P : int; s_P : int; v_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromHsv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (s_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHsv;
   function fromHsvF
     (h_P : float; s_P : float; v_P : float; a_P : float := 0.0) return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromHsvF");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (s_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (v_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHsvF;
   function fromRgb (r_P : int; g_P : int; b_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromRgb");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgb;
   function fromRgb (rgb_P : int) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromRgb");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgb;
   function fromRgbF
     (r_P : float; g_P : float; b_P : float; a_P : float := 0.0) return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromRgbF");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (r_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (g_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (b_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgbF;
   function fromRgba (rgba_P : int) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromRgba");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgba_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgba;
   function fromRgba64 (r_P : int; g_P : int; b_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromRgba64");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgba64;
   function fromRgba64 (rgba_P : access QtAda6.QtGui.QRgba64.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromRgba64");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rgba_P /= null then rgba_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRgba64;
   function fromString (name_P : str) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function getCmyk (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getCmyk");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getCmyk;
   function getCmykF (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getCmykF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getCmykF;
   function getHsl (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getHsl");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getHsl;
   function getHslF (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getHslF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getHslF;
   function getHsv (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getHsv");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getHsv;
   function getHsvF (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getHsvF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getHsvF;
   function getRgb (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getRgb");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getRgb;
   function getRgbF (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getRgbF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getRgbF;
   function green (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "green");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end green;
   function greenF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "greenF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end greenF;
   function hslHue (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hslHue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hslHue;
   function hslHueF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hslHueF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end hslHueF;
   function hslSaturation (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hslSaturation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hslSaturation;
   function hslSaturationF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hslSaturationF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end hslSaturationF;
   function hsvHue (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hsvHue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hsvHue;
   function hsvHueF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hsvHueF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end hsvHueF;
   function hsvSaturation (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hsvSaturation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hsvSaturation;
   function hsvSaturationF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hsvSaturationF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end hsvSaturationF;
   function hue (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hue;
   function hueF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hueF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end hueF;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function isValidColor (arg_1_P : str) return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "isValidColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValidColor;
   function isValidColorName (arg_1_P : str) return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColor");
      Method := Object_GetAttrString (Class, "isValidColorName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValidColorName;
   function lighter (self : access Inst; f_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lighter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (f_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lighter;
   function lightness (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lightness");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lightness;
   function lightnessF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lightnessF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lightnessF;
   function magenta (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "magenta");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end magenta;
   function magentaF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "magentaF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end magentaF;
   function name_F (self : access Inst; format_P : access QtAda6.QtGui.QColor.NameFormat.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name_F;
   function red (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "red");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end red;
   function redF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end redF;
   function rgb (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rgb");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end rgb;
   function rgba (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rgba");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end rgba;
   function rgba64 (self : access Inst) return access QtAda6.QtGui.QRgba64.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QRgba64.Class := new QtAda6.QtGui.QRgba64.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rgba64");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rgba64;
   function saturation (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "saturation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end saturation;
   function saturationF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "saturationF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end saturationF;
   procedure setAlpha (self : access Inst; alpha_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlpha");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (alpha_P));
      Result := Object_CallObject (Method, Args, True);
   end setAlpha;
   procedure setAlphaF (self : access Inst; alpha_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlphaF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (alpha_P));
      Result := Object_CallObject (Method, Args, True);
   end setAlphaF;
   procedure setBlue (self : access Inst; blue_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (blue_P));
      Result := Object_CallObject (Method, Args, True);
   end setBlue;
   procedure setBlueF (self : access Inst; blue_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBlueF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (blue_P));
      Result := Object_CallObject (Method, Args, True);
   end setBlueF;
   procedure setCmyk (self : access Inst; c_P : int; m_P : int; y_P : int; k_P : int; a_P : int := 0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCmyk");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (k_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setCmyk;
   procedure setCmykF (self : access Inst; c_P : float; m_P : float; y_P : float; k_P : float; a_P : float := 0.0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCmykF");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (c_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (m_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (k_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setCmykF;
   procedure setGreen (self : access Inst; green_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (green_P));
      Result := Object_CallObject (Method, Args, True);
   end setGreen;
   procedure setGreenF (self : access Inst; green_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGreenF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (green_P));
      Result := Object_CallObject (Method, Args, True);
   end setGreenF;
   procedure setHsl (self : access Inst; h_P : int; s_P : int; l_P : int; a_P : int := 0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHsl");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (s_P));
      Tuple_SetItem (Args, 2, Long_FromLong (l_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setHsl;
   procedure setHslF (self : access Inst; h_P : float; s_P : float; l_P : float; a_P : float := 0.0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHslF");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (s_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (l_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setHslF;
   procedure setHsv (self : access Inst; h_P : int; s_P : int; v_P : int; a_P : int := 0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHsv");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (s_P));
      Tuple_SetItem (Args, 2, Long_FromLong (v_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setHsv;
   procedure setHsvF (self : access Inst; h_P : float; s_P : float; v_P : float; a_P : float := 0.0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHsvF");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (s_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (v_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setHsvF;
   procedure setNamedColor (self : access Inst; name_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNamedColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setNamedColor;
   procedure setRed (self : access Inst; red_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (red_P));
      Result := Object_CallObject (Method, Args, True);
   end setRed;
   procedure setRedF (self : access Inst; red_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRedF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (red_P));
      Result := Object_CallObject (Method, Args, True);
   end setRedF;
   procedure setRgb (self : access Inst; r_P : int; g_P : int; b_P : int; a_P : int := 0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRgb");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setRgb;
   procedure setRgb (self : access Inst; rgb_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRgb");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
   end setRgb;
   procedure setRgbF (self : access Inst; r_P : float; g_P : float; b_P : float; a_P : float := 0.0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRgbF");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (r_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (g_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (b_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (a_P));
      Result := Object_CallObject (Method, Args, True);
   end setRgbF;
   procedure setRgba (self : access Inst; rgba_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRgba");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgba_P));
      Result := Object_CallObject (Method, Args, True);
   end setRgba;
   procedure setRgba64 (self : access Inst; rgba_P : access QtAda6.QtGui.QRgba64.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRgba64");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rgba_P /= null then rgba_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRgba64;
   function spec_F (self : access Inst) return access QtAda6.QtGui.QColor.Spec.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Spec.Class := new QtAda6.QtGui.QColor.Spec.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "spec");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end spec_F;
   function toCmyk (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toCmyk");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toCmyk;
   function toExtendedRgb (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toExtendedRgb");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toExtendedRgb;
   function toHsl (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toHsl");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toHsl;
   function toHsv (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toHsv");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toHsv;
   function toRgb (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toRgb");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toRgb;
   function toTuple (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTuple");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toTuple;
   function value (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end value;
   function valueF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valueF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end valueF;
   function yellow (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "yellow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end yellow;
   function yellowF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "yellowF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end yellowF;
end QtAda6.QtGui.QColor;
