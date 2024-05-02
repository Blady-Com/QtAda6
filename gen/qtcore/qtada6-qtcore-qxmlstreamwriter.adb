-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qxmlstreamwriter.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QXmlStreamAttribute;
with QtAda6.QtCore.QXmlStreamAttributes;
with QtAda6.QtCore.QXmlStreamReader;
package body QtAda6.QtCore.QXmlStreamWriter is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamWriter");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (array_K_P : access QtAda6.QtCore.QByteArray.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamWriter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if array_K_P /= null then array_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (array_K_P : bytes) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamWriter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (array_K_P.all)));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamWriter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function autoFormatting (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoFormatting");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end autoFormatting;
   function autoFormattingIndent (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoFormattingIndent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end autoFormattingIndent;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function hasError (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasError");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasError;
   procedure setAutoFormatting (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoFormatting");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAutoFormatting;
   procedure setAutoFormattingIndent (self : access Inst; spacesOrTabs_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoFormattingIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (spacesOrTabs_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAutoFormattingIndent;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDevice;
   procedure writeAttribute (self : access Inst; attribute_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeAttribute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if attribute_P /= null then attribute_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeAttribute;
   procedure writeAttribute (self : access Inst; namespaceUri_P : str; name_P : str; value_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeAttribute");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeAttribute;
   procedure writeAttribute (self : access Inst; qualifiedName_P : str; value_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeAttribute");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeAttribute;
   procedure writeAttributes (self : access Inst; attributes_P : access QtAda6.QtCore.QXmlStreamAttributes.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeAttributes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if attributes_P /= null then attributes_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeAttributes;
   procedure writeCDATA (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeCDATA");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeCDATA;
   procedure writeCharacters (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeCharacters");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeCharacters;
   procedure writeComment (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeComment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeComment;
   procedure writeCurrentToken (self : access Inst; reader_P : access QtAda6.QtCore.QXmlStreamReader.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeCurrentToken");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if reader_P /= null then reader_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeCurrentToken;
   procedure writeDTD (self : access Inst; dtd_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeDTD");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dtd_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeDTD;
   procedure writeDefaultNamespace (self : access Inst; namespaceUri_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeDefaultNamespace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeDefaultNamespace;
   procedure writeEmptyElement (self : access Inst; namespaceUri_P : str; name_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeEmptyElement");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeEmptyElement;
   procedure writeEmptyElement (self : access Inst; qualifiedName_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeEmptyElement");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeEmptyElement;
   procedure writeEndDocument (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeEndDocument");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeEndDocument;
   procedure writeEndElement (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeEndElement");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeEndElement;
   procedure writeEntityReference (self : access Inst; name_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeEntityReference");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeEntityReference;
   procedure writeNamespace (self : access Inst; namespaceUri_P : str; prefix_P : str := "") is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeNamespace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Dict := Dict_New;
      if prefix_P /= "" then
         Dict_SetItemString (Dict, "prefix", Unicode_FromString (prefix_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end writeNamespace;
   procedure writeProcessingInstruction (self : access Inst; target_P : str; data_P : str := "") is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeProcessingInstruction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (target_P));
      Dict := Dict_New;
      if data_P /= "" then
         Dict_SetItemString (Dict, "data", Unicode_FromString (data_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end writeProcessingInstruction;
   procedure writeStartDocument (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeStartDocument");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeStartDocument;
   procedure writeStartDocument (self : access Inst; version_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeStartDocument");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (version_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeStartDocument;
   procedure writeStartDocument (self : access Inst; version_P : str; standalone_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeStartDocument");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (version_P));
      Tuple_SetItem (Args, 1, To_Python (standalone_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeStartDocument;
   procedure writeStartElement (self : access Inst; namespaceUri_P : str; name_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeStartElement");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeStartElement;
   procedure writeStartElement (self : access Inst; qualifiedName_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeStartElement");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeStartElement;
   procedure writeTextElement (self : access Inst; namespaceUri_P : str; name_P : str; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeTextElement");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeTextElement;
   procedure writeTextElement (self : access Inst; qualifiedName_P : str; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeTextElement");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end writeTextElement;
end QtAda6.QtCore.QXmlStreamWriter;
