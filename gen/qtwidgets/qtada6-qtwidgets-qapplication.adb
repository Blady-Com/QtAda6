-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qapplication.adb
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
with QtAda6.QtGui.QGuiApplication;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QFontMetrics;
with QtAda6.QtCore.Qt.UIEffect;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtWidgets.QStyle;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtWidgets.QApplication is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : Sequence_str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      List  := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List => List, Index => ssize_t (ind - arg_1_P'First), Item => Unicode_FromString (arg_1_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure aboutQt is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "aboutQt");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end aboutQt;
   function activeModalWidget return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "activeModalWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activeModalWidget;
   function activePopupWidget return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "activePopupWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activePopupWidget;
   function activeWindow return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "activeWindow");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activeWindow;
   procedure alert (widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; duration_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "alert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, widget_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (duration_P));
      Result := Object_CallObject (Method, Args, True);
   end alert;
   function allWidgets return List_QtAda6_QtWidgets_QWidget is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "allWidgets");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allWidgets;
   function autoSipEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoSipEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end autoSipEnabled;
   procedure beep is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "beep");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end beep;
   procedure closeAllWindows is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "closeAllWindows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end closeAllWindows;
   function cursorFlashTime return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "cursorFlashTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cursorFlashTime;
   function doubleClickInterval return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "doubleClickInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end doubleClickInterval;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function exec return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "exec");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end exec;
   function exec_U (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec_");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end exec_U;
   function focusWidget return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "focusWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusWidget;
   function font return access QtAda6.QtGui.QFont.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function font (arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtGui.QFont.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "font");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function font (className_P : bytes) return access QtAda6.QtGui.QFont.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "font");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (className_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function fontMetrics return access QtAda6.QtGui.QFontMetrics.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QFontMetrics.Class := new QtAda6.QtGui.QFontMetrics.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "fontMetrics");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontMetrics;
   function isEffectEnabled (arg_1_P : access QtAda6.QtCore.Qt.UIEffect.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "isEffectEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEffectEnabled;
   function keyboardInputInterval return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "keyboardInputInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end keyboardInputInterval;
   function notify
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "notify");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end notify;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "palette");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   function palette
     (arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtGui.QPalette.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "palette");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   function palette (className_P : bytes) return access QtAda6.QtGui.QPalette.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "palette");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (className_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveInterface");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (revision_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolveInterface;
   procedure setActiveWindow (act_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setActiveWindow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, act_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setActiveWindow;
   procedure setAutoSipEnabled (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoSipEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoSipEnabled;
   procedure setCursorFlashTime (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setCursorFlashTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setCursorFlashTime;
   procedure setDoubleClickInterval (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setDoubleClickInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setDoubleClickInterval;
   procedure setEffectEnabled (arg_1_P : access QtAda6.QtCore.Qt.UIEffect.Inst'Class; enable_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setEffectEnabled");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setEffectEnabled;
   procedure setFont (arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str; className_P : Optional_bytes) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setKeyboardInputInterval (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setKeyboardInputInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setKeyboardInputInterval;
   procedure setPalette
     (arg_1_P     : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor;
      className_P : Optional_bytes)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setPalette");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPalette;
   procedure setStartDragDistance (l_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setStartDragDistance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (l_P));
      Result := Object_CallObject (Method, Args, True);
   end setStartDragDistance;
   procedure setStartDragTime (ms_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setStartDragTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ms_P));
      Result := Object_CallObject (Method, Args, True);
   end setStartDragTime;
   procedure setStyle (arg_1_P : access QtAda6.QtWidgets.QStyle.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setStyle;
   function setStyle (arg_1_P : str) return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setStyle;
   procedure setStyleSheet (self : access Inst; sheet_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyleSheet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (sheet_P));
      Result := Object_CallObject (Method, Args, True);
   end setStyleSheet;
   procedure setWheelScrollLines (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "setWheelScrollLines");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setWheelScrollLines;
   function startDragDistance return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "startDragDistance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startDragDistance;
   function startDragTime return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "startDragTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startDragTime;
   function style return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method           := Object_GetAttrString (Class, "style");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   function styleSheet (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleSheet");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end styleSheet;
   function topLevelAt (p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "topLevelAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelAt;
   function topLevelAt (x_P : int; y_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "topLevelAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelAt;
   function topLevelWidgets return List_QtAda6_QtWidgets_QWidget is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "topLevelWidgets");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end topLevelWidgets;
   function wheelScrollLines return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "wheelScrollLines");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end wheelScrollLines;
   function widgetAt (p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "widgetAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end widgetAt;
   function widgetAt (x_P : int; y_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QApplication");
      Method := Object_GetAttrString (Class, "widgetAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end widgetAt;
end QtAda6.QtWidgets.QApplication;
