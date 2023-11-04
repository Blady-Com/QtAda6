-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreewidgetitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QTreeWidget;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.CheckState;
limited with QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.Qt.SortOrder;
package QtAda6.QtWidgets.QTreeWidgetItem is
   type Sequence_str is access Any;
   type Sequence_QtAda6_QtWidgets_QTreeWidgetItem is access Any;
   type Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type List_QtAda6_QtWidgets_QTreeWidgetItem is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (other_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return Class;
   function Create
     (parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
      after_P  : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; type_K_P : int) return Class;
   function Create
     (parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; strings_P : Sequence_str; type_K_P : int)
      return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; type_K_P : int) return Class;
   function Create (strings_P : Sequence_str; type_K_P : int) return Class;
   function Create
     (treeview_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class;
      after_P    : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; type_K_P : int) return Class;
   function Create
     (treeview_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class; strings_P : Sequence_str; type_K_P : int)
      return Class;
   function Create (treeview_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class; type_K_P : int) return Class;
   function Create (type_K_P : int) return Class;
   function U_lshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   procedure addChild (self : access Inst; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure addChildren (self : access Inst; children_P : Sequence_QtAda6_QtWidgets_QTreeWidgetItem);
   function background (self : access Inst; column_P : int) return access QtAda6.QtGui.QBrush.Inst'Class;
   function checkState (self : access Inst; column_P : int) return access QtAda6.QtCore.Qt.CheckState.Inst'Class;
   function child_F (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function childCount (self : access Inst) return int;
   function childIndicatorPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy.Inst'Class;
   function clone (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function columnCount (self : access Inst) return int;
   function data (self : access Inst; column_P : int; role_P : int) return Any;
   procedure emitDataChanged (self : access Inst);
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function font (self : access Inst; column_P : int) return access QtAda6.QtGui.QFont.Inst'Class;
   function foreground (self : access Inst; column_P : int) return access QtAda6.QtGui.QBrush.Inst'Class;
   function icon (self : access Inst; column_P : int) return access QtAda6.QtGui.QIcon.Inst'Class;
   function indexOfChild (self : access Inst; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return int;
   procedure insertChild
     (self : access Inst; index_P : int; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure insertChildren (self : access Inst; index_P : int; children_P : Sequence_QtAda6_QtWidgets_QTreeWidgetItem);
   function isDisabled (self : access Inst) return bool;
   function isExpanded (self : access Inst) return bool;
   function isFirstColumnSpanned (self : access Inst) return bool;
   function isHidden (self : access Inst) return bool;
   function isSelected (self : access Inst) return bool;
   function parent (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   procedure read (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class);
   procedure removeChild (self : access Inst; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure setBackground
     (self    : access Inst; column_P : int;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setCheckState
     (self : access Inst; column_P : int; state_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class);
   procedure setChildIndicatorPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy.Inst'Class);
   procedure setData (self : access Inst; column_P : int; role_P : int; value_P : Any);
   procedure setDisabled (self : access Inst; disabled_P : bool);
   procedure setExpanded (self : access Inst; expand_P : bool);
   procedure setFirstColumnSpanned (self : access Inst; span_P : bool);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtCore.Qt.ItemFlag.Inst'Class);
   procedure setFont (self : access Inst; column_P : int; font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setForeground
     (self    : access Inst; column_P : int;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setHidden (self : access Inst; hide_P : bool);
   procedure setIcon (self : access Inst; column_P : int; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setSelected (self : access Inst; select_K_P : bool);
   procedure setSizeHint (self : access Inst; column_P : int; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setStatusTip (self : access Inst; column_P : int; statusTip_P : str);
   procedure setText (self : access Inst; column_P : int; text_P : str);
   procedure setTextAlignment
     (self : access Inst; column_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
-- procedure setTextAlignment(self : access Inst;column_P : int;alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setTextAlignment (self : access Inst; column_P : int; alignment_P : int);
   procedure setToolTip (self : access Inst; column_P : int; toolTip_P : str);
   procedure setWhatsThis (self : access Inst; column_P : int; whatsThis_P : str);
   function sizeHint (self : access Inst; column_P : int) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure sortChildren (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   function statusTip (self : access Inst; column_P : int) return str;
   function takeChild (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function takeChildren (self : access Inst) return List_QtAda6_QtWidgets_QTreeWidgetItem;
   function text (self : access Inst; column_P : int) return str;
   function textAlignment (self : access Inst; column_P : int) return int;
   function toolTip (self : access Inst; column_P : int) return str;
   function treeWidget (self : access Inst) return access QtAda6.QtWidgets.QTreeWidget.Inst'Class;
   function type_K (self : access Inst) return int;
   function whatsThis (self : access Inst; column_P : int) return str;
   procedure write (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class);
end QtAda6.QtWidgets.QTreeWidgetItem;
