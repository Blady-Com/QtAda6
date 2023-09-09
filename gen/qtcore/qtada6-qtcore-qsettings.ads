-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsettings.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSettings.Format;
limited with QtAda6.QtCore.QSettings.Scope;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QSettings.Status;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QSettings is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type List_str is access Any;
   type Optional_Any is access Any;
   type Optional_object is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (fileName_P : str; format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      parent_P   : Optional_QtAda6_QtCore_QObject) return Class;
   function Create
     (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; organization_P : str; application_P : str;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (organization_P : str; application_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create
     (scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; organization_P : str; application_P : str;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create
     (scope_P : access QtAda6.QtCore.QSettings.Scope.Inst'Class; parent_P : Optional_QtAda6_QtCore_QObject)
      return Class;
   function allKeys (self : access Inst) return List_str;
   function applicationName (self : access Inst) return str;
   procedure beginGroup (self : access Inst; prefix_P : str);
   function beginReadArray (self : access Inst; prefix_P : str) return int;
   procedure beginWriteArray (self : access Inst; prefix_P : str; size_P : int);
   function childGroups (self : access Inst) return List_str;
   function childKeys (self : access Inst) return List_str;
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
     (self : access Inst; arg_1_P : str; defaultValue_P : Optional_Any; type_K_P : Optional_object) return Object;
   function value (self : access Inst; key_P : str) return Any;
end QtAda6.QtCore.QSettings;
