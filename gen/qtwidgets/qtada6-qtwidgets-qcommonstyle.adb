-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcommonstyle.adb
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
with QtAda6.QtWidgets.QStyle;
with QtAda6.QtWidgets.QStyle.ComplexControl;
with QtAda6.QtWidgets.QStyleOptionComplex;
with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QStyle.ControlElement;
with QtAda6.QtWidgets.QStyleOption;
with QtAda6.QtWidgets.QStyle.PrimitiveElement;
with QtAda6.QtGui.QIcon.Mode;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QStyle.SubControl;
with QtAda6.QtWidgets.QSizePolicy.ControlType;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QStyle.PixelMetric;
with QtAda6.QtWidgets.QApplication;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtWidgets.QStyle.ContentsType;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QStyle.StandardPixmap;
with QtAda6.QtGui.QIcon;
with QtAda6.QtWidgets.QStyle.StyleHint;
with QtAda6.QtWidgets.QStyleHintReturn;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QStyle.SubElement;
package body QtAda6.QtWidgets.QCommonStyle is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QCommonStyle");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure drawComplexControl
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget)
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
     (self  : access Inst; element_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget)
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
   procedure drawPrimitive
     (self  : access Inst; pe_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget)
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
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget) return access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class
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
   function pixelMetric
     (self  : access Inst; m_P : access QtAda6.QtWidgets.QStyle.PixelMetric.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelMetric");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, m_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixelMetric;
   procedure polish (self : access Inst; app_P : access QtAda6.QtWidgets.QApplication.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, app_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end polish;
   procedure polish
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
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
   function sizeFromContents
     (self     : access Inst; ct_P : access QtAda6.QtWidgets.QStyle.ContentsType.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; contentsSize_P : access QtAda6.QtCore.QSize.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget) return access QtAda6.QtCore.QSize.Inst'Class
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
   function standardIcon
     (self  : access Inst; standardIcon_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget)
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
   function standardPixmap
     (self  : access Inst; sp_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, sp_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardPixmap;
   function styleHint
     (self    : access Inst; sh_P : access QtAda6.QtWidgets.QStyle.StyleHint.Inst'Class;
      opt_P   : Optional_QtAda6_QtWidgets_QStyleOption; w_P : Optional_QtAda6_QtWidgets_QWidget;
      shret_P : Optional_QtAda6_QtWidgets_QStyleHintReturn) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleHint");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, sh_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end styleHint;
   function subControlRect
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      sc_P  : access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class; w_P : Optional_QtAda6_QtWidgets_QWidget)
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
     (self  : access Inst; r_P : access QtAda6.QtWidgets.QStyle.SubElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subElementRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Tuple_SetItem (Args, 1, opt_P.Python_Proxy);
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
end QtAda6.QtWidgets.QCommonStyle;
