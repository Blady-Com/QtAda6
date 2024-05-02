-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmimedata.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QMetaType;
limited with QtAda6.QtCore.QMetaType.Type_K;
limited with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QMimeData is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type LIST_str is array (Positive range <>) of str;
   subtype SEQUENCE_QtAda6_QtCore_QUrl is QtAda6.QtCore.QUrl.Class_Array;
   subtype LIST_QtAda6_QtCore_QUrl is QtAda6.QtCore.QUrl.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure clear (self : access Inst);
   function colorData (self : access Inst) return Any;
   function data (self : access Inst; mimetype_P : str) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function formats (self : access Inst) return LIST_str;
   function hasColor (self : access Inst) return bool;
   function hasFormat (self : access Inst; mimetype_P : str) return bool;
   function hasHtml (self : access Inst) return bool;
   function hasImage (self : access Inst) return bool;
   function hasText (self : access Inst) return bool;
   function hasUrls (self : access Inst) return bool;
   function html (self : access Inst) return str;
   function imageData (self : access Inst) return Any;
   procedure removeFormat (self : access Inst; mimetype_P : str);
   function retrieveData
     (self : access Inst; mimetype_P : str; preferredType_P : access QtAda6.QtCore.QMetaType.Inst'Class) return Any;
   function retrieveData
     (self : access Inst; mimetype_P : str; preferredType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class)
      return Any;
   procedure setColorData (self : access Inst; color_P : Any);
   procedure setData (self : access Inst; mimetype_P : str; data_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure setData (self : access Inst; mimetype_P : str; data_P : bytes);
   procedure setHtml (self : access Inst; html_P : str);
   procedure setImageData (self : access Inst; image_P : Any);
   procedure setText (self : access Inst; text_P : str);
   procedure setUrls (self : access Inst; urls_P : SEQUENCE_QtAda6_QtCore_QUrl);
   function text (self : access Inst) return str;
   function urls (self : access Inst) return LIST_QtAda6_QtCore_QUrl;
end QtAda6.QtCore.QMimeData;
