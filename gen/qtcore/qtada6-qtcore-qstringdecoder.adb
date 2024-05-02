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
with QtAda6.QtCore.QStringConverter.Encoding;
with QtAda6.QtCore.QStringConverterBase.Flag;
with QtAda6.QtCore.QByteArray;
package body QtAda6.QtCore.QStringDecoder is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class;
      flags_P    : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if encoding_P /= null then encoding_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (name_P : bytes; f_P : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (name_P.all)));
      Dict := Dict_New;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function appendToBuffer
     (self : access Inst; out_K_P : bytes; ba_P : access QtAda6.QtCore.QByteArray.Inst'Class) return bytes
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendToBuffer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (out_K_P.all)));
      Tuple_SetItem (Args, 1, (if ba_P /= null then ba_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end appendToBuffer;
   function appendToBuffer (self : access Inst; out_K_P : bytes; ba_P : bytes) return bytes is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendToBuffer");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (out_K_P.all)));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (ba_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end appendToBuffer;
   function decoderForHtml
     (data_P : access QtAda6.QtCore.QByteArray.Inst'Class) return access QtAda6.QtCore.QStringDecoder.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QStringDecoder.Class := new QtAda6.QtCore.QStringDecoder.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Method := Object_GetAttrString (Class, "decoderForHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end decoderForHtml;
   function decoderForHtml (data_P : bytes) return access QtAda6.QtCore.QStringDecoder.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QStringDecoder.Class := new QtAda6.QtCore.QStringDecoder.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringDecoder");
      Method := Object_GetAttrString (Class, "decoderForHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (data_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end decoderForHtml;
   function requiredSpace (self : access Inst; inputLength_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "requiredSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (inputLength_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end requiredSpace;
end QtAda6.QtCore.QStringDecoder;
