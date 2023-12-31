-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcoreapplication.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QPermission;
with QtAda6.QtCore.Qt.PermissionStatus;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAbstractEventDispatcher;
with QtAda6.QtCore.QAbstractNativeEventFilter;
with QtAda6.QtCore.QTranslator;
with QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
with QtAda6.QtCore.Qt.ApplicationAttribute;
package body QtAda6.QtCore.QCoreApplication is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : Sequence_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addLibraryPath (arg_1_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "addLibraryPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end addLibraryPath;
   function applicationDirPath return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "applicationDirPath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationDirPath;
   function applicationFilePath return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "applicationFilePath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationFilePath;
   function applicationName return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "applicationName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationName;
   function applicationPid return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "applicationPid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end applicationPid;
   function applicationVersion return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "applicationVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationVersion;
   function arguments return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "arguments");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end arguments;
   function checkPermission
     (self : access Inst; permission_P : access QtAda6.QtCore.QPermission.Inst'Class)
      return access QtAda6.QtCore.Qt.PermissionStatus.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.PermissionStatus.Class := new QtAda6.QtCore.Qt.PermissionStatus.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkPermission");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, permission_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end checkPermission;
   function closingDown return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "closingDown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end closingDown;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function eventDispatcher return access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractEventDispatcher.Class := new QtAda6.QtCore.QAbstractEventDispatcher.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method           := Object_GetAttrString (Class, "eventDispatcher");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end eventDispatcher;
   function exec return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
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
   procedure exit_K (retcode_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "exit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (retcode_P));
      Result := Object_CallObject (Method, Args, True);
   end exit_K;
   procedure installNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "installNativeEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filterObj_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end installNativeEventFilter;
   function installTranslator (messageFile_P : access QtAda6.QtCore.QTranslator.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "installTranslator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, messageFile_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end installTranslator;
   function instance return Optional_QtAda6_QtCore_QCoreApplication is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "instance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end instance;
   function isQuitLockEnabled return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "isQuitLockEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isQuitLockEnabled;
   function isSetuidAllowed return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "isSetuidAllowed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSetuidAllowed;
   function libraryPaths return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "libraryPaths");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end libraryPaths;
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
   function organizationDomain return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "organizationDomain");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end organizationDomain;
   function organizationName return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "organizationName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end organizationName;
   procedure postEvent
     (receiver_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      priority_P : int)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "postEvent");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 1, event_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (priority_P));
      Result := Object_CallObject (Method, Args, True);
   end postEvent;
   procedure processEvents (flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class; maxtime_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "processEvents");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (maxtime_P));
      Result := Object_CallObject (Method, Args, True);
   end processEvents;
   procedure processEvents (flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "processEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end processEvents;
   procedure quit is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "quit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end quit;
   procedure removeLibraryPath (arg_1_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "removeLibraryPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end removeLibraryPath;
   procedure removeNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeNativeEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filterObj_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end removeNativeEventFilter;
   procedure removePostedEvents (receiver_P : access QtAda6.QtCore.QObject.Inst'Class; eventType_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "removePostedEvents");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (eventType_P));
      Result := Object_CallObject (Method, Args, True);
   end removePostedEvents;
   function removeTranslator (messageFile_P : access QtAda6.QtCore.QTranslator.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "removeTranslator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, messageFile_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removeTranslator;
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
   function sendEvent
     (receiver_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "sendEvent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 1, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sendEvent;
   procedure sendPostedEvents (receiver_P : Optional_QtAda6_QtCore_QObject; event_type_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "sendPostedEvents");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (event_type_P));
      Result := Object_CallObject (Method, Args, True);
   end sendPostedEvents;
   procedure setApplicationName (application_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setApplicationName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (application_P));
      Result := Object_CallObject (Method, Args, True);
   end setApplicationName;
   procedure setApplicationVersion (version_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setApplicationVersion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (version_P));
      Result := Object_CallObject (Method, Args, True);
   end setApplicationVersion;
   procedure setAttribute (attribute_P : access QtAda6.QtCore.Qt.ApplicationAttribute.Inst'Class; on_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setAttribute");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, attribute_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setAttribute;
   procedure setEventDispatcher (eventDispatcher_P : access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setEventDispatcher");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, eventDispatcher_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setEventDispatcher;
   procedure setLibraryPaths (arg_1_P : Sequence_str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setLibraryPaths");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setLibraryPaths;
   procedure setOrganizationDomain (orgDomain_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setOrganizationDomain");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (orgDomain_P));
      Result := Object_CallObject (Method, Args, True);
   end setOrganizationDomain;
   procedure setOrganizationName (orgName_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setOrganizationName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (orgName_P));
      Result := Object_CallObject (Method, Args, True);
   end setOrganizationName;
   procedure setQuitLockEnabled (enabled_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setQuitLockEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setQuitLockEnabled;
   procedure setSetuidAllowed (allow_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "setSetuidAllowed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (allow_P));
      Result := Object_CallObject (Method, Args, True);
   end setSetuidAllowed;
   procedure shutdown (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shutdown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end shutdown;
   function startingUp return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "startingUp");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end startingUp;
   function testAttribute (attribute_P : access QtAda6.QtCore.Qt.ApplicationAttribute.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "testAttribute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, attribute_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testAttribute;
   function translate (context_P : bytes; key_P : bytes; disambiguation_P : Optional_bytes; n_P : int) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCoreApplication");
      Method := Object_GetAttrString (Class, "translate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (context_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (key_P)));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end translate;
end QtAda6.QtCore.QCoreApplication;
