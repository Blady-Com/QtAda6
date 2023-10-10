-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qguiapplication.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QCoreApplication;
with QtAda6.QtGui.QWindow;
with QtAda6.QtCore.Qt.ApplicationState;
with QtAda6.QtGui.QCursor;
with QtAda6.QtCore.Qt.CursorShape;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QClipboard;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy;
with QtAda6.QtGui.QInputMethod;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QScreen;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QStyleHints;
package body QtAda6.QtGui.QGuiApplication is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : Sequence_str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      List  := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List => List, Index => ssize_t (ind - arg_1_P'First), Item => Unicode_FromString (arg_1_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function allWindows return List_QtAda6_QtGui_QWindow is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "allWindows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allWindows;
   function applicationDisplayName return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "applicationDisplayName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationDisplayName;
   function applicationState return access QtAda6.QtCore.Qt.ApplicationState.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ApplicationState.Class := new QtAda6.QtCore.Qt.ApplicationState.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "applicationState");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end applicationState;
   procedure changeOverrideCursor
     (arg_1_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "changeOverrideCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end changeOverrideCursor;
   function clipboard return access QtAda6.QtGui.QClipboard.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QClipboard.Class := new QtAda6.QtGui.QClipboard.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "clipboard");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipboard;
   function desktopFileName return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "desktopFileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end desktopFileName;
   function desktopSettingsAware return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "desktopSettingsAware");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end desktopSettingsAware;
   function devicePixelRatio (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devicePixelRatio");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end devicePixelRatio;
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
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
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
   function focusObject return access QtAda6.QtCore.QObject.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "focusObject");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusObject;
   function focusWindow return access QtAda6.QtGui.QWindow.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "focusWindow");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusWindow;
   function font return access QtAda6.QtGui.QFont.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function highDpiScaleFactorRoundingPolicy return access QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy.Class :=
        new QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "highDpiScaleFactorRoundingPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end highDpiScaleFactorRoundingPolicy;
   function inputMethod return access QtAda6.QtGui.QInputMethod.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QInputMethod.Class := new QtAda6.QtGui.QInputMethod.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "inputMethod");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputMethod;
   function isLeftToRight return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "isLeftToRight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLeftToRight;
   function isRightToLeft return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "isRightToLeft");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRightToLeft;
   function isSavingSession (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSavingSession");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSavingSession;
   function isSessionRestored (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSessionRestored");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSessionRestored;
   function keyboardModifiers return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "keyboardModifiers");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end keyboardModifiers;
   function layoutDirection return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "layoutDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layoutDirection;
   function modalWindow return access QtAda6.QtGui.QWindow.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "modalWindow");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modalWindow;
   function mouseButtons return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "mouseButtons");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mouseButtons;
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
   function overrideCursor return access QtAda6.QtGui.QCursor.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QCursor.Class := new QtAda6.QtGui.QCursor.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "overrideCursor");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end overrideCursor;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "palette");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   function platformFunction (function_K_P : Union_QtAda6_QtCore_QByteArray_bytes) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "platformFunction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end platformFunction;
   function platformName return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "platformName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end platformName;
   function primaryScreen return access QtAda6.QtGui.QScreen.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "primaryScreen");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end primaryScreen;
   function queryKeyboardModifiers return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "queryKeyboardModifiers");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end queryKeyboardModifiers;
   function quitOnLastWindowClosed return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "quitOnLastWindowClosed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end quitOnLastWindowClosed;
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
   procedure restoreOverrideCursor is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "restoreOverrideCursor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end restoreOverrideCursor;
   function screenAt (point_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QScreen.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "screenAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, point_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screenAt;
   function screens return List_QtAda6_QtGui_QScreen is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "screens");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end screens;
   function sessionId (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sessionId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sessionId;
   function sessionKey (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sessionKey");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sessionKey;
   procedure setApplicationDisplayName (name_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setApplicationDisplayName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setApplicationDisplayName;
   procedure setBadgeNumber (self : access Inst; number_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBadgeNumber");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (number_P));
      Result := Object_CallObject (Method, Args, True);
   end setBadgeNumber;
   procedure setDesktopFileName (name_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setDesktopFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setDesktopFileName;
   procedure setDesktopSettingsAware (on_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setDesktopSettingsAware");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setDesktopSettingsAware;
   procedure setFont (arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setHighDpiScaleFactorRoundingPolicy
     (policy_P : access QtAda6.QtCore.Qt.HighDpiScaleFactorRoundingPolicy.Inst'Class)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setHighDpiScaleFactorRoundingPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, policy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setHighDpiScaleFactorRoundingPolicy;
   procedure setLayoutDirection (direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setLayoutDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setLayoutDirection;
   function setOverrideCursor
     (arg_1_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap) return Object
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setOverrideCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end setOverrideCursor;
   procedure setPalette (pal_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setPalette");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPalette;
   procedure setQuitOnLastWindowClosed (quit_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setQuitOnLastWindowClosed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (quit_P));
      Result := Object_CallObject (Method, Args, True);
   end setQuitOnLastWindowClosed;
   procedure setWindowIcon (icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "setWindowIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setWindowIcon;
   function styleHints return access QtAda6.QtGui.QStyleHints.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QStyleHints.Class := new QtAda6.QtGui.QStyleHints.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "styleHints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end styleHints;
   procedure sync is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "sync");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end sync;
   function topLevelAt (pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QWindow.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "topLevelAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, pos_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelAt;
   function topLevelWindows return List_QtAda6_QtGui_QWindow is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method := Object_GetAttrString (Class, "topLevelWindows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end topLevelWindows;
   function windowIcon return access QtAda6.QtGui.QIcon.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGuiApplication");
      Method           := Object_GetAttrString (Class, "windowIcon");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowIcon;
end QtAda6.QtGui.QGuiApplication;
