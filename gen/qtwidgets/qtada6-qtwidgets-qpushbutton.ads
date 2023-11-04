-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qpushbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyleOptionButton;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QAbstractButton;
package QtAda6.QtWidgets.QPushButton is
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractButton.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (icon_P   : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (text_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget := null) return Class;
   function autoDefault (self : access Inst) return bool;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function hitButton (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionButton.Inst'Class);
   function isDefault (self : access Inst) return bool;
   function isFlat (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function menu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setAutoDefault (self : access Inst; arg_1_P : bool);
   procedure setDefault (self : access Inst; arg_1_P : bool);
   procedure setFlat (self : access Inst; arg_1_P : bool);
   procedure setMenu (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class);
   procedure showMenu (self : access Inst);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtWidgets.QPushButton;
