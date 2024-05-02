-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcombobox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QCompleter;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyleOptionComboBox;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtWidgets.QComboBox.InsertPolicy;
limited with QtAda6.QtWidgets.QAbstractItemDelegate;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QLineEdit;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy;
limited with QtAda6.QtGui.QValidator;
limited with QtAda6.QtWidgets.QAbstractItemView;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QComboBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function activated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- activated(int)
   function currentIndexChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentIndexChanged(int)
   function currentTextChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentTextChanged(QString)
   function editTextChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- editTextChanged(QString)
   function highlighted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- highlighted(int)
   function textActivated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textActivated(QString)
   function textHighlighted
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textHighlighted(QString)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addItem
     (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str; userData_P : Any := null);
   procedure addItem
     (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str; userData_P : Any := null);
   procedure addItem (self : access Inst; text_P : str; userData_P : Any := null);
   procedure addItems (self : access Inst; texts_P : SEQUENCE_str);
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   procedure clearEditText (self : access Inst);
   function completer (self : access Inst) return access QtAda6.QtWidgets.QCompleter.Inst'Class;
   procedure contextMenuEvent (self : access Inst; e_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function count (self : access Inst) return int;
   function currentData (self : access Inst; role_P : int := 0) return Any;
   function currentIndex (self : access Inst) return int;
   function currentText (self : access Inst) return str;
   function duplicatesEnabled (self : access Inst) return bool;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function findData
     (self    : access Inst; data_P : Any; role_P : int := 0;
      flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null) return int;
   function findText
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null) return int;
   procedure focusInEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function hasFrame (self : access Inst) return bool;
   procedure hideEvent (self : access Inst; e_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure hidePopup (self : access Inst);
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionComboBox.Inst'Class);
   procedure inputMethodEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any) return Any;
   procedure insertItem
     (self       : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str;
      userData_P : Any := null);
   procedure insertItem
     (self       : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str;
      userData_P : Any := null);
   procedure insertItem (self : access Inst; index_P : int; text_P : str; userData_P : Any := null);
   procedure insertItems (self : access Inst; index_P : int; texts_P : SEQUENCE_str);
   function insertPolicy_F (self : access Inst) return access QtAda6.QtWidgets.QComboBox.InsertPolicy.Inst'Class;
   procedure insertSeparator (self : access Inst; index_P : int);
   function isEditable (self : access Inst) return bool;
   function itemData (self : access Inst; index_P : int; role_P : int := 0) return Any;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function itemIcon (self : access Inst; index_P : int) return access QtAda6.QtGui.QIcon.Inst'Class;
   function itemText (self : access Inst; index_P : int) return str;
   procedure keyPressEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function lineEdit (self : access Inst) return access QtAda6.QtWidgets.QLineEdit.Inst'Class;
   function maxCount (self : access Inst) return int;
   function maxVisibleItems (self : access Inst) return int;
   function minimumContentsLength (self : access Inst) return int;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   function modelColumn (self : access Inst) return int;
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function placeholderText (self : access Inst) return str;
   procedure removeItem (self : access Inst; index_P : int);
   procedure resizeEvent (self : access Inst; e_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function rootModelIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure setCompleter (self : access Inst; c_P : access QtAda6.QtWidgets.QCompleter.Inst'Class);
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setCurrentText (self : access Inst; text_P : str);
   procedure setDuplicatesEnabled (self : access Inst; enable_P : bool);
   procedure setEditText (self : access Inst; text_P : str);
   procedure setEditable (self : access Inst; editable_P : bool);
   procedure setFrame (self : access Inst; arg_1_P : bool);
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setInsertPolicy (self : access Inst; policy_P : access QtAda6.QtWidgets.QComboBox.InsertPolicy.Inst'Class);
   procedure setItemData (self : access Inst; index_P : int; value_P : Any; role_P : int := 0);
   procedure setItemDelegate
     (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setItemIcon (self : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QIcon.Inst'Class);
   procedure setItemIcon (self : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setItemText (self : access Inst; index_P : int; text_P : str);
   procedure setLineEdit (self : access Inst; edit_P : access QtAda6.QtWidgets.QLineEdit.Inst'Class);
   procedure setMaxCount (self : access Inst; max_P : int);
   procedure setMaxVisibleItems (self : access Inst; maxItems_P : int);
   procedure setMinimumContentsLength (self : access Inst; characters_P : int);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setModelColumn (self : access Inst; visibleColumn_P : int);
   procedure setPlaceholderText (self : access Inst; placeholderText_P : str);
   procedure setRootModelIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setRootModelIndex (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setSizeAdjustPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy.Inst'Class);
   procedure setValidator (self : access Inst; v_P : access QtAda6.QtGui.QValidator.Inst'Class);
   procedure setView (self : access Inst; itemView_P : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class);
   procedure showEvent (self : access Inst; e_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   procedure showPopup (self : access Inst);
   function sizeAdjustPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy.Inst'Class;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function validator (self : access Inst) return access QtAda6.QtGui.QValidator.Inst'Class;
   function view (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.Inst'Class;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QComboBox;
