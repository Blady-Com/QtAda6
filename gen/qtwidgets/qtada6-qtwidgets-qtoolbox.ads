-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtoolbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QShowEvent;
with QtAda6.QtWidgets.QFrame;
package QtAda6.QtWidgets.QToolBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QFrame.Inst with null record;
   type UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is new Any;
   procedure Finalize (Self : in out Class);
   function currentChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentChanged(int)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function addItem
     (self   : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str) return int;
   function addItem
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; text_P : str) return int;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function count (self : access Inst) return int;
   function currentIndex (self : access Inst) return int;
   function currentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function indexOf (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   function insertItem
     (self   : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str) return int;
   function insertItem
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; text_P : str)
      return int;
   function isItemEnabled (self : access Inst; index_P : int) return bool;
   function itemIcon (self : access Inst; index_P : int) return access QtAda6.QtGui.QIcon.Inst'Class;
   procedure itemInserted (self : access Inst; index_P : int);
   procedure itemRemoved (self : access Inst; index_P : int);
   function itemText (self : access Inst; index_P : int) return str;
   function itemToolTip (self : access Inst; index_P : int) return str;
   procedure removeItem (self : access Inst; index_P : int);
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setCurrentWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setItemEnabled (self : access Inst; index_P : int; enabled_P : bool);
   procedure setItemIcon (self : access Inst; index_P : int; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setItemText (self : access Inst; index_P : int; text_P : str);
   procedure setItemToolTip (self : access Inst; index_P : int; toolTip_P : str);
   procedure showEvent (self : access Inst; e_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function widget (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QToolBox;
