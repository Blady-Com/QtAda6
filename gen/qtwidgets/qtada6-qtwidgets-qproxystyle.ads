-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qproxystyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QStyle;
limited with QtAda6.QtWidgets.QStyle.ComplexControl;
limited with QtAda6.QtWidgets.QStyleOptionComplex;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QStyle.ControlElement;
limited with QtAda6.QtWidgets.QStyleOption;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtGui.QPalette.ColorRole;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtWidgets.QStyle.PrimitiveElement;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QIcon.Mode;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyle.SubControl;
limited with QtAda6.QtGui.QFontMetrics;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QStyle.PixelMetric;
limited with QtAda6.QtWidgets.QApplication;
limited with QtAda6.QtWidgets.QStyle.ContentsType;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyle.StandardPixmap;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtWidgets.QStyle.StyleHint;
limited with QtAda6.QtWidgets.QStyleHintReturn;
limited with QtAda6.QtWidgets.QStyle.SubElement;
with QtAda6.QtWidgets.QCommonStyle;
package QtAda6.QtWidgets.QProxyStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QCommonStyle.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (key_P : str) return Class;
   function Create (style_P : access QtAda6.QtWidgets.QStyle.Inst'Class := null) return Class;
   function baseStyle (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   procedure drawComplexControl
     (self      : access Inst; control_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      option_P  : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   procedure drawControl
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   procedure drawItemPixmap
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure drawItemPixmap
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure drawItemPixmap
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int; pixmap_P : str);
   procedure drawItemText
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P    : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pal_P : access QtAda6.QtGui.QPalette.Inst'Class;
      enabled_P : bool; text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null);
   procedure drawItemText
     (self       : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P     : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P      : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; enabled_P : bool; text_P : str;
      textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null);
   procedure drawItemText
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P    : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pal_P : access QtAda6.QtGui.QColor.Inst'Class;
      enabled_P : bool; text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null);
   procedure drawPrimitive
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function generatedIconPixmap
     (self  : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class; pixmap_P : str;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function hitTestComplexControl
     (self     : access Inst; control_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; pos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class;
   function itemPixmapRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function itemPixmapRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function itemPixmapRect
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pixmap_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function itemTextRect
     (self : access Inst; fm_P : access QtAda6.QtGui.QFontMetrics.Inst'Class;
      r_P  : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; enabled_P : bool; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function layoutSpacing
     (self          : access Inst; control1_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      control2_P    : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      option_P      : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P      : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return int;
   function pixelMetric
     (self     : access Inst; metric_P : access QtAda6.QtWidgets.QStyle.PixelMetric.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return int;
   procedure polish (self : access Inst; app_P : access QtAda6.QtWidgets.QApplication.Inst'Class);
   procedure polish (self : access Inst; arg_1_P : access QtAda6.QtGui.QPalette.Inst'Class);
   procedure polish (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure polish (self : access Inst; arg_1_P : access QtAda6.QtGui.QColor.Inst'Class);
-- procedure polish(self : access Inst;pal_P : access QtAda6.QtGui.QPalette.Inst'Class);
-- procedure polish(self : access Inst;pal_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
-- procedure polish(self : access Inst;pal_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure polish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setBaseStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QStyle.Inst'Class);
   function sizeFromContents
     (self     : access Inst; type_K_P : access QtAda6.QtWidgets.QStyle.ContentsType.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function standardIcon
     (self     : access Inst; standardIcon_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return access QtAda6.QtGui.QIcon.Inst'Class;
   function standardPalette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class;
   function standardPixmap
     (self     : access Inst; standardPixmap_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function styleHint
     (self         : access Inst; hint_P : access QtAda6.QtWidgets.QStyle.StyleHint.Inst'Class;
      option_P     : access QtAda6.QtWidgets.QStyleOption.Inst'Class     := null;
      widget_P     : access QtAda6.QtWidgets.QWidget.Inst'Class          := null;
      returnData_P : access QtAda6.QtWidgets.QStyleHintReturn.Inst'Class := null) return int;
   function subControlRect
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      sc_P     : access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function subElementRect
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.SubElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   procedure unpolish (self : access Inst; app_P : access QtAda6.QtWidgets.QApplication.Inst'Class);
   procedure unpolish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
end QtAda6.QtWidgets.QProxyStyle;
