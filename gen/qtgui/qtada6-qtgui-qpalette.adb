-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpalette.adb
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
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QBrush;
with QtAda6.QtGui.QPalette.ColorGroup;
with QtAda6.QtGui.QPalette.ColorRole;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QPalette;
package body QtAda6.QtGui.QPalette is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (button_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (button_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      window_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (palette_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (windowText_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      button_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      light_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      dark_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      mid_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      bright_text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      base_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      window_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (9);
      Tuple_SetItem (Args, 0, (if windowText_P /= null then windowText_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if light_P /= null then light_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if dark_P /= null then dark_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if mid_P /= null then mid_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if text_P /= null then text_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if bright_text_P /= null then bright_text_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, (if base_P /= null then base_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 8, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (windowText_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      window_P     : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      light_P      : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      dark_P       : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      mid_P        : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      text_P       : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      base_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if windowText_P /= null then windowText_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if light_P /= null then light_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if dark_P /= null then dark_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if mid_P /= null then mid_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if text_P /= null then text_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if base_P /= null then base_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; ds_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ds_P /= null then ds_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; ds_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ds_P /= null then ds_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function alternateBase (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alternateBase");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alternateBase;
   function base (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "base");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end base;
   function brightText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brightText");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brightText;
   function brush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) return access QtAda6.QtGui.QBrush.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "brush");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cg_P /= null then cg_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brush;
   function brush
     (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class)
      return access QtAda6.QtGui.QBrush.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "brush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brush;
   function button (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "button");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end button;
   function buttonText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "buttonText");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buttonText;
   function cacheKey (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cacheKey");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end cacheKey;
   function color
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "color");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cg_P /= null then cg_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end color;
   function color
     (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "color");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end color;
   function currentColorGroup (self : access Inst) return access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPalette.ColorGroup.Class := new QtAda6.QtGui.QPalette.ColorGroup.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentColorGroup");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentColorGroup;
   function dark (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dark");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dark;
   function highlight (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "highlight");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end highlight;
   function highlightedText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "highlightedText");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end highlightedText;
   function isBrushSet
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBrushSet");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cg_P /= null then cg_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isBrushSet;
   function isCopyOf
     (self : access Inst; p_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCopyOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isCopyOf;
   function isEqual
     (self  : access Inst; cr1_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr2_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEqual");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cr1_P /= null then cr1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if cr2_P /= null then cr2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEqual;
   function light (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "light");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end light;
   function link (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "link");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end link;
   function linkVisited (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "linkVisited");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end linkVisited;
   function mid (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mid");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mid;
   function midlight (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "midlight");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end midlight;
   function placeholderText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "placeholderText");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end placeholderText;
   function resolve
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
      return access QtAda6.QtGui.QPalette.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resolve;
   function resolveMask (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveMask");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end resolveMask;
   procedure setBrush
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if cg_P /= null then cg_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setColor
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if cg_P /= null then cg_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColor;
   procedure setColor
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColor;
   procedure setColorGroup
     (self          : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      windowText_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      button_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      light_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      dark_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      mid_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      bright_text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      base_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      window_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorGroup");
      Args   := Tuple_New (10);
      Tuple_SetItem (Args, 0, (if cr_P /= null then cr_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if windowText_P /= null then windowText_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if light_P /= null then light_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if dark_P /= null then dark_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if mid_P /= null then mid_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if text_P /= null then text_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, (if bright_text_P /= null then bright_text_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 8, (if base_P /= null then base_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 9, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColorGroup;
   procedure setCurrentColorGroup (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColorGroup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cg_P /= null then cg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColorGroup;
   procedure setResolveMask (self : access Inst; mask_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResolveMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mask_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setResolveMask;
   function shadow (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shadow");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shadow;
   procedure swap
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function text (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "text");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end text;
   function toolTipBase (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toolTipBase");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toolTipBase;
   function toolTipText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toolTipText");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toolTipText;
   function window (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
   function windowText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowText");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowText;
end QtAda6.QtGui.QPalette;
