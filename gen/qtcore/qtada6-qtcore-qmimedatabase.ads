-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmimedatabase.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QFileInfo;
limited with QtAda6.QtCore.QMimeDatabase.MatchMode;
limited with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QMimeType;
package QtAda6.QtCore.QMimeDatabase is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtCore_QMimeType is QtAda6.QtCore.QMimeType.Class_Array;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   type UNION_QtAda6_QtCore_QUrlstr is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function allMimeTypes (self : access Inst) return LIST_QtAda6_QtCore_QMimeType;
   function mimeTypeForData
     (self : access Inst; data_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForData
     (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForFile
     (self   : access Inst; fileInfo_P : access QtAda6.QtCore.QFileInfo.Inst'Class;
      mode_P : access QtAda6.QtCore.QMimeDatabase.MatchMode.Inst'Class := null)
      return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QMimeDatabase.MatchMode.Inst'Class := null)
      return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; data_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; device_P : access QtAda6.QtCore.QIODevice.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForName (self : access Inst; nameOrAlias_P : str) return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypeForUrl
     (self : access Inst; url_P : UNION_QtAda6_QtCore_QUrlstr) return access QtAda6.QtCore.QMimeType.Inst'Class;
   function mimeTypesForFileName (self : access Inst; fileName_P : str) return LIST_QtAda6_QtCore_QMimeType;
   function suffixForFileName (self : access Inst; fileName_P : str) return str;
end QtAda6.QtCore.QMimeDatabase;
