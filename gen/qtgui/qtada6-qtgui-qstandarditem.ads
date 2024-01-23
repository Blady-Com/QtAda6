-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qstandarditem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.CheckState;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtGui.QStandardItemModel;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.Qt.SortOrder;
package QtAda6.QtGui.QStandardItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap is new Any;
   subtype SEQUENCE_QtAda6_QtGui_QStandardItem is QtAda6.QtGui.QStandardItem.Class_Array;
   type UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap is
     new Any;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   subtype LIST_QtAda6_QtGui_QStandardItem is QtAda6.QtGui.QStandardItem.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (icon_P : UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap; text_P : str) return Class;
   function Create (other_P : access QtAda6.QtGui.QStandardItem.Inst'Class) return Class;
   function Create (rows_P : int; columns_P : int := 0) return Class;
   function Create (text_P : str) return Class;
   function U_lshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function accessibleDescription (self : access Inst) return str;
   function accessibleText (self : access Inst) return str;
   procedure appendColumn (self : access Inst; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem);
   procedure appendRow (self : access Inst; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
   procedure appendRow (self : access Inst; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem);
   procedure appendRows (self : access Inst; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem);
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function checkState (self : access Inst) return access QtAda6.QtCore.Qt.CheckState.Inst'Class;
   function child
     (self : access Inst; row_P : int; column_P : int := 0) return access QtAda6.QtGui.QStandardItem.Inst'Class;
   procedure clearData (self : access Inst);
   function clone (self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class;
   function column (self : access Inst) return int;
   function columnCount (self : access Inst) return int;
   function data (self : access Inst; role_P : int := 0) return Any;
   procedure emitDataChanged (self : access Inst);
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function foreground (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function hasChildren (self : access Inst) return bool;
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function index (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure insertColumn (self : access Inst; column_P : int; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem);
   procedure insertColumns (self : access Inst; column_P : int; count_P : int);
   procedure insertRow (self : access Inst; row_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
   procedure insertRow (self : access Inst; row_P : int; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem);
   procedure insertRows (self : access Inst; row_P : int; count_P : int);
   procedure insertRows (self : access Inst; row_P : int; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem);
   function isAutoTristate (self : access Inst) return bool;
   function isCheckable (self : access Inst) return bool;
   function isDragEnabled (self : access Inst) return bool;
   function isDropEnabled (self : access Inst) return bool;
   function isEditable (self : access Inst) return bool;
   function isEnabled (self : access Inst) return bool;
   function isSelectable (self : access Inst) return bool;
   function isUserTristate (self : access Inst) return bool;
   function model (self : access Inst) return access QtAda6.QtGui.QStandardItemModel.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class;
   procedure read (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class);
   procedure removeColumn (self : access Inst; column_P : int);
   procedure removeColumns (self : access Inst; column_P : int; count_P : int);
   procedure removeRow (self : access Inst; row_P : int);
   procedure removeRows (self : access Inst; row_P : int; count_P : int);
   function row (self : access Inst) return int;
   function rowCount (self : access Inst) return int;
   procedure setAccessibleDescription (self : access Inst; accessibleDescription_P : str);
   procedure setAccessibleText (self : access Inst; accessibleText_P : str);
   procedure setAutoTristate (self : access Inst; tristate_P : bool);
   procedure setBackground
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap);
   procedure setCheckState (self : access Inst; checkState_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class);
   procedure setCheckable (self : access Inst; checkable_P : bool);
   procedure setChild
     (self : access Inst; row_P : int; column_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
   procedure setChild (self : access Inst; row_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
   procedure setColumnCount (self : access Inst; columns_P : int);
   procedure setData (self : access Inst; value_P : Any; role_P : int := 0);
   procedure setDragEnabled (self : access Inst; dragEnabled_P : bool);
   procedure setDropEnabled (self : access Inst; dropEnabled_P : bool);
   procedure setEditable (self : access Inst; editable_P : bool);
   procedure setEnabled (self : access Inst; enabled_P : bool);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtCore.Qt.ItemFlag.Inst'Class);
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str);
   procedure setForeground
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap);
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap);
   procedure setRowCount (self : access Inst; rows_P : int);
   procedure setSelectable (self : access Inst; selectable_P : bool);
   procedure setSizeHint (self : access Inst; sizeHint_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setStatusTip (self : access Inst; statusTip_P : str);
   procedure setText (self : access Inst; text_P : str);
   procedure setTextAlignment (self : access Inst; textAlignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setToolTip (self : access Inst; toolTip_P : str);
   procedure setUserTristate (self : access Inst; tristate_P : bool);
   procedure setWhatsThis (self : access Inst; whatsThis_P : str);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure sortChildren
     (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null);
   function statusTip (self : access Inst) return str;
   function takeChild
     (self : access Inst; row_P : int; column_P : int := 0) return access QtAda6.QtGui.QStandardItem.Inst'Class;
   function takeColumn (self : access Inst; column_P : int) return LIST_QtAda6_QtGui_QStandardItem;
   function takeRow (self : access Inst; row_P : int) return LIST_QtAda6_QtGui_QStandardItem;
   function text (self : access Inst) return str;
   function textAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function toolTip (self : access Inst) return str;
   function type_K (self : access Inst) return int;
   function whatsThis (self : access Inst) return str;
   procedure write (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class);
end QtAda6.QtGui.QStandardItem;
