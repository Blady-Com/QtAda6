-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QStyleOption;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QStyle.ComplexControl;
limited with QtAda6.QtWidgets.QStyleOptionComplex;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyle.ControlElement;
limited with QtAda6.QtGui.QPalette.ColorRole;
limited with QtAda6.QtWidgets.QStyle.PrimitiveElement;
limited with QtAda6.QtGui.QIcon.Mode;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyle.SubControl;
limited with QtAda6.QtGui.QFontMetrics;
limited with QtAda6.QtWidgets.QStyle.PixelMetric;
limited with QtAda6.QtWidgets.QApplication;
limited with QtAda6.QtWidgets.QStyle.ContentsType;
limited with QtAda6.QtWidgets.QStyle.StandardPixmap;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtWidgets.QStyle.StyleHint;
limited with QtAda6.QtWidgets.QStyleHintReturn;
limited with QtAda6.QtWidgets.QStyle.SubElement;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is new Any;
   type UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function alignedRect
     (direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class;
      rectangle_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function combinedLayoutSpacing
     (self          : access Inst; controls1_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      controls2_P   : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      option_P      : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P      : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return int;
   procedure drawComplexControl
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   procedure drawControl
     (self     : access Inst; element_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   procedure drawItemPixmap
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; alignment_P : int;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawItemText
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; enabled_P : bool;
      text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null);
   procedure drawPrimitive
     (self     : access Inst; pe_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   function generatedIconPixmap
     (self     : access Inst; iconMode_P : access QtAda6.QtGui.QIcon.Mode.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function hitTestComplexControl
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class;
   function itemPixmapRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return access QtAda6.QtCore.QRect.Inst'Class;
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
   function name (self : access Inst) return str;
   function pixelMetric_F
     (self     : access Inst; metric_P : access QtAda6.QtWidgets.QStyle.PixelMetric.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return int;
   procedure polish (self : access Inst; application_P : access QtAda6.QtWidgets.QApplication.Inst'Class);
   procedure polish
     (self : access Inst; palette_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   procedure polish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function proxy (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   function sizeFromContents
     (self  : access Inst; ct_P : access QtAda6.QtWidgets.QStyle.ContentsType.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class; contentsSize_P : access QtAda6.QtCore.QSize.Inst'Class;
      w_P   : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtCore.QSize.Inst'Class;
   function sliderPositionFromValue
     (min_P : int; max_P : int; val_P : int; space_P : int; upsideDown_P : bool := False) return int;
   function sliderValueFromPosition
     (min_P : int; max_P : int; pos_P : int; space_P : int; upsideDown_P : bool := False) return int;
   function standardIcon
     (self     : access Inst; standardIcon_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return access QtAda6.QtGui.QIcon.Inst'Class;
   function standardPalette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class;
   function standardPixmap_F
     (self     : access Inst; standardPixmap_P : access QtAda6.QtWidgets.QStyle.StandardPixmap.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOption.Inst'Class := null;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class      := null) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function styleHint_F
     (self         : access Inst; stylehint_P : access QtAda6.QtWidgets.QStyle.StyleHint.Inst'Class;
      opt_P        : access QtAda6.QtWidgets.QStyleOption.Inst'Class     := null;
      widget_P     : access QtAda6.QtWidgets.QWidget.Inst'Class          := null;
      returnData_P : access QtAda6.QtWidgets.QStyleHintReturn.Inst'Class := null) return int;
   function subControlRect
     (self     : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P    : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class;
      sc_P     : access QtAda6.QtWidgets.QStyle.SubControl.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtCore.QRect.Inst'Class;
   function subElementRect
     (self     : access Inst; subElement_P : access QtAda6.QtWidgets.QStyle.SubElement.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure unpolish (self : access Inst; application_P : access QtAda6.QtWidgets.QApplication.Inst'Class);
   procedure unpolish (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function visualAlignment
     (direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
      return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function visualPos
     (direction_P    : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      boundingRect_P : access QtAda6.QtCore.QRect.Inst'Class; logicalPos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function visualRect
     (direction_P    : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
      boundingRect_P : access QtAda6.QtCore.QRect.Inst'Class; logicalRect_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
end QtAda6.QtWidgets.QStyle;
