-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtextstream.adb
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
with QtAda6.QtCore.QIODeviceBase;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QTextStreamManipulator;
with QtAda6.QtCore.QStringConverter.Encoding;
with QtAda6.QtCore.QTextStream.FieldAlignment;
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QTextStream.NumberFlag;
with QtAda6.QtCore.QTextStream.RealNumberNotation;
with QtAda6.QtCore.QLocale.Language;
with QtAda6.QtCore.QTextStream.Status;
package body QtAda6.QtCore.QTextStream is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextStream");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (array_K_P  : UNION_QtAda6_QtCore_QByteArraybytes;
      openMode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextStream");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if array_K_P /= null then array_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if openMode_P /= null then openMode_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextStream");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_lshift_U
     (self : access Inst; array_K_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if array_K_P /= null then array_K_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_lshift_U (self : access Inst; ch_P : str) return access QtAda6.QtCore.QTextStream.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (ch_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_lshift_U (self : access Inst; ch_P : int) return access QtAda6.QtCore.QTextStream.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ch_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_lshift_U (self : access Inst; f_P : float) return access QtAda6.QtCore.QTextStream.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (f_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_lshift_U
     (self : access Inst; m_P : access QtAda6.QtCore.QTextStreamManipulator.Inst'Class)
      return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; array_K_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if array_K_P /= null then array_K_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function atEnd (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atEnd;
   function autoDetectUnicode (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoDetectUnicode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end autoDetectUnicode;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function encoding (self : access Inst) return access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QStringConverter.Encoding.Class := new QtAda6.QtCore.QStringConverter.Encoding.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "encoding");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end encoding;
   function fieldAlignment_F (self : access Inst) return access QtAda6.QtCore.QTextStream.FieldAlignment.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.FieldAlignment.Class :=
        new QtAda6.QtCore.QTextStream.FieldAlignment.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fieldAlignment");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fieldAlignment_F;
   function fieldWidth (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fieldWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end fieldWidth;
   procedure flush (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flush");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end flush;
   function generateByteOrderMark (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "generateByteOrderMark");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end generateByteOrderMark;
   function integerBase (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "integerBase");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end integerBase;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "locale");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end locale;
   function numberFlags (self : access Inst) return access QtAda6.QtCore.QTextStream.NumberFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QTextStream.NumberFlag.Class := new QtAda6.QtCore.QTextStream.NumberFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "numberFlags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end numberFlags;
   function padChar (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "padChar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end padChar;
   function pos (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pos");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pos;
   function read (self : access Inst; maxlen_P : int) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end read;
   function readAll (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readAll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end readAll;
   function readLine (self : access Inst; maxlen_P : int := 0) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end readLine;
   function readLineInto (self : access Inst; maxlen_P : int := 0) return TUPLE_boolstr is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readLineInto");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end readLineInto;
   function realNumberNotation_F
     (self : access Inst) return access QtAda6.QtCore.QTextStream.RealNumberNotation.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTextStream.RealNumberNotation.Class :=
        new QtAda6.QtCore.QTextStream.RealNumberNotation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "realNumberNotation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end realNumberNotation_F;
   function realNumberPrecision (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "realNumberPrecision");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end realNumberPrecision;
   procedure reset (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   procedure resetStatus (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetStatus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetStatus;
   function seek (self : access Inst; pos_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "seek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end seek;
   procedure setAutoDetectUnicode (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoDetectUnicode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoDetectUnicode;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDevice;
   procedure setEncoding (self : access Inst; encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if encoding_P /= null then encoding_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setEncoding;
   procedure setFieldAlignment
     (self : access Inst; alignment_P : access QtAda6.QtCore.QTextStream.FieldAlignment.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFieldAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFieldAlignment;
   procedure setFieldWidth (self : access Inst; width_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFieldWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setFieldWidth;
   procedure setGenerateByteOrderMark (self : access Inst; generate_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGenerateByteOrderMark");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (generate_P));
      Result := Object_CallObject (Method, Args, True);
   end setGenerateByteOrderMark;
   procedure setIntegerBase (self : access Inst; base_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIntegerBase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
   end setIntegerBase;
   procedure setLocale (self : access Inst; locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLocale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if locale_P /= null then locale_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setLocale;
   procedure setNumberFlags (self : access Inst; flags_P : access QtAda6.QtCore.QTextStream.NumberFlag.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumberFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setNumberFlags;
   procedure setPadChar (self : access Inst; ch_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPadChar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (ch_P));
      Result := Object_CallObject (Method, Args, True);
   end setPadChar;
   procedure setRealNumberNotation
     (self : access Inst; notation_P : access QtAda6.QtCore.QTextStream.RealNumberNotation.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRealNumberNotation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if notation_P /= null then notation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRealNumberNotation;
   procedure setRealNumberPrecision (self : access Inst; precision_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRealNumberPrecision");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (precision_P));
      Result := Object_CallObject (Method, Args, True);
   end setRealNumberPrecision;
   procedure setStatus (self : access Inst; status_P : access QtAda6.QtCore.QTextStream.Status.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStatus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if status_P /= null then status_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStatus;
   procedure skipWhiteSpace (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "skipWhiteSpace");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end skipWhiteSpace;
   function status_F (self : access Inst) return access QtAda6.QtCore.QTextStream.Status.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QTextStream.Status.Class := new QtAda6.QtCore.QTextStream.Status.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "status");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end status_F;
   function string (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "string");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end string;
end QtAda6.QtCore.QTextStream;
