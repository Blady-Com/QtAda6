-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qobject.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QChildEvent;
with QtAda6.QtCore.Qt.ConnectionType;
with QtAda6.QtCore.QMetaObject.Connection;
with QtAda6.QtCore.QMetaMethod;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.Qt.FindChildOption;
with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtCore.QMetaObject;
with QtAda6.QtCore.QThread;
with QtAda6.QtCore.Qt.TimerType;
with QtAda6.QtCore.QTimerEvent;
package body QtAda6.QtCore.QObject is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function blockSignals (self : access Inst; b_P : bool) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockSignals");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end blockSignals;
   procedure childEvent (self : access Inst; event_P : access QtAda6.QtCore.QChildEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end childEvent;
   function children (self : access Inst) return List_QtAda6_QtCore_QObject is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "children");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end children;
   function connect
     (arg_1_P  : access QtAda6.QtCore.QObject.Inst'Class; arg_2_P : bytes; arg_3_P : Callable;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Connection.Class := new QtAda6.QtCore.QMetaObject.Connection.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "connect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Tuple_SetItem (Args, 2, Callable_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 3, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end connect;
   function connect
     (self     : access Inst; arg_1_P : bytes; arg_2_P : Callable;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Connection.Class := new QtAda6.QtCore.QMetaObject.Connection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Tuple_SetItem (Args, 1, Callable_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 2, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end connect;
   function connect
     (self     : access Inst; arg_1_P : bytes; arg_2_P : access QtAda6.QtCore.QObject.Inst'Class; arg_3_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Connection.Class := new QtAda6.QtCore.QMetaObject.Connection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Bytes_FromString (String (arg_3_P)));
      Tuple_SetItem (Args, 3, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end connect;
   function connect
     (self     : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class; signal_P : bytes; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Connection.Class := new QtAda6.QtCore.QMetaObject.Connection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (signal_P)));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 3, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end connect;
   function connect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_P : access QtAda6.QtCore.QMetaMethod.Inst'Class;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Connection.Class := new QtAda6.QtCore.QMetaObject.Connection.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "connect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, signal_P.Python_Proxy);
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, method_P.Python_Proxy);
      Tuple_SetItem (Args, 4, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end connect;
   function connect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : bytes;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Connection.Class := new QtAda6.QtCore.QMetaObject.Connection.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "connect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (signal_P)));
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 4, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end connect;
   procedure connectNotify (self : access Inst; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connectNotify");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, signal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end connectNotify;
   procedure customEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "customEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end customEvent;
   procedure deleteLater (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleteLater");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end deleteLater;
   function disconnect (arg_1_P : access QtAda6.QtCore.QMetaObject.Connection.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "disconnect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnect
     (arg_1_P : access QtAda6.QtCore.QObject.Inst'Class; arg_2_P : bytes; arg_3_P : Callable) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "disconnect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Tuple_SetItem (Args, 2, Callable_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnect (self : access Inst; arg_1_P : bytes; arg_2_P : Callable) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "disconnect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Tuple_SetItem (Args, 1, Callable_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnect
     (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : Optional_bytes) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "disconnect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnect
     (self : access Inst; signal_P : bytes; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "disconnect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (signal_P)));
      Tuple_SetItem (Args, 1, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Bytes_FromString (String (member_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : access QtAda6.QtCore.QMetaMethod.Inst'Class)
      return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "disconnect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, signal_P.Python_Proxy);
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, member_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : bytes;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QObject");
      Method := Object_GetAttrString (Class, "disconnect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (signal_P)));
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Bytes_FromString (String (member_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   procedure disconnectNotify (self : access Inst; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "disconnectNotify");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, signal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end disconnectNotify;
   procedure dumpObjectInfo (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dumpObjectInfo");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end dumpObjectInfo;
   procedure dumpObjectTree (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dumpObjectTree");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end dumpObjectTree;
   function dynamicPropertyNames (self : access Inst) return List_QtAda6_QtCore_QByteArray is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dynamicPropertyNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end dynamicPropertyNames;
   function emit (self : access Inst; arg_1_P : bytes; args_P : None) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "emit");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Tuple_SetItem (Args, 1, None_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end emit;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function eventFilter
     (self    : access Inst; watched_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, watched_P.Python_Proxy);
      Tuple_SetItem (Args, 1, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end eventFilter;
   function findChild
     (self      : access Inst; type_K_P : type_K_T; name_P : str;
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class) return Object
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findChild");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end findChild;
   function findChildren
     (self      : access Inst; type_K_P : type_K_T; name_P : str;
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class) return Iterable
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findChildren");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Iterable_conv_P2A_is_not_supported;
   end findChildren;
   function findChildren
     (self      : access Inst; type_K_P : type_K_T; pattern_P : Union_QtAda6_QtCore_QRegularExpression_str;
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class) return Iterable
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findChildren");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Iterable_conv_P2A_is_not_supported;
   end findChildren;
   function inherits (self : access Inst; classname_P : bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inherits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (classname_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end inherits;
   procedure installEventFilter (self : access Inst; filterObj_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "installEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filterObj_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end installEventFilter;
   function isQuickItemType (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isQuickItemType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isQuickItemType;
   function isSignalConnected (self : access Inst; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSignalConnected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, signal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSignalConnected;
   function isWidgetType (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWidgetType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWidgetType;
   function isWindowType (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWindowType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWindowType;
   procedure killTimer (self : access Inst; id_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "killTimer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
   end killTimer;
   function metaObject (self : access Inst) return access QtAda6.QtCore.QMetaObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaObject.Class := new QtAda6.QtCore.QMetaObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "metaObject");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end metaObject;
   procedure moveToThread (self : access Inst; thread_P : access QtAda6.QtCore.QThread.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveToThread");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, thread_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveToThread;
   function objectName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "objectName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end objectName;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function property (self : access Inst; name_P : str) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "property");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end property;
   function receivers (self : access Inst; signal_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "receivers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (signal_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end receivers;
   procedure removeEventFilter (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end removeEventFilter;
   function sender (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sender");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sender;
   function senderSignalIndex (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "senderSignalIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end senderSignalIndex;
   procedure setObjectName (self : access Inst; name_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setObjectName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setObjectName;
   procedure setParent (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setParent;
   function setProperty (self : access Inst; name_P : str; value_P : Any) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProperty");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setProperty;
   function signalsBlocked (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "signalsBlocked");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end signalsBlocked;
   function startTimer
     (self : access Inst; interval_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startTimer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (interval_P));
      Tuple_SetItem (Args, 1, timerType_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startTimer;
   function thread (self : access Inst) return access QtAda6.QtCore.QThread.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QThread.Class := new QtAda6.QtCore.QThread.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "thread");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end thread;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end timerEvent;
end QtAda6.QtCore.QObject;
