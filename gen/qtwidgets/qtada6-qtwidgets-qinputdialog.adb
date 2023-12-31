-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qinputdialog.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtCore.Qt.InputMethodHint;
with QtAda6.QtWidgets.QLineEdit.EchoMode;
with QtAda6.QtWidgets.QInputDialog.InputMode;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QInputDialog.InputDialogOption;
package body QtAda6.QtWidgets.QInputDialog is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (parent_P : Optional_QtAda6_QtWidgets_QWidget; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QInputDialog");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function cancelButtonText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cancelButtonText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end cancelButtonText;
   function comboBoxItems (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "comboBoxItems");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end comboBoxItems;
   procedure done (self : access Inst; result_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (result_P));
      Result := Object_CallObject (Method, Args, True);
   end done;
   function doubleDecimals (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doubleDecimals");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end doubleDecimals;
   function doubleMaximum (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doubleMaximum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end doubleMaximum;
   function doubleMinimum (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doubleMinimum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end doubleMinimum;
   function doubleStep (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doubleStep");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end doubleStep;
   function doubleValue (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doubleValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end doubleValue;
   function getDouble
     (parent_P   : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; value_P : float;
      minValue_P : float; maxValue_P : float; decimals_P : int; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class;
      step_P     : float) return Tuple_float_bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QInputDialog");
      Method := Object_GetAttrString (Class, "getDouble");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (label_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (value_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (minValue_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (maxValue_P));
      Tuple_SetItem (Args, 6, Long_FromLong (decimals_P));
      Tuple_SetItem (Args, 7, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 8, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getDouble;
   function getInt
     (parent_P   : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; value_P : int;
      minValue_P : int; maxValue_P : int; step_P : int; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Tuple_int_bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QInputDialog");
      Method := Object_GetAttrString (Class, "getInt");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (label_P));
      Tuple_SetItem (Args, 3, Long_FromLong (value_P));
      Tuple_SetItem (Args, 4, Long_FromLong (minValue_P));
      Tuple_SetItem (Args, 5, Long_FromLong (maxValue_P));
      Tuple_SetItem (Args, 6, Long_FromLong (step_P));
      Tuple_SetItem (Args, 7, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getInt;
   function getItem
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; items_P : Sequence_str;
      current_P          : int; editable_P : bool; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class;
      inputMethodHints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class) return Tuple_str_bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QInputDialog");
      Method := Object_GetAttrString (Class, "getItem");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (label_P));
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, Long_FromLong (current_P));
      Tuple_SetItem (Args, 5, To_Python (editable_P));
      Tuple_SetItem (Args, 6, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 7, inputMethodHints_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getItem;
   function getMultiLineText
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str; text_P : str;
      flags_P            : access QtAda6.QtCore.Qt.WindowType.Inst'Class;
      inputMethodHints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class) return Tuple_str_bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QInputDialog");
      Method := Object_GetAttrString (Class, "getMultiLineText");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (label_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 4, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 5, inputMethodHints_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getMultiLineText;
   function getText
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; label_P : str;
      echo_P             : access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class; text_P : str;
      flags_P            : access QtAda6.QtCore.Qt.WindowType.Inst'Class;
      inputMethodHints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class) return Tuple_str_bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QInputDialog");
      Method := Object_GetAttrString (Class, "getText");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (label_P));
      Tuple_SetItem (Args, 3, echo_P.Python_Proxy);
      Tuple_SetItem (Args, 4, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 5, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 6, inputMethodHints_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getText;
   function inputMode_F (self : access Inst) return access QtAda6.QtWidgets.QInputDialog.InputMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QInputDialog.InputMode.Class := new QtAda6.QtWidgets.QInputDialog.InputMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputMode_F;
   function intMaximum (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intMaximum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end intMaximum;
   function intMinimum (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intMinimum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end intMinimum;
   function intStep (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intStep");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end intStep;
   function intValue (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end intValue;
   function isComboBoxEditable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isComboBoxEditable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isComboBoxEditable;
   function labelText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "labelText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end labelText;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
   function okButtonText (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "okButtonText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end okButtonText;
   procedure open (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end open;
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Result := Object_CallObject (Method, Args, True);
   end open;
   procedure setCancelButtonText (self : access Inst; text_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCancelButtonText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setCancelButtonText;
   procedure setComboBoxEditable (self : access Inst; editable_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setComboBoxEditable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (editable_P));
      Result := Object_CallObject (Method, Args, True);
   end setComboBoxEditable;
   procedure setComboBoxItems (self : access Inst; items_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setComboBoxItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setComboBoxItems;
   procedure setDoubleDecimals (self : access Inst; decimals_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDoubleDecimals");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (decimals_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleDecimals;
   procedure setDoubleMaximum (self : access Inst; max_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDoubleMaximum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (max_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleMaximum;
   procedure setDoubleMinimum (self : access Inst; min_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDoubleMinimum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (min_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleMinimum;
   procedure setDoubleRange (self : access Inst; min_P : float; max_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDoubleRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (min_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (max_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleRange;
   procedure setDoubleStep (self : access Inst; step_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDoubleStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleStep;
   procedure setDoubleValue (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDoubleValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleValue;
   procedure setInputMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QInputDialog.InputMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInputMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setInputMode;
   procedure setIntMaximum (self : access Inst; max_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIntMaximum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (max_P));
      Result := Object_CallObject (Method, Args, True);
   end setIntMaximum;
   procedure setIntMinimum (self : access Inst; min_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIntMinimum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (min_P));
      Result := Object_CallObject (Method, Args, True);
   end setIntMinimum;
   procedure setIntRange (self : access Inst; min_P : int; max_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIntRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (min_P));
      Tuple_SetItem (Args, 1, Long_FromLong (max_P));
      Result := Object_CallObject (Method, Args, True);
   end setIntRange;
   procedure setIntStep (self : access Inst; step_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIntStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (step_P));
      Result := Object_CallObject (Method, Args, True);
   end setIntStep;
   procedure setIntValue (self : access Inst; value_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIntValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setIntValue;
   procedure setLabelText (self : access Inst; text_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLabelText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setLabelText;
   procedure setOkButtonText (self : access Inst; text_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOkButtonText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setOkButtonText;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QInputDialog.InputDialogOption.Inst'Class; on_P : bool)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setOption;
   procedure setTextEchoMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextEchoMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTextEchoMode;
   procedure setTextValue (self : access Inst; text_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setTextValue;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QInputDialog.InputDialogOption.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testOption;
   function textEchoMode (self : access Inst) return access QtAda6.QtWidgets.QLineEdit.EchoMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLineEdit.EchoMode.Class := new QtAda6.QtWidgets.QLineEdit.EchoMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textEchoMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textEchoMode;
   function textValue (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end textValue;
end QtAda6.QtWidgets.QInputDialog;
