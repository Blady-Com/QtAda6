-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qinputdialog.ads
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
limited with QtAda6.QtCore.Qt.InputMethodHint;
limited with QtAda6.QtWidgets.QLineEdit.EchoMode;
limited with QtAda6.QtWidgets.QInputDialog.InputMode;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QInputDialog.InputDialogOption;
with QtAda6.QtWidgets.QDialog;
package QtAda6.QtWidgets.QInputDialog is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   type LIST_str is array (Positive range <>) of str;
   type TUPLE_float_bool is record
      C0 : float;
      C1 : bool;
   end record;
   type TUPLE_int_bool is record
      C0 : int;
      C1 : bool;
   end record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type TUPLE_str_bool is record
      C0 : str;
      C1 : bool;
   end record;
   procedure Finalize (Self : in out Class);
   function doubleValueChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- doubleValueChanged(double)
   function doubleValueSelected
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- doubleValueSelected(double)
   function intValueChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- intValueChanged(int)
   function intValueSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- intValueSelected(int)
   function textValueChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textValueChanged(QString)
   function textValueSelected
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textValueSelected(QString)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function cancelButtonText (self : access Inst) return str;
   function comboBoxItems (self : access Inst) return LIST_str;
   procedure done (self : access Inst; result_P : int);
   function doubleDecimals (self : access Inst) return int;
   function doubleMaximum (self : access Inst) return float;
   function doubleMinimum (self : access Inst) return float;
   function doubleStep (self : access Inst) return float;
   function doubleValue (self : access Inst) return float;
   function getDouble
     (parent_P   : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; value_P : float := 0.0;
      minValue_P : float := 0.0; maxValue_P : float := 0.0; decimals_P : int := 0;
      flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null; step_P : float := 0.0) return TUPLE_float_bool;
   function getInt
     (parent_P   : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; value_P : int := 0;
      minValue_P : int                                           := 0; maxValue_P : int := 0; step_P : int := 0;
      flags_P    : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return TUPLE_int_bool;
   function getItem
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; items_P : SEQUENCE_str;
      current_P : int := 0; editable_P : bool := False; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null;
      inputMethodHints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class := null) return TUPLE_str_bool;
   function getMultiLineText
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; text_P : str := "";
      flags_P            : access QtAda6.QtCore.Qt.WindowType.Inst'Class      := null;
      inputMethodHints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class := null) return TUPLE_str_bool;
   function getText
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str;
      echo_P             : access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class := null; text_P : str := "";
      flags_P            : access QtAda6.QtCore.Qt.WindowType.Inst'Class         := null;
      inputMethodHints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class    := null) return TUPLE_str_bool;
   function inputMode_F (self : access Inst) return access QtAda6.QtWidgets.QInputDialog.InputMode.Inst'Class;
   function intMaximum (self : access Inst) return int;
   function intMinimum (self : access Inst) return int;
   function intStep (self : access Inst) return int;
   function intValue (self : access Inst) return int;
   function isComboBoxEditable (self : access Inst) return bool;
   function labelText (self : access Inst) return str;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function okButtonText (self : access Inst) return str;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   procedure setCancelButtonText (self : access Inst; text_P : str);
   procedure setComboBoxEditable (self : access Inst; editable_P : bool);
   procedure setComboBoxItems (self : access Inst; items_P : SEQUENCE_str);
   procedure setDoubleDecimals (self : access Inst; decimals_P : int);
   procedure setDoubleMaximum (self : access Inst; max_P : float);
   procedure setDoubleMinimum (self : access Inst; min_P : float);
   procedure setDoubleRange (self : access Inst; min_P : float; max_P : float);
   procedure setDoubleStep (self : access Inst; step_P : float);
   procedure setDoubleValue (self : access Inst; value_P : float);
   procedure setInputMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QInputDialog.InputMode.Inst'Class);
   procedure setIntMaximum (self : access Inst; max_P : int);
   procedure setIntMinimum (self : access Inst; min_P : int);
   procedure setIntRange (self : access Inst; min_P : int; max_P : int);
   procedure setIntStep (self : access Inst; step_P : int);
   procedure setIntValue (self : access Inst; value_P : int);
   procedure setLabelText (self : access Inst; text_P : str);
   procedure setOkButtonText (self : access Inst; text_P : str);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QInputDialog.InputDialogOption.Inst'Class;
      on_P : bool := False);
   procedure setTextEchoMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class);
   procedure setTextValue (self : access Inst; text_P : str);
   procedure setVisible (self : access Inst; visible_P : bool);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QInputDialog.InputDialogOption.Inst'Class) return bool;
   function textEchoMode (self : access Inst) return access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class;
   function textValue (self : access Inst) return str;
end QtAda6.QtWidgets.QInputDialog;
