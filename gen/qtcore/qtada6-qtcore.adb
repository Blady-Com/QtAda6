-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore.adb
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
with QtAda6.QtCore.QGenericArgumentHolder;
with QtAda6.QtCore.QGenericReturnArgumentHolder;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QtMsgType;
with QtAda6.QtCore.QMessageLogContext;
package body QtAda6.QtCore is
   function QEnum (arg_1_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEnum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QEnum;
   function QFlag (arg_1_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFlag");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QFlag;
   function QT_TRANSLATE_NOOP (arg_1_P : Object; arg_2_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QT_TRANSLATE_NOOP");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QT_TRANSLATE_NOOP;
   function QT_TRANSLATE_NOOP3 (arg_1_P : Object; arg_2_P : Object; arg_3_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QT_TRANSLATE_NOOP3");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, arg_3_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QT_TRANSLATE_NOOP3;
   function QT_TRANSLATE_NOOP_UTF8 (arg_1_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QT_TRANSLATE_NOOP_UTF8");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QT_TRANSLATE_NOOP_UTF8;
   function QT_TR_NOOP (arg_1_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QT_TR_NOOP");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QT_TR_NOOP;
   function QT_TR_NOOP_UTF8 (arg_1_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QT_TR_NOOP_UTF8");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end QT_TR_NOOP_UTF8;
   function Q_ARG (type_K_P : Object; value_P : Object) return access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QGenericArgumentHolder.Class := new QtAda6.QtCore.QGenericArgumentHolder.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Q_ARG");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, value_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end Q_ARG;
   function Q_RETURN_ARG (type_K_P : Object) return access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QGenericReturnArgumentHolder.Class :=
        new QtAda6.QtCore.QGenericReturnArgumentHolder.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Q_RETURN_ARG");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end Q_RETURN_ARG;
   function SIGNAL_F (arg_1_P : bytes) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "SIGNAL");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end SIGNAL_F;
   function SLOT_F (arg_1_P : bytes) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "SLOT");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end SLOT_F;
   procedure U_init_feature_U is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "__init_feature__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_init_feature_U;
   procedure U_moduleShutdown is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "__moduleShutdown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_moduleShutdown;
   function qAbs_F (arg_1_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qAbs");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end qAbs_F;
   procedure qAddPostRoutine (arg_1_P : Object) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qAddPostRoutine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end qAddPostRoutine;
   procedure qCCritical (arg_1_P : Object; arg_2_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCCritical");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Result := Object_CallObject (Method, Args, True);
   end qCCritical;
   procedure qCDebug (arg_1_P : Object; arg_2_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCDebug");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Result := Object_CallObject (Method, Args, True);
   end qCDebug;
   procedure qCInfo (arg_1_P : Object; arg_2_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCInfo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Result := Object_CallObject (Method, Args, True);
   end qCInfo;
   procedure qCWarning (arg_1_P : Object; arg_2_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCWarning");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Result := Object_CallObject (Method, Args, True);
   end qCWarning;
   function qCompress
     (data_P : Union_QtAda6_QtCore_QByteArray_bytes; compressionLevel_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCompress");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (compressionLevel_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qCompress;
   function qCompress
     (data_P : bytes; nbytes_P : int; compressionLevel_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCompress");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (nbytes_P));
      Tuple_SetItem (Args, 2, Long_FromLong (compressionLevel_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qCompress;
   procedure qCritical (arg_1_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qCritical");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
   end qCritical;
   procedure qDebug (arg_1_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qDebug");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
   end qDebug;
   function qFastCos (x_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qFastCos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end qFastCos;
   function qFastSin (x_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qFastSin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end qFastSin;
   procedure qFatal (arg_1_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qFatal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
   end qFatal;
   function qFormatLogMessage
     (type_K_P  : access QtAda6.QtCore.QtMsgType.Inst'Class;
      context_P : access QtAda6.QtCore.QMessageLogContext.Inst'Class; buf_P : str) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qFormatLogMessage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, context_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Unicode_FromString (buf_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end qFormatLogMessage;
   function qFuzzyCompare (p1_P : float; p2_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (p1_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (p2_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyIsNull (d_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qFuzzyIsNull");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (d_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyIsNull;
   function qInstallMessageHandler (arg_1_P : Object) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qInstallMessageHandler");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end qInstallMessageHandler;
   function qIsFinite (d_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qIsFinite");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (d_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qIsFinite;
   function qIsInf (d_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qIsInf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (d_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qIsInf;
   function qIsNaN (d_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qIsNaN");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (d_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qIsNaN;
   function qIsNull (d_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qIsNull");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (d_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qIsNull;
   function qRegisterResourceData (arg_1_P : int; arg_2_P : bytes; arg_3_P : bytes; arg_4_P : bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qRegisterResourceData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (arg_3_P)));
      Tuple_SetItem (Args, 3, Bytes_FromString (String (arg_4_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qRegisterResourceData;
   procedure qSetMessagePattern (messagePattern_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qSetMessagePattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (messagePattern_P));
      Result := Object_CallObject (Method, Args, True);
   end qSetMessagePattern;
   function qUncompress
     (data_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qUncompress");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qUncompress;
   function qUncompress (data_P : bytes; nbytes_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qUncompress");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (nbytes_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qUncompress;
   function qUnregisterResourceData (arg_1_P : int; arg_2_P : bytes; arg_3_P : bytes; arg_4_P : bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qUnregisterResourceData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (arg_2_P)));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (arg_3_P)));
      Tuple_SetItem (Args, 3, Bytes_FromString (String (arg_4_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qUnregisterResourceData;
   function qVersion_F return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(As_String (Result))); -- actual type str
   end qVersion_F;
   procedure qWarning (arg_1_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qWarning");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
   end qWarning;
   function qtTrId (id_P : bytes; n_P : int) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "qtTrId");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (id_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end qtTrId;
end QtAda6.QtCore;
