-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsettings.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSettings.Format;
limited with QtAda6.QtCore.QSettings.Scope;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QSettings.Status;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QSettings is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create
     (fileName_P : str; format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      parent_P   : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; organization_P : str; application_P : str := "";
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (organization_P : str; application_P : str := ""; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null)
      return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; organization_P : str; application_P : str := "";
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function allKeys (self : access Inst) return LIST_str;
   function applicationName (self : access Inst) return str;
   procedure beginGroup (self : access Inst; prefix_P : str);
   function beginReadArray (self : access Inst; prefix_P : str) return int;
   procedure beginWriteArray (self : access Inst; prefix_P : str; size_P : int := 0);
   function childGroups (self : access Inst) return LIST_str;
   function childKeys (self : access Inst) return LIST_str;
   procedure clear (self : access Inst);
   function contains (self : access Inst; key_P : str) return bool;
   function defaultFormat return access QtAda6.QtCore.QSettings.Format.Inst'Class;
   procedure endArray (self : access Inst);
   procedure endGroup (self : access Inst);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function fallbacksEnabled (self : access Inst) return bool;
   function fileName (self : access Inst) return str;
   function format_F (self : access Inst) return access QtAda6.QtCore.QSettings.Format.Inst'Class;
   function group (self : access Inst) return str;
   function isAtomicSyncRequired (self : access Inst) return bool;
   function isWritable (self : access Inst) return bool;
   function organizationName (self : access Inst) return str;
   procedure remove (self : access Inst; key_P : str);
   function scope_F (self : access Inst) return access QtAda6.QtCore.QSettings.Scope.Inst'Class;
   procedure setArrayIndex (self : access Inst; i_P : int);
   procedure setAtomicSyncRequired (self : access Inst; enable_P : bool);
   procedure setDefaultFormat (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class);
   procedure setFallbacksEnabled (self : access Inst; b_P : bool);
   procedure setPath
     (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; path_P : str);
   procedure setValue (self : access Inst; key_P : str; value_P : Any);
   function status_F (self : access Inst) return access QtAda6.QtCore.QSettings.Status.Inst'Class;
   procedure sync (self : access Inst);
   function value
     (self : access Inst; arg_1_P : str; defaultValue_P : Any := null; type_K_P : access Object'Class := null)
      return access Object'Class;
   function value (self : access Inst; key_P : str) return Any;
end QtAda6.QtCore.QSettings;
