-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcoreapplication.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QPermission;
limited with QtAda6.QtCore.Qt.PermissionStatus;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractEventDispatcher;
limited with QtAda6.QtCore.QAbstractNativeEventFilter;
limited with QtAda6.QtCore.QTranslator;
limited with QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
limited with QtAda6.QtCore.Qt.ApplicationAttribute;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QCoreApplication is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function aboutToQuit (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToQuit()
   function applicationNameChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- applicationNameChanged()
   function applicationVersionChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- applicationVersionChanged()
   function organizationDomainChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- organizationDomainChanged()
   function organizationNameChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- organizationNameChanged()
   function Create return Class;
   function Create (arg_1_P : SEQUENCE_str) return Class;
   procedure addLibraryPath (arg_1_P : str);
   function applicationDirPath return str;
   function applicationFilePath return str;
   function applicationName return str;
   function applicationPid return int;
   function applicationVersion return str;
   function arguments return LIST_str;
   function checkPermission
     (self : access Inst; permission_P : access QtAda6.QtCore.QPermission.Inst'Class)
      return access QtAda6.QtCore.Qt.PermissionStatus.Inst'Class;
   function closingDown return bool;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventDispatcher return access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class;
   function exec return int;
   function exec_U (self : access Inst) return int;
   procedure exit_K (retcode_P : int := 0);
   procedure installNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class);
   function installTranslator (messageFile_P : access QtAda6.QtCore.QTranslator.Inst'Class) return bool;
   function instance return access QtAda6.QtCore.QCoreApplication.Inst'Class;
   function isQuitLockEnabled return bool;
   function isSetuidAllowed return bool;
   function libraryPaths return LIST_str;
   function notify
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function organizationDomain return str;
   function organizationName return str;
   procedure postEvent
     (receiver_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      priority_P : int := 0);
   procedure processEvents (flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class; maxtime_P : int);
   procedure processEvents (flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class := null);
   procedure quit;
   procedure removeLibraryPath (arg_1_P : str);
   procedure removeNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class);
   procedure removePostedEvents (receiver_P : access QtAda6.QtCore.QObject.Inst'Class; eventType_P : int := 0);
   function removeTranslator (messageFile_P : access QtAda6.QtCore.QTranslator.Inst'Class) return bool;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int;
   function sendEvent
     (receiver_P : access QtAda6.QtCore.QObject.Inst'Class; event_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return bool;
   procedure sendPostedEvents (receiver_P : access QtAda6.QtCore.QObject.Inst'Class := null; event_type_P : int := 0);
   procedure setApplicationName (application_P : str);
   procedure setApplicationVersion (version_P : str);
   procedure setAttribute (attribute_P : access QtAda6.QtCore.Qt.ApplicationAttribute.Inst'Class; on_P : bool := False);
   procedure setEventDispatcher (eventDispatcher_P : access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class);
   procedure setLibraryPaths (arg_1_P : SEQUENCE_str);
   procedure setOrganizationDomain (orgDomain_P : str);
   procedure setOrganizationName (orgName_P : str);
   procedure setQuitLockEnabled (enabled_P : bool);
   procedure setSetuidAllowed (allow_P : bool);
   procedure shutdown (self : access Inst);
   function startingUp return bool;
   function testAttribute (attribute_P : access QtAda6.QtCore.Qt.ApplicationAttribute.Inst'Class) return bool;
   function translate (context_P : bytes; key_P : bytes; disambiguation_P : bytes := ""; n_P : int := 0) return str;
end QtAda6.QtCore.QCoreApplication;
