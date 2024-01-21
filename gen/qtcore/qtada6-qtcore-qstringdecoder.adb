-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qstringdecoder.adb
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
with QtAda6.QtCore.QStringConverter;
with QtAda6.QtCore.QStringConverter.Encoding;
with QtAda6.QtCore.QStringConverterBase.Flag;
with QtAda6.QtCore.QByteArray;
package body QtAda6.QtCore.QStringDecoder is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class;
      flags_P    : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if encoding_P /= null then encoding_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (name_P : bytes; f_P : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function appendToBuffer
     (self : access Inst; out_K_P : bytes; ba_P : UNION_QtAda6_QtCore_QByteArraybytes) return bytes
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendToBuffer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (out_K_P)));
      Tuple_SetItem (Args, 1, (if ba_P /= null then ba_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end appendToBuffer;
   function decoderForHtml
     (data_P : UNION_QtAda6_QtCore_QByteArraybytes) return access QtAda6.QtCore.QStringDecoder.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QStringDecoder.Class := new QtAda6.QtCore.QStringDecoder.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Method := Object_GetAttrString (Class, "decoderForHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end decoderForHtml;
   function requiredSpace (self : access Inst; inputLength_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "requiredSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (inputLength_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end requiredSpace;
end QtAda6.QtCore.QStringDecoder;
