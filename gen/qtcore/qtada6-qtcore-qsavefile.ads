-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsavefile.ads
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
with QtAda6.QtCore.QFileDevice;
package QtAda6.QtCore.QSaveFile is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QFileDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (name_P : str) return Class;
   function Create (name_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure cancelWriting (self : access Inst);
   procedure close (self : access Inst);
   function commit (self : access Inst) return bool;
   function directWriteFallback (self : access Inst) return bool;
   function fileName (self : access Inst) return str;
   function open (self : access Inst; flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool;
   procedure setDirectWriteFallback (self : access Inst; enabled_P : bool);
   procedure setFileName (self : access Inst; name_P : str);
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int;
end QtAda6.QtCore.QSaveFile;
