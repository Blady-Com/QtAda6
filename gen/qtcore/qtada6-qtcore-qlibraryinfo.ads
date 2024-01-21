-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlibraryinfo.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLibraryInfo.LibraryPath;
limited with QtAda6.QtCore.QVersionNumber;
package QtAda6.QtCore.QLibraryInfo is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function build return bytes;
   function isDebugBuild return bool;
   function isSharedBuild return bool;
   function location (location_P : access QtAda6.QtCore.QLibraryInfo.LibraryPath.Inst'Class) return str;
   function path_F (p_P : access QtAda6.QtCore.QLibraryInfo.LibraryPath.Inst'Class) return str;
   function platformPluginArguments (platformName_P : str) return LIST_str;
   function version return access QtAda6.QtCore.QVersionNumber.Inst'Class;
end QtAda6.QtCore.QLibraryInfo;
