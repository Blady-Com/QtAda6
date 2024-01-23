-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextdocumentwriter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextDocumentFragment;
with QtAda6.QtCore.QByteArray;
package QtAda6.QtGui.QTextDocumentWriter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return Class;
   function Create (fileName_P : str; format_P : UNION_QtAda6_QtCore_QByteArraybytes := null) return Class;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function fileName (self : access Inst) return str;
   function format (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setFormat (self : access Inst; format_P : UNION_QtAda6_QtCore_QByteArraybytes);
   function supportedDocumentFormats return LIST_QtAda6_QtCore_QByteArray;
   function write (self : access Inst; document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return bool;
   function write (self : access Inst; fragment_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) return bool;
end QtAda6.QtGui.QTextDocumentWriter;
