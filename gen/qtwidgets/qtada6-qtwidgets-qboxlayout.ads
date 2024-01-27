-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qboxlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QBoxLayout.Direction;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QLayoutItem;
limited with QtAda6.QtWidgets.QSpacerItem;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QLayout;
package QtAda6.QtWidgets.QBoxLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QLayout.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (arg_1_P  : access QtAda6.QtWidgets.QBoxLayout.Direction.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addItem (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure addLayout
     (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class; stretch_P : int := 0);
   procedure addSpacerItem (self : access Inst; spacerItem_P : access QtAda6.QtWidgets.QSpacerItem.Inst'Class);
   procedure addSpacing (self : access Inst; size_P : int);
   procedure addStretch (self : access Inst; stretch_P : int := 0);
   procedure addStrut (self : access Inst; arg_1_P : int);
   procedure addWidget
     (self        : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   function count (self : access Inst) return int;
   function direction_F (self : access Inst) return access QtAda6.QtWidgets.QBoxLayout.Direction.Inst'Class;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function hasHeightForWidth (self : access Inst) return bool;
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   procedure insertItem (self : access Inst; index_P : int; arg_2_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure insertLayout
     (self : access Inst; index_P : int; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class; stretch_P : int := 0);
   procedure insertSpacerItem
     (self : access Inst; index_P : int; spacerItem_P : access QtAda6.QtWidgets.QSpacerItem.Inst'Class);
   procedure insertSpacing (self : access Inst; index_P : int; size_P : int);
   procedure insertStretch (self : access Inst; index_P : int; stretch_P : int := 0);
   procedure insertWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure invalidate (self : access Inst);
   function itemAt (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumHeightForWidth (self : access Inst; arg_1_P : int) return int;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setDirection (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QBoxLayout.Direction.Inst'Class);
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setSpacing (self : access Inst; spacing_P : int);
   procedure setStretch (self : access Inst; index_P : int; stretch_P : int);
   function setStretchFactor
     (self : access Inst; l_P : access QtAda6.QtWidgets.QLayout.Inst'Class; stretch_P : int) return bool;
   function setStretchFactor
     (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int) return bool;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function spacing (self : access Inst) return int;
   function stretch (self : access Inst; index_P : int) return int;
   function takeAt (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
end QtAda6.QtWidgets.QBoxLayout;
