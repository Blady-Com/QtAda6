-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QChildEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.Qt.FindChildOption;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtWidgets.QLayout.SizeConstraint;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QLayoutItem;
package QtAda6.QtWidgets.QLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtWidgets.QLayoutItem.Inst
   with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function activate (self : access Inst) return bool;
   procedure addChildLayout (self : access Inst; l_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure addChildWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure addItem (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure addWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function adoptLayout (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) return bool;
   function alignmentRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure childEvent (self : access Inst; e_P : access QtAda6.QtCore.QChildEvent.Inst'Class);
   function closestAcceptableSize
     (w_P : access QtAda6.QtWidgets.QWidget.Inst'Class; s_P : access QtAda6.QtCore.QSize.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function contentsMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function contentsRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function controlTypes (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
   function count (self : access Inst) return int;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function getContentsMargins (self : access Inst) return access Object'Class;
   function indexOf (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class) return int;
   function indexOf (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   procedure invalidate (self : access Inst);
   function isEmpty (self : access Inst) return bool;
   function isEnabled (self : access Inst) return bool;
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function layout (self : access Inst) return access QtAda6.QtWidgets.QLayout.Inst'Class;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function menuBar (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function parentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure removeItem (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure removeWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function replaceWidget
     (self      : access Inst; from_U_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      to_P      : access QtAda6.QtWidgets.QWidget.Inst'Class;
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class := null)
      return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   procedure setAlignment (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   function setAlignment
     (self        : access Inst; l_P : access QtAda6.QtWidgets.QLayout.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return bool;
   function setAlignment
     (self        : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return bool;
   procedure setContentsMargins (self : access Inst; left_P : int; top_P : int; right_P : int; bottom_P : int);
   procedure setContentsMargins (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class);
   procedure setEnabled (self : access Inst; arg_1_P : bool);
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setMenuBar (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setSizeConstraint
     (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.SizeConstraint.Inst'Class);
   procedure setSpacing (self : access Inst; arg_1_P : int);
   function sizeConstraint_F (self : access Inst) return access QtAda6.QtWidgets.QLayout.SizeConstraint.Inst'Class;
   function spacing (self : access Inst) return int;
   function takeAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function totalHeightForWidth (self : access Inst; w_P : int) return int;
   function totalMaximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function totalMinimumHeightForWidth (self : access Inst; w_P : int) return int;
   function totalMinimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function totalSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure unsetContentsMargins (self : access Inst);
   procedure update (self : access Inst);
   procedure widgetEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
end QtAda6.QtWidgets.QLayout;
