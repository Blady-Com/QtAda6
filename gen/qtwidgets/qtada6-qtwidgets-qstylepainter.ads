-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstylepainter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QStyle.ComplexControl;
limited with QtAda6.QtWidgets.QStyleOptionComplex;
limited with QtAda6.QtWidgets.QStyle.ControlElement;
limited with QtAda6.QtWidgets.QStyleOption;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPalette.ColorRole;
limited with QtAda6.QtWidgets.QStyle.PrimitiveElement;
limited with QtAda6.QtWidgets.QStyle;
with QtAda6.QtGui.QPainter;
package QtAda6.QtWidgets.QStylePainter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPainter.Inst with null record;
   type UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is new Any;
   type UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return Class;
   function Create (w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return Class;
   function begin_K
     (self : access Inst; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class;
      w_P  : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool;
   function begin_K (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool;
   procedure drawComplexControl
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class);
   procedure drawControl
     (self  : access Inst; ce_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class);
   procedure drawItemPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawItemText
     (self   : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; enabled_P : bool;
      text_P : str; textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null);
   procedure drawPrimitive
     (self  : access Inst; pe_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class);
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class;
end QtAda6.QtWidgets.QStylePainter;
