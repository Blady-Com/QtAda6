-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qresource.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QResource.Compression;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QResource is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is new Any;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create
     (file_P : str := ""; locale_P : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language := null) return Class;
   function absoluteFilePath (self : access Inst) return str;
   function children (self : access Inst) return LIST_str;
   function compressionAlgorithm (self : access Inst) return access QtAda6.QtCore.QResource.Compression.Inst'Class;
   function data (self : access Inst) return access Object'Class;
   function fileName (self : access Inst) return str;
   function isDir (self : access Inst) return bool;
   function isFile (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function lastModified (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   function registerResource (rccFilename_P : str; resourceRoot_P : str := "") return bool;
   function registerResourceData (rccData_P : bytes; resourceRoot_P : str := "") return bool;
   procedure setFileName (self : access Inst; file_P : str);
   procedure setLocale (self : access Inst; locale_P : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language);
   function size (self : access Inst) return int;
   function uncompressedData (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function uncompressedSize (self : access Inst) return int;
   function unregisterResource (rccFilename_P : str; resourceRoot_P : str := "") return bool;
   function unregisterResourceData (rccData_P : bytes; resourceRoot_P : str := "") return bool;
end QtAda6.QtCore.QResource;
