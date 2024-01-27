-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstackedlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QLayoutItem;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QStackedLayout.StackingMode;
with QtAda6.QtWidgets.QLayout;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QStackedLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QLayout.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   procedure Finalize (Self : in out Class);
   function currentChanged (self : access Inst) return CLASSVAR_Signal;-- currentChanged(int)
   function widgetRemoved (self : access Inst) return CLASSVAR_Signal;-- widgetRemoved(int)
   function Create return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return Class;
   function Create (parentLayout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) return Class;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   function addWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   function count (self : access Inst) return int;
   function currentIndex (self : access Inst) return int;
   function currentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function hasHeightForWidth (self : access Inst) return bool;
   function heightForWidth (self : access Inst; width_P : int) return int;
   function insertWidget
     (self : access Inst; index_P : int; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   function itemAt (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setCurrentWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setStackingMode
     (self : access Inst; stackingMode_P : access QtAda6.QtWidgets.QStackedLayout.StackingMode.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function stackingMode_F (self : access Inst) return access QtAda6.QtWidgets.QStackedLayout.StackingMode.Inst'Class;
   function takeAt (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function widget (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QStackedLayout;
