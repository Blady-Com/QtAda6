-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamwriter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QXmlStreamAttribute;
limited with QtAda6.QtCore.QXmlStreamAttributes;
limited with QtAda6.QtCore.QXmlStreamReader;
package QtAda6.QtCore.QXmlStreamWriter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (array_K_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
   function autoFormatting (self : access Inst) return bool;
   function autoFormattingIndent (self : access Inst) return int;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function hasError (self : access Inst) return bool;
   procedure setAutoFormatting (self : access Inst; arg_1_P : bool);
   procedure setAutoFormattingIndent (self : access Inst; spacesOrTabs_P : int);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure writeAttribute (self : access Inst; attribute_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class);
   procedure writeAttribute (self : access Inst; namespaceUri_P : str; name_P : str; value_P : str);
   procedure writeAttribute (self : access Inst; qualifiedName_P : str; value_P : str);
   procedure writeAttributes (self : access Inst; attributes_P : access QtAda6.QtCore.QXmlStreamAttributes.Inst'Class);
   procedure writeCDATA (self : access Inst; text_P : str);
   procedure writeCharacters (self : access Inst; text_P : str);
   procedure writeComment (self : access Inst; text_P : str);
   procedure writeCurrentToken (self : access Inst; reader_P : access QtAda6.QtCore.QXmlStreamReader.Inst'Class);
   procedure writeDTD (self : access Inst; dtd_P : str);
   procedure writeDefaultNamespace (self : access Inst; namespaceUri_P : str);
   procedure writeEmptyElement (self : access Inst; namespaceUri_P : str; name_P : str);
   procedure writeEmptyElement (self : access Inst; qualifiedName_P : str);
   procedure writeEndDocument (self : access Inst);
   procedure writeEndElement (self : access Inst);
   procedure writeEntityReference (self : access Inst; name_P : str);
   procedure writeNamespace (self : access Inst; namespaceUri_P : str; prefix_P : str := "");
   procedure writeProcessingInstruction (self : access Inst; target_P : str; data_P : str := "");
   procedure writeStartDocument (self : access Inst);
   procedure writeStartDocument (self : access Inst; version_P : str);
   procedure writeStartDocument (self : access Inst; version_P : str; standalone_P : bool);
   procedure writeStartElement (self : access Inst; namespaceUri_P : str; name_P : str);
   procedure writeStartElement (self : access Inst; qualifiedName_P : str);
   procedure writeTextElement (self : access Inst; namespaceUri_P : str; name_P : str; text_P : str);
   procedure writeTextElement (self : access Inst; qualifiedName_P : str; text_P : str);
end QtAda6.QtCore.QXmlStreamWriter;
