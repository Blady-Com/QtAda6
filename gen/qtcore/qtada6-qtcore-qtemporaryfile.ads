-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtemporaryfile.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with QtAda6.QtCore.QFile;
package QtAda6.QtCore.QTemporaryFile is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QFile.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function Create (templateName_P : str) return Class;
   function Create (templateName_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function autoRemove (self : access Inst) return bool;
   function createNativeFile
     (file_P : access QtAda6.QtCore.QFile.Inst'Class) return access QtAda6.QtCore.QTemporaryFile.Inst'Class;
   function createNativeFile (fileName_P : str) return access QtAda6.QtCore.QTemporaryFile.Inst'Class;
   function fileName (self : access Inst) return str;
   function fileTemplate (self : access Inst) return str;
   function open (self : access Inst) return bool;
   function open (self : access Inst; flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool;
   function rename (self : access Inst; newName_P : str) return bool;
   function rename (self : access Inst; newName_P : bytes) return bool;
   function rename (self : access Inst; newName_P : OS.PathLike) return bool;
   procedure setAutoRemove (self : access Inst; b_P : bool);
   procedure setFileTemplate (self : access Inst; name_P : str);
end QtAda6.QtCore.QTemporaryFile;
