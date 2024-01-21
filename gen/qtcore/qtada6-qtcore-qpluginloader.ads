-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpluginloader.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLibrary.LoadHint;
limited with QtAda6.QtCore.QJsonValue;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QPluginLoader is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type DICT_strQtAda6_QtCore_QJsonValue is new Any;
   subtype LIST_QtAda6_QtCore_QObject is QtAda6.QtCore.QObject.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (fileName_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function errorString (self : access Inst) return str;
   function fileName (self : access Inst) return str;
   function instance (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function isLoaded (self : access Inst) return bool;
   function load (self : access Inst) return bool;
   function loadHints (self : access Inst) return access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class;
   function metaData (self : access Inst) return DICT_strQtAda6_QtCore_QJsonValue;
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setLoadHints (self : access Inst; loadHints_P : access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class);
   function staticInstances return LIST_QtAda6_QtCore_QObject;
   function unload (self : access Inst) return bool;
end QtAda6.QtCore.QPluginLoader;
