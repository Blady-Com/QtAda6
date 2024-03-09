-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qbrush.adb
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
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
package body QtAda6.QtGui.QBrush is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bs_P /= null then bs_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      bs_P    : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if bs_P /= null then
         Dict_SetItemString (Dict, "bs", bs_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (color_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      bs_P    : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if bs_P /= null then
         Dict_SetItemString (Dict, "bs", bs_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (color_P  : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (gradient_P : UNION_QtAda6_QtGui_QGradient_QtAda6_QtGui_QGradient_Preset) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if gradient_P /= null then gradient_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (image_P : UNION_QtAda6_QtGui_QImage_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBrush");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "color");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end color;
   function gradient (self : access Inst) return access QtAda6.QtGui.QGradient.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QGradient.Class := new QtAda6.QtGui.QGradient.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "gradient");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end gradient;
   function isOpaque (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isOpaque");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isOpaque;
   procedure setColor (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColor;
   procedure setColor
     (self    : access Inst;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColor;
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStyle;
   procedure setTexture (self : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTexture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTexture;
   procedure setTextureImage (self : access Inst; image_P : UNION_QtAda6_QtGui_QImage_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextureImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextureImage;
   procedure setTransform (self : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransform;
   function style (self : access Inst) return access QtAda6.QtCore.Qt.BrushStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.BrushStyle.Class := new QtAda6.QtCore.Qt.BrushStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function texture (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "texture");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end texture;
   function textureImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textureImage");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textureImage;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transform;
end QtAda6.QtGui.QBrush;
