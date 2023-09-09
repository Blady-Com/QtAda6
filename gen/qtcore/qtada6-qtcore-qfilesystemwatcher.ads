-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfilesystemwatcher.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QFileSystemWatcher is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Sequence_str is access Any;
   type List_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   directoryChanged : ClassVar_Signal;-- directoryChanged(QString)
   fileChanged      : ClassVar_Signal;-- fileChanged(QString)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (paths_P : Sequence_str; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function addPath (self : access Inst; file_P : str) return bool;
   function addPaths (self : access Inst; files_P : Sequence_str) return List_str;
   function directories (self : access Inst) return List_str;
   function files (self : access Inst) return List_str;
   function removePath (self : access Inst; file_P : str) return bool;
   function removePaths (self : access Inst; files_P : Sequence_str) return List_str;
end QtAda6.QtCore.QFileSystemWatcher;
