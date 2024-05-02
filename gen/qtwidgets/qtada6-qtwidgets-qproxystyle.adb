-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qproxystyle.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QStyle;
with QtAda6.QtWidgets.QStyle.ComplexControl;
with QtAda6.QtWidgets.QStyleOptionComplex;
with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QStyle.ControlElement;
with QtAda6.QtWidgets.QStyleOption;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPalette;
with QtAda6.QtGui.QPalette.ColorRole;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtWidgets.QStyle.PrimitiveElement;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QIcon.Mode;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QStyle.SubControl;
with QtAda6.QtGui.QFontMetrics;
with QtAda6.QtWidgets.QSizePolicy.ControlType;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QStyle.PixelMetric;
with QtAda6.QtWidgets.QApplication;
with QtAda6.QtWidgets.QStyle.ContentsType;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QStyle.StandardPixmap;
with QtAda6.QtGui.QIcon;
with QtAda6.QtWidgets.QStyle.StyleHint;
with QtAda6.QtWidgets.QStyleHintReturn;
with QtAda6.QtWidgets.QStyle.SubElement;
package body QtAda6.QtWidgets.QProxyStyle is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (key_P : str) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QProxyStyle");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (style_P : access QtAda6.QtWidgets.QStyle.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QProxyStyle");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if style_P /= null then
         Dict_SetItemString (Dict, "style", style_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function baseStyle (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "baseStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end baseStyle;
   procedure drawComplexControl
     (self      : access Inst; control_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      option_P  : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawComplexControl");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if control_P /= null then control_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawComplexControl;
   procedure drawControl
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawControl");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if element_P /= null then element_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawControl;
   procedure drawItemPixmap
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (alignment_P));
      Tuple_SetItem (Args, 3, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemPixmap;
   procedure drawItemPixmap
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (alignment_P));
      Tuple_SetItem (Args, 3, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemPixmap;
   procedure drawItemPixmap
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int; pixmap_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (alignment_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (pixmap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemPixmap;
   procedure drawItemText
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P    : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pal_P : access QtAda6.QtGui.QPalette.Inst'Class;
      enabled_P : bool; text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 3, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, To_Python (enabled_P));
      Tuple_SetItem (Args, 5, Unicode_FromString (text_P));
      Dict := Dict_New;
      if textRole_P /= null then
         Dict_SetItemString (Dict, "textRole", textRole_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemText;
   procedure drawItemText
     (self       : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P     : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P      : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; enabled_P : bool; text_P : str;
      textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 3, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, To_Python (enabled_P));
      Tuple_SetItem (Args, 5, Unicode_FromString (text_P));
      Dict := Dict_New;
      if textRole_P /= null then
         Dict_SetItemString (Dict, "textRole", textRole_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemText;
   procedure drawItemText
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P    : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pal_P : access QtAda6.QtGui.QColor.Inst'Class;
      enabled_P : bool; text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 3, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, To_Python (enabled_P));
      Tuple_SetItem (Args, 5, Unicode_FromString (text_P));
      Dict := Dict_New;
      if textRole_P /= null then
         Dict_SetItemString (Dict, "textRole", textRole_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemText;
   procedure drawPrimitive
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPrimitive");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if element_P /= null then element_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPrimitive;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generatedIconPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if iconMode_P /= null then iconMode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end generatedIconPixmap;
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generatedIconPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if iconMode_P /= null then iconMode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end generatedIconPixmap;
   function generatedIconPixmap
     (self  : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; pixmap_P : str;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generatedIconPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if iconMode_P /= null then iconMode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 2, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end generatedIconPixmap;
   function hitTestComplexControl
     (self     : access Inst; control_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; pos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyle.SubControl.Class := new QtAda6.QtWidgets.QStyle.SubControl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hitTestComplexControl");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if control_P /= null then control_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hitTestComplexControl;
   function itemPixmapRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemPixmapRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemPixmapRect;
   function itemPixmapRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemPixmapRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemPixmapRect;
   function itemPixmapRect
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pixmap_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemPixmapRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (pixmap_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemPixmapRect;
   function itemTextRect
     (self : access Inst; fm_P : access QtAda6.QtGui.QFontMetrics.Inst'Class;
      r_P  : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; enabled_P : bool; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemTextRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if fm_P /= null then fm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 3, To_Python (enabled_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemTextRect;
   function layoutSpacing
     (self          : access Inst; control1_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      control2_P    : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      option_P      : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P      : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "layoutSpacing");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if control1_P /= null then control1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if control2_P /= null then control2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if option_P /= null then
         Dict_SetItemString (Dict, "option", option_P.Python_Proxy);
      end if;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end layoutSpacing;
   function pixelMetric
     (self     : access Inst; metric_P : access QtAda6.QtWidgets.QStyle.PixelMetric.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelMetric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if metric_P /= null then metric_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if option_P /= null then
         Dict_SetItemString (Dict, "option", option_P.Python_Proxy);
      end if;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end pixelMetric;
   procedure polish (self : access Inst; app_P : access QtAda6.QtWidgets.QApplication.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if app_P /= null then app_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end polish;
   procedure polish (self : access Inst; arg_1_P : access QtAda6.QtGui.QPalette.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end polish;
   procedure polish (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end polish;
   procedure polish (self : access Inst; arg_1_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end polish;
   procedure polish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end polish;
   procedure setBaseStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaseStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBaseStyle;
   function sizeFromContents
     (self     : access Inst; type_K_P : access QtAda6.QtWidgets.QStyle.ContentsType.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeFromContents");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeFromContents;
   function standardIcon
     (self     : access Inst; standardIcon_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return access QtAda6.QtGui.QIcon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if standardIcon_P /= null then standardIcon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if option_P /= null then
         Dict_SetItemString (Dict, "option", option_P.Python_Proxy);
      end if;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardIcon;
   function standardPalette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "standardPalette");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardPalette;
   function standardPixmap
     (self     : access Inst; standardPixmap_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if standardPixmap_P /= null then standardPixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardPixmap;
   function styleHint
     (self         : access Inst; hint_P : access QtAda6.QtWidgets.QStyle.StyleHint.Inst'Class;
      option_P     : access QtAda6.QtWidgets.QStyleOption.Inst'Class     := null;
      widget_P     : access QtAda6.QtWidgets.QWidget.Inst'Class          := null;
      returnData_P : access QtAda6.QtWidgets.QStyleHintReturn.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if option_P /= null then
         Dict_SetItemString (Dict, "option", option_P.Python_Proxy);
      end if;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      if returnData_P /= null then
         Dict_SetItemString (Dict, "returnData", returnData_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end styleHint;
   function subControlRect
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      sc_P     : access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subControlRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if cc_P /= null then cc_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sc_P /= null then sc_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subControlRect;
   function subElementRect
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.SubElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subElementRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if element_P /= null then element_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subElementRect;
   procedure unpolish (self : access Inst; app_P : access QtAda6.QtWidgets.QApplication.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unpolish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if app_P /= null then app_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unpolish;
   procedure unpolish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unpolish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unpolish;
end QtAda6.QtWidgets.QProxyStyle;
