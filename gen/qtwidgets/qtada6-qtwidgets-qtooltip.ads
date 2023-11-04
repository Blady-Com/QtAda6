-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtooltip.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function font return access QtAda6.QtGui.QFont.Inst'Class;
   procedure hideText;
   function isVisible return bool;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class;
   procedure setFont (arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setPalette (arg_1_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   procedure showText
     (pos_P  : access QtAda6.QtCore.QPoint.Inst'Class; text_P : str; w_P : Optional_QtAda6_QtWidgets_QWidget;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; msecShowTime_P : int);
   function text return str;
end QtAda6.QtWidgets.QToolTip;
