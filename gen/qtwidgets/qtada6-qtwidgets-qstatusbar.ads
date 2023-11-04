-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstatusbar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QShowEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QStatusBar is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   messageChanged : ClassVar_Signal;-- messageChanged(QString)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure addPermanentWidget
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int);
   procedure addWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int);
   procedure clearMessage (self : access Inst);
   function currentMessage (self : access Inst) return str;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure hideOrShow (self : access Inst);
   function insertPermanentWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int)
      return int;
   function insertWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int)
      return int;
   function isSizeGripEnabled (self : access Inst) return bool;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure reformat (self : access Inst);
   procedure removeWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setSizeGripEnabled (self : access Inst; arg_1_P : bool);
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   procedure showMessage (self : access Inst; text_P : str; timeout_P : int);
end QtAda6.QtWidgets.QStatusBar;
