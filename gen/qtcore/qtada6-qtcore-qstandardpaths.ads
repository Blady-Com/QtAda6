-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstandardpaths.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QStandardPaths.StandardLocation;
limited with QtAda6.QtCore.QStandardPaths.LocateOption;
package QtAda6.QtCore.QStandardPaths is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function displayName (type_K_P : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class) return str;
   function findExecutable (executableName_P : str; paths_P : SEQUENCE_str) return str;
   function isTestModeEnabled return bool;
   function locate
     (type_K_P  : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class; fileName_P : str;
      options_P : access QtAda6.QtCore.QStandardPaths.LocateOption.Inst'Class := null) return str;
   function locateAll
     (type_K_P  : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class; fileName_P : str;
      options_P : access QtAda6.QtCore.QStandardPaths.LocateOption.Inst'Class := null) return LIST_str;
   procedure setTestModeEnabled (testMode_P : bool);
   function standardLocations
     (type_K_P : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class) return LIST_str;
   function writableLocation (type_K_P : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class) return str;
end QtAda6.QtCore.QStandardPaths;
