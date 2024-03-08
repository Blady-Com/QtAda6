-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfilesystemwatcher.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QFileSystemWatcher is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function directoryChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- directoryChanged(QString)
   function fileChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- fileChanged(QString)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (paths_P : SEQUENCE_str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function addPath (self : access Inst; file_P : str) return bool;
   function addPaths (self : access Inst; files_P : SEQUENCE_str) return LIST_str;
   function directories (self : access Inst) return LIST_str;
   function files (self : access Inst) return LIST_str;
   function removePath (self : access Inst; file_P : str) return bool;
   function removePaths (self : access Inst; files_P : SEQUENCE_str) return LIST_str;
end QtAda6.QtCore.QFileSystemWatcher;
