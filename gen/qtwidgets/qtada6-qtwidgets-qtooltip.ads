-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtooltip.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QRect;
package QtAda6.QtWidgets.QToolTip is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   type UNION_QtAda6_QtGui_QPaletteQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColor is new Any;
   procedure Finalize (Self : in out Class);
   function font return access QtAda6.QtGui.QFont.Inst'Class;
   procedure hideText;
   function isVisible return bool;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class;
   procedure setFont (arg_1_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str);
   procedure setPalette (arg_1_P : UNION_QtAda6_QtGui_QPaletteQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColor);
   procedure showText
     (pos_P          : access QtAda6.QtCore.QPoint.Inst'Class; text_P : str;
      w_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null;
      msecShowTime_P : int                                        := 0);
   function text return str;
end QtAda6.QtWidgets.QToolTip;
