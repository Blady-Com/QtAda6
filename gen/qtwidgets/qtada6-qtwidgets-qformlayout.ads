-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qformlayout.ads
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
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtWidgets.QFormLayout.ItemRole;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QFormLayout.RowWrapPolicy;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QFormLayout.TakeRowResult;
with QtAda6.QtWidgets.QLayout;
package QtAda6.QtWidgets.QFormLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QLayout.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure addRow
     (self    : access Inst; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure addRow
     (self    : access Inst; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure addRow (self : access Inst; labelText_P : str; field_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure addRow (self : access Inst; labelText_P : str; field_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure addRow (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure addRow (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function count (self : access Inst) return int;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function fieldGrowthPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy.Inst'Class;
   function formAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function getItemPosition (self : access Inst; index_P : int) return access Object'Class;
   function getLayoutPosition
     (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) return access Object'Class;
   function getWidgetPosition
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access Object'Class;
   function hasHeightForWidth (self : access Inst) return bool;
   function heightForWidth (self : access Inst; width_P : int) return int;
   function horizontalSpacing (self : access Inst) return int;
   procedure insertRow
     (self    : access Inst; row_P : int; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure insertRow
     (self    : access Inst; row_P : int; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure insertRow
     (self : access Inst; row_P : int; labelText_P : str; field_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure insertRow
     (self : access Inst; row_P : int; labelText_P : str; field_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure insertRow (self : access Inst; row_P : int; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure insertRow (self : access Inst; row_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure invalidate (self : access Inst);
   function isRowVisible (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) return bool;
   function isRowVisible (self : access Inst; row_P : int) return bool;
   function isRowVisible (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool;
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function itemAt
     (self : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class)
      return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function labelAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function labelForField
     (self : access Inst; field_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function labelForField
     (self : access Inst; field_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure removeRow (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure removeRow (self : access Inst; row_P : int);
   procedure removeRow (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function rowCount (self : access Inst) return int;
   function rowWrapPolicy_F (self : access Inst) return access QtAda6.QtWidgets.QFormLayout.RowWrapPolicy.Inst'Class;
   procedure setFieldGrowthPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy.Inst'Class);
   procedure setFormAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setHorizontalSpacing (self : access Inst; spacing_P : int);
   procedure setItem
     (self   : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class;
      item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure setLabelAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setLayout
     (self     : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class;
      layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure setRowVisible (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class; on_P : bool);
   procedure setRowVisible (self : access Inst; row_P : int; on_P : bool);
   procedure setRowVisible (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; on_P : bool);
   procedure setRowWrapPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QFormLayout.RowWrapPolicy.Inst'Class);
   procedure setSpacing (self : access Inst; arg_1_P : int);
   procedure setVerticalSpacing (self : access Inst; spacing_P : int);
   procedure setWidget
     (self     : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function spacing (self : access Inst) return int;
   function takeAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function takeRow
     (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
      return access QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst'Class;
   function takeRow
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst'Class;
   function takeRow
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst'Class;
   function verticalSpacing (self : access Inst) return int;
end QtAda6.QtWidgets.QFormLayout;
