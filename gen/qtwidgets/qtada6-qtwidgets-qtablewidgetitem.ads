-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtablewidgetitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.CheckState;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtWidgets.QTableWidget;
package QtAda6.QtWidgets.QTableWidgetItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is new Any;
   type UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     new Any;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str; type_K_P : int := 0) return Class;
   function Create (other_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return Class;
   function Create (text_P : str; type_K_P : int := 0) return Class;
   function Create (type_K_P : int := 0) return Class;
   function U_lshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function checkState (self : access Inst) return access QtAda6.QtCore.Qt.CheckState.Inst'Class;
   function clone (self : access Inst) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function column (self : access Inst) return int;
   function data (self : access Inst; role_P : int) return Any;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function foreground (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function isSelected (self : access Inst) return bool;
   procedure read (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class);
   function row (self : access Inst) return int;
   procedure setBackground
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setCheckState (self : access Inst; state_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class);
   procedure setData (self : access Inst; role_P : int; value_P : Any);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtCore.Qt.ItemFlag.Inst'Class);
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str);
   procedure setForeground
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setSelected (self : access Inst; select_K_P : bool);
   procedure setSizeHint (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setStatusTip (self : access Inst; statusTip_P : str);
   procedure setText (self : access Inst; text_P : str);
   procedure setTextAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
-- procedure setTextAlignment(self : access Inst;alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setTextAlignment (self : access Inst; alignment_P : int);
   procedure setToolTip (self : access Inst; toolTip_P : str);
   procedure setWhatsThis (self : access Inst; whatsThis_P : str);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function statusTip (self : access Inst) return str;
   function tableWidget (self : access Inst) return access QtAda6.QtWidgets.QTableWidget.Inst'Class;
   function text (self : access Inst) return str;
   function textAlignment (self : access Inst) return int;
   function toolTip (self : access Inst) return str;
   function type_K (self : access Inst) return int;
   function whatsThis (self : access Inst) return str;
   procedure write (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class);
end QtAda6.QtWidgets.QTableWidgetItem;
