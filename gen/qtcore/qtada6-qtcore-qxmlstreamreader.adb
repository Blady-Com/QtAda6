-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qxmlstreamreader.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QXmlStreamNamespaceDeclaration;
with QtAda6.QtCore.QXmlStreamAttributes;
with QtAda6.QtCore.QXmlStreamEntityDeclaration;
with QtAda6.QtCore.QXmlStreamEntityResolver;
with QtAda6.QtCore.QXmlStreamReader.Error;
with QtAda6.QtCore.QXmlStreamNotationDeclaration;
with QtAda6.QtCore.QXmlStreamReader.ReadElementTextBehaviour;
with QtAda6.QtCore.QXmlStreamReader.TokenType;
package body QtAda6.QtCore.QXmlStreamReader is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (data_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (data_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addData (self : access Inst; data_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (data_P));
      Result := Object_CallObject (Method, Args, True);
   end addData;
   procedure addExtraNamespaceDeclaration
     (self : access Inst; extraNamespaceDeclaraction_P : access QtAda6.QtCore.QXmlStreamNamespaceDeclaration.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addExtraNamespaceDeclaration");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, extraNamespaceDeclaraction_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end addExtraNamespaceDeclaration;
   procedure addExtraNamespaceDeclarations
     (self : access Inst; extraNamespaceDeclaractions_P : Sequence_QtAda6_QtCore_QXmlStreamNamespaceDeclaration)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addExtraNamespaceDeclarations");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end addExtraNamespaceDeclarations;
   function atEnd (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atEnd;
   function attributes (self : access Inst) return access QtAda6.QtCore.QXmlStreamAttributes.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamAttributes.Class := new QtAda6.QtCore.QXmlStreamAttributes.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "attributes");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end attributes;
   function characterOffset (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "characterOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end characterOffset;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function columnNumber (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnNumber;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function documentEncoding (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "documentEncoding");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end documentEncoding;
   function documentVersion (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "documentVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end documentVersion;
   function dtdName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dtdName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dtdName;
   function dtdPublicId (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dtdPublicId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dtdPublicId;
   function dtdSystemId (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dtdSystemId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dtdSystemId;
   function entityDeclarations (self : access Inst) return List_QtAda6_QtCore_QXmlStreamEntityDeclaration is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entityDeclarations");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end entityDeclarations;
   function entityExpansionLimit (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entityExpansionLimit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end entityExpansionLimit;
   function entityResolver (self : access Inst) return access QtAda6.QtCore.QXmlStreamEntityResolver.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamEntityResolver.Class := new QtAda6.QtCore.QXmlStreamEntityResolver.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "entityResolver");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end entityResolver;
   function error_F (self : access Inst) return access QtAda6.QtCore.QXmlStreamReader.Error.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QXmlStreamReader.Error.Class := new QtAda6.QtCore.QXmlStreamReader.Error.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "error");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end error_F;
   function errorString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end errorString;
   function hasError (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasError");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasError;
   function isCDATA (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCDATA");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCDATA;
   function isCharacters (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCharacters");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCharacters;
   function isComment (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isComment");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isComment;
   function isDTD (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDTD");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDTD;
   function isEndDocument (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEndDocument");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEndDocument;
   function isEndElement (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEndElement");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEndElement;
   function isEntityReference (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEntityReference");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEntityReference;
   function isProcessingInstruction (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isProcessingInstruction");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isProcessingInstruction;
   function isStandaloneDocument (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isStandaloneDocument");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isStandaloneDocument;
   function isStartDocument (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isStartDocument");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isStartDocument;
   function isStartElement (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isStartElement");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isStartElement;
   function isWhitespace (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWhitespace");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWhitespace;
   function lineNumber (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lineNumber;
   function name (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function namespaceDeclarations (self : access Inst) return List_QtAda6_QtCore_QXmlStreamNamespaceDeclaration is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "namespaceDeclarations");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end namespaceDeclarations;
   function namespaceProcessing (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "namespaceProcessing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end namespaceProcessing;
   function namespaceUri (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "namespaceUri");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end namespaceUri;
   function notationDeclarations (self : access Inst) return List_QtAda6_QtCore_QXmlStreamNotationDeclaration is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "notationDeclarations");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end notationDeclarations;
   function prefix (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prefix");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end prefix;
   function processingInstructionData (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "processingInstructionData");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end processingInstructionData;
   function processingInstructionTarget (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "processingInstructionTarget");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end processingInstructionTarget;
   function qualifiedName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "qualifiedName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end qualifiedName;
   procedure raiseError (self : access Inst; message_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "raiseError");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Result := Object_CallObject (Method, Args, True);
   end raiseError;
   function readElementText_F
     (self : access Inst; behaviour_P : access QtAda6.QtCore.QXmlStreamReader.ReadElementTextBehaviour.Inst'Class)
      return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readElementText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, behaviour_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end readElementText_F;
   function readNext (self : access Inst) return access QtAda6.QtCore.QXmlStreamReader.TokenType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QXmlStreamReader.TokenType.Class :=
        new QtAda6.QtCore.QXmlStreamReader.TokenType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readNext");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readNext;
   function readNextStartElement (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readNextStartElement");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end readNextStartElement;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDevice;
   procedure setEntityExpansionLimit (self : access Inst; limit_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEntityExpansionLimit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (limit_P));
      Result := Object_CallObject (Method, Args, True);
   end setEntityExpansionLimit;
   procedure setEntityResolver
     (self : access Inst; resolver_P : access QtAda6.QtCore.QXmlStreamEntityResolver.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEntityResolver");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, resolver_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setEntityResolver;
   procedure setNamespaceProcessing (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNamespaceProcessing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setNamespaceProcessing;
   procedure skipCurrentElement (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "skipCurrentElement");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end skipCurrentElement;
   function text_F (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text_F;
   function tokenString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tokenString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end tokenString;
   function tokenType_F (self : access Inst) return access QtAda6.QtCore.QXmlStreamReader.TokenType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QXmlStreamReader.TokenType.Class :=
        new QtAda6.QtCore.QXmlStreamReader.TokenType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "tokenType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tokenType_F;
end QtAda6.QtCore.QXmlStreamReader;
