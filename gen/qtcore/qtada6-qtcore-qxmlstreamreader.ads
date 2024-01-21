-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamreader.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QXmlStreamAttributes;
limited with QtAda6.QtCore.QXmlStreamEntityResolver;
limited with QtAda6.QtCore.QXmlStreamReader.Error;
limited with QtAda6.QtCore.QXmlStreamReader.ReadElementTextBehaviour;
limited with QtAda6.QtCore.QXmlStreamReader.TokenType;
with QtAda6.QtCore.QXmlStreamNamespaceDeclaration;
with QtAda6.QtCore.QXmlStreamEntityDeclaration;
with QtAda6.QtCore.QXmlStreamNotationDeclaration;
package QtAda6.QtCore.QXmlStreamReader is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype SEQUENCE_QtAda6_QtCore_QXmlStreamNamespaceDeclaration is
     QtAda6.QtCore.QXmlStreamNamespaceDeclaration.Class_Array;
   subtype LIST_QtAda6_QtCore_QXmlStreamEntityDeclaration is QtAda6.QtCore.QXmlStreamEntityDeclaration.Class_Array;
   subtype LIST_QtAda6_QtCore_QXmlStreamNamespaceDeclaration is
     QtAda6.QtCore.QXmlStreamNamespaceDeclaration.Class_Array;
   subtype LIST_QtAda6_QtCore_QXmlStreamNotationDeclaration is QtAda6.QtCore.QXmlStreamNotationDeclaration.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (data_P : str) return Class;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
   procedure addData (self : access Inst; data_P : str);
   procedure addExtraNamespaceDeclaration
     (self                         : access Inst;
      extraNamespaceDeclaraction_P : access QtAda6.QtCore.QXmlStreamNamespaceDeclaration.Inst'Class);
   procedure addExtraNamespaceDeclarations
     (self : access Inst; extraNamespaceDeclaractions_P : SEQUENCE_QtAda6_QtCore_QXmlStreamNamespaceDeclaration);
   function atEnd (self : access Inst) return bool;
   function attributes (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttributes.Inst'Class;
   function characterOffset (self : access Inst) return int;
   procedure clear (self : access Inst);
   function columnNumber (self : access Inst) return int;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function documentEncoding (self : access Inst) return str;
   function documentVersion (self : access Inst) return str;
   function dtdName (self : access Inst) return str;
   function dtdPublicId (self : access Inst) return str;
   function dtdSystemId (self : access Inst) return str;
   function entityDeclarations (self : access Inst) return LIST_QtAda6_QtCore_QXmlStreamEntityDeclaration;
   function entityExpansionLimit (self : access Inst) return int;
   function entityResolver (self : access Inst) return access QtAda6.QtCore.QXmlStreamEntityResolver.Inst'Class;
   function error_F (self : access Inst) return access QtAda6.QtCore.QXmlStreamReader.Error.Inst'Class;
   function errorString (self : access Inst) return str;
   function hasError (self : access Inst) return bool;
   function isCDATA (self : access Inst) return bool;
   function isCharacters (self : access Inst) return bool;
   function isComment (self : access Inst) return bool;
   function isDTD (self : access Inst) return bool;
   function isEndDocument (self : access Inst) return bool;
   function isEndElement (self : access Inst) return bool;
   function isEntityReference (self : access Inst) return bool;
   function isProcessingInstruction (self : access Inst) return bool;
   function isStandaloneDocument (self : access Inst) return bool;
   function isStartDocument (self : access Inst) return bool;
   function isStartElement (self : access Inst) return bool;
   function isWhitespace (self : access Inst) return bool;
   function lineNumber (self : access Inst) return int;
   function name (self : access Inst) return str;
   function namespaceDeclarations (self : access Inst) return LIST_QtAda6_QtCore_QXmlStreamNamespaceDeclaration;
   function namespaceProcessing (self : access Inst) return bool;
   function namespaceUri (self : access Inst) return str;
   function notationDeclarations (self : access Inst) return LIST_QtAda6_QtCore_QXmlStreamNotationDeclaration;
   function prefix (self : access Inst) return str;
   function processingInstructionData (self : access Inst) return str;
   function processingInstructionTarget (self : access Inst) return str;
   function qualifiedName (self : access Inst) return str;
   procedure raiseError (self : access Inst; message_P : str := "");
   function readElementText_F
     (self        : access Inst;
      behaviour_P : access QtAda6.QtCore.QXmlStreamReader.ReadElementTextBehaviour.Inst'Class := null) return str;
   function readNext (self : access Inst) return access QtAda6.QtCore.QXmlStreamReader.TokenType.Inst'Class;
   function readNextStartElement (self : access Inst) return bool;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setEntityExpansionLimit (self : access Inst; limit_P : int);
   procedure setEntityResolver
     (self : access Inst; resolver_P : access QtAda6.QtCore.QXmlStreamEntityResolver.Inst'Class);
   procedure setNamespaceProcessing (self : access Inst; arg_1_P : bool);
   procedure skipCurrentElement (self : access Inst);
   function text_F (self : access Inst) return str;
   function tokenString (self : access Inst) return str;
   function tokenType_F (self : access Inst) return access QtAda6.QtCore.QXmlStreamReader.TokenType.Inst'Class;
end QtAda6.QtCore.QXmlStreamReader;
