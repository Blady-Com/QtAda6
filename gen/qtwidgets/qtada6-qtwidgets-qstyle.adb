-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QSizePolicy.ControlType;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QStyleOption;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QStyle.ComplexControl;
with QtAda6.QtWidgets.QStyleOptionComplex;
with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QStyle.ControlElement;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QPalette.ColorRole;
with QtAda6.QtWidgets.QStyle.PrimitiveElement;
with QtAda6.QtGui.QIcon.Mode;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QStyle.SubControl;
with QtAda6.QtGui.QFontMetrics;
with QtAda6.QtWidgets.QStyle.PixelMetric;
with QtAda6.QtWidgets.QApplication;
with QtAda6.QtWidgets.QStyle.ContentsType;
with QtAda6.QtWidgets.QStyle.StandardPixmap;
with QtAda6.QtGui.QIcon;
with QtAda6.QtWidgets.QStyle.StyleHint;
with QtAda6.QtWidgets.QStyleHintReturn;
with QtAda6.QtWidgets.QStyle.SubElement;
package body QtAda6.QtWidgets.QStyle is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function alignedRect
     (direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      rectangle_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Method := Object_GetAttrString (Class, "alignedRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Tuple_SetItem (Args, 1, alignment_P.Python_Proxy);
      Tuple_SetItem (Args, 2, size_P.Python_Proxy);
      Tuple_SetItem (Args, 3, rectangle_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignedRect;
   function combinedLayoutSpacing
     (self          : access Inst; controls1_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      controls2_P   : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; option_P : Optional_QtAda6_QtWidgets_QStyleOption;
      widget_P      : Optional_QtAda6_QtWidgets_QWidget) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "combinedLayoutSpacing");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, controls1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, controls2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end combinedLayoutSpacing;
   procedure drawComplexControl
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawComplexControl");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, cc_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
      Tuple_SetItem (Args, 2, p_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end drawComplexControl;
   procedure drawControl
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawControl");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, element_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
      Tuple_SetItem (Args, 2, p_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end drawControl;
   procedure drawItemPixmap
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, rect_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (alignment_P));
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end drawItemPixmap;
   procedure drawItemText
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P  : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; enabled_P : bool;
      text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, rect_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, To_Python (enabled_P));
      Tuple_SetItem (Args, 5, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 6, textRole_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end drawItemText;
   procedure drawPrimitive
     (self     : access Inst; pe_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPrimitive");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, pe_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
      Tuple_SetItem (Args, 2, p_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end drawPrimitive;
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generatedIconPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, iconMode_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, opt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end generatedIconPixmap;
   function hitTestComplexControl
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget) return access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyle.SubControl.Class := new QtAda6.QtWidgets.QStyle.SubControl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hitTestComplexControl");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, cc_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
      Tuple_SetItem (Args, 2, pt_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hitTestComplexControl;
   function itemPixmapRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemPixmapRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemPixmapRect;
   function itemTextRect
     (self : access Inst; fm_P : access QtAda6.QtGui.QFontMetrics.Inst'Class;
      r_P  : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; enabled_P : bool; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemTextRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, fm_P.Python_Proxy);
      Tuple_SetItem (Args, 1, r_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 3, To_Python (enabled_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (text_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemTextRect;
   function layoutSpacing
     (self          : access Inst; control1_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      control2_P    : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; option_P : Optional_QtAda6_QtWidgets_QStyleOption;
      widget_P      : Optional_QtAda6_QtWidgets_QWidget) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "layoutSpacing");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, control1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, control2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end layoutSpacing;
   function name (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function pixelMetric_F
     (self     : access Inst; metric_P : access QtAda6.QtWidgets.QStyle.PixelMetric.Inst'Class;
      option_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelMetric");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, metric_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixelMetric_F;
   procedure polish (self : access Inst; application_P : access QtAda6.QtWidgets.QApplication.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, application_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end polish;
   procedure polish
     (self : access Inst; palette_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end polish;
   procedure polish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, widget_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end polish;
   function proxy (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "proxy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end proxy;
   function sizeFromContents
     (self  : access Inst; ct_P : access QtAda6.QtWidgets.QStyle.ContentsType.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; contentsSize_P : access QtAda6.QtCore.QSize.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeFromContents");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, ct_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
      Tuple_SetItem (Args, 2, contentsSize_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeFromContents;
   function sliderPositionFromValue
     (min_P : int; max_P : int; val_P : int; space_P : int; upsideDown_P : bool) return int
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Method := Object_GetAttrString (Class, "sliderPositionFromValue");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (min_P));
      Tuple_SetItem (Args, 1, Long_FromLong (max_P));
      Tuple_SetItem (Args, 2, Long_FromLong (val_P));
      Tuple_SetItem (Args, 3, Long_FromLong (space_P));
      Tuple_SetItem (Args, 4, To_Python (upsideDown_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sliderPositionFromValue;
   function sliderValueFromPosition
     (min_P : int; max_P : int; pos_P : int; space_P : int; upsideDown_P : bool) return int
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Method := Object_GetAttrString (Class, "sliderValueFromPosition");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (min_P));
      Tuple_SetItem (Args, 1, Long_FromLong (max_P));
      Tuple_SetItem (Args, 2, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 3, Long_FromLong (space_P));
      Tuple_SetItem (Args, 4, To_Python (upsideDown_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sliderValueFromPosition;
   function standardIcon
     (self     : access Inst; standardIcon_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      option_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtGui.QIcon.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardIcon");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, standardIcon_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardIcon;
   function standardPalette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "standardPalette");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardPalette;
   function standardPixmap_F
     (self  : access Inst; standardPixmap_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, standardPixmap_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardPixmap_F;
   function styleHint_F
     (self         : access Inst; stylehint_P : access QtAda6.QtWidgets.QStyle.StyleHint.Inst'Class;
      opt_P        : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget;
      returnData_P : Optional_QtAda6_QtWidgets_QStyleHintReturn) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleHint");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, stylehint_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end styleHint_F;
   function subControlRect
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      sc_P  : access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subControlRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, cc_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
      Tuple_SetItem (Args, 2, sc_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subControlRect;
   function subElementRect
     (self     : access Inst; subElement_P : access QtAda6.QtWidgets.QStyle.SubElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subElementRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, subElement_P.Python_Proxy);
      Tuple_SetItem (Args, 1, option_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subElementRect;
   procedure unpolish (self : access Inst; application_P : access QtAda6.QtWidgets.QApplication.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unpolish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, application_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end unpolish;
   procedure unpolish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unpolish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, widget_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end unpolish;
   function visualAlignment
     (direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
      return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Method := Object_GetAttrString (Class, "visualAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Tuple_SetItem (Args, 1, alignment_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualAlignment;
   function visualPos
     (direction_P    : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      boundingRect_P : access QtAda6.QtCore.QRect.Inst'Class; logicalPos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Method := Object_GetAttrString (Class, "visualPos");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Tuple_SetItem (Args, 1, boundingRect_P.Python_Proxy);
      Tuple_SetItem (Args, 2, logicalPos_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualPos;
   function visualRect
     (direction_P    : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      boundingRect_P : access QtAda6.QtCore.QRect.Inst'Class; logicalRect_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Method := Object_GetAttrString (Class, "visualRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Tuple_SetItem (Args, 1, boundingRect_P.Python_Proxy);
      Tuple_SetItem (Args, 2, logicalRect_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRect;
end QtAda6.QtWidgets.QStyle;
