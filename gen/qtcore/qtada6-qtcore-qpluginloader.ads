-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpluginloader.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLibrary.LoadHint;
limited with QtAda6.QtCore.QJsonValue;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QPluginLoader is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Dict_str_QtAda6_QtCore_QJsonValue is access Any;
   type List_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (fileName_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function errorString (self : access Inst) return str;
   function fileName (self : access Inst) return str;
   function instance (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function isLoaded (self : access Inst) return bool;
   function load (self : access Inst) return bool;
   function loadHints (self : access Inst) return access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class;
   function metaData (self : access Inst) return Dict_str_QtAda6_QtCore_QJsonValue;
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setLoadHints (self : access Inst; loadHints_P : access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class);
   function staticInstances return List_QtAda6_QtCore_QObject;
   function unload (self : access Inst) return bool;
end QtAda6.QtCore.QPluginLoader;
