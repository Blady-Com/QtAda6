-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcommonstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QStyle.ComplexControl;
limited with QtAda6.QtWidgets.QStyleOptionComplex;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QStyle.ControlElement;
limited with QtAda6.QtWidgets.QStyleOption;
limited with QtAda6.QtWidgets.QStyle.PrimitiveElement;
limited with QtAda6.QtGui.QIcon.Mode;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyle.SubControl;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QStyle.PixelMetric;
limited with QtAda6.QtWidgets.QApplication;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtWidgets.QStyle.ContentsType;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyle.StandardPixmap;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtWidgets.QStyle.StyleHint;
limited with QtAda6.QtWidgets.QStyleHintReturn;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QStyle.SubElement;
with QtAda6.QtWidgets.QStyle;
package QtAda6.QtWidgets.QCommonStyle is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is access Any;
   type Optional_QtAda6_QtWidgets_QStyleOption is access Any;
   type Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is access Any;
   type Optional_QtAda6_QtWidgets_QStyleHintReturn is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QStyle.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure drawComplexControl
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget);
   procedure drawControl
     (self  : access Inst; element_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget);
   procedure drawPrimitive
     (self  : access Inst; pe_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget);
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function hitTestComplexControl
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      w_P   : Optional_QtAda6_QtWidgets_QWidget) return access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class;
   function layoutSpacing
     (self          : access Inst; control1_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      control2_P    : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; option_P : Optional_QtAda6_QtWidgets_QStyleOption;
      widget_P      : Optional_QtAda6_QtWidgets_QWidget) return int;
   function pixelMetric
     (self  : access Inst; m_P : access QtAda6.QtWidgets.QStyle.PixelMetric.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget) return int;
   procedure polish (self : access Inst; app_P : access QtAda6.QtWidgets.QApplication.Inst'Class);
   procedure polish
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
-- procedure polish(self : access Inst;palette_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   procedure polish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function sizeFromContents
     (self     : access Inst; ct_P : access QtAda6.QtWidgets.QStyle.ContentsType.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; contentsSize_P : access QtAda6.QtCore.QSize.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget) return access QtAda6.QtCore.QSize.Inst'Class;
   function standardIcon
     (self  : access Inst; standardIcon_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtGui.QIcon.Inst'Class;
   function standardPixmap
     (self  : access Inst; sp_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P : Optional_QtAda6_QtWidgets_QStyleOption; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function styleHint
     (self    : access Inst; sh_P : access QtAda6.QtWidgets.QStyle.StyleHint.Inst'Class;
      opt_P   : Optional_QtAda6_QtWidgets_QStyleOption; w_P : Optional_QtAda6_QtWidgets_QWidget;
      shret_P : Optional_QtAda6_QtWidgets_QStyleHintReturn) return int;
   function subControlRect
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      sc_P  : access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class; w_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function subElementRect
     (self  : access Inst; r_P : access QtAda6.QtWidgets.QStyle.SubElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; widget_P : Optional_QtAda6_QtWidgets_QWidget)
      return access QtAda6.QtCore.QRect.Inst'Class;
   procedure unpolish (self : access Inst; application_P : access QtAda6.QtWidgets.QApplication.Inst'Class);
   procedure unpolish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
end QtAda6.QtWidgets.QCommonStyle;
