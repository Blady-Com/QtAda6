-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qimagewriter.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with py; use py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QImageWriter.ImageWriterError;
with QtAda6.QtGui.QImageIOHandler.Transformation;
with QtAda6.QtGui.QImageIOHandler.ImageOption;
with QtAda6.QtGui.QImage;
package body QtAda6.QtGui.QImageWriter is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageWriter");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(device_P : access QtAda6.QtCore.QIODevice.Inst'Class;format_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageWriter");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,device_P.Python_Proxy);
  Tuple_SetItem (Args, 1,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(fileName_P : str;format_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageWriter");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (fileName_P));
  Tuple_SetItem (Args, 1,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function canWrite(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "canWrite");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function compression(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "compression");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function device(self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "device");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function error_F(self : access Inst) return access QtAda6.QtGui.QImageWriter.ImageWriterError.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QImageWriter.ImageWriterError.Class := new QtAda6.QtGui.QImageWriter.ImageWriterError.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "error");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function errorString(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "errorString");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function fileName(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "fileName");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function format(self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "format");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function imageFormatsForMimeType(mimeType_P : Union_QtAda6_QtCore_QByteArray_bytes) return List_QtAda6_QtCore_QByteArray is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageWriter");
  Method := Object_GetAttrString (Class, "imageFormatsForMimeType");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function optimizedWrite(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "optimizedWrite");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function progressiveScanWrite(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "progressiveScanWrite");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function quality(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "quality");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure setCompression(self : access Inst;compression_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCompression");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (compression_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setDevice(self : access Inst;device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,device_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFileName(self : access Inst;fileName_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFileName");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (fileName_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFormat(self : access Inst;format_P : Union_QtAda6_QtCore_QByteArray_bytes) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setOptimizedWrite(self : access Inst;optimize_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setOptimizedWrite");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (optimize_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setProgressiveScanWrite(self : access Inst;progressive_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setProgressiveScanWrite");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (progressive_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setQuality(self : access Inst;quality_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setQuality");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (quality_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setSubType(self : access Inst;type_K_P : Union_QtAda6_QtCore_QByteArray_bytes) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setSubType");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setText(self : access Inst;key_P : str;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setText");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (key_P));
  Tuple_SetItem (Args, 1,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setTransformation(self : access Inst;orientation_P : access QtAda6.QtGui.QImageIOHandler.Transformation.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setTransformation");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,orientation_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function subType_K(self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "subType");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function supportedImageFormats return List_QtAda6_QtCore_QByteArray is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageWriter");
  Method := Object_GetAttrString (Class, "supportedImageFormats");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function supportedMimeTypes return List_QtAda6_QtCore_QByteArray is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageWriter");
  Method := Object_GetAttrString (Class, "supportedMimeTypes");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function supportedSubTypes(self : access Inst) return List_QtAda6_QtCore_QByteArray is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "supportedSubTypes");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function supportsOption(self : access Inst;option_P : access QtAda6.QtGui.QImageIOHandler.ImageOption.Inst'Class) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "supportsOption");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,option_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function transformation(self : access Inst) return access QtAda6.QtGui.QImageIOHandler.Transformation.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QImageIOHandler.Transformation.Class := new QtAda6.QtGui.QImageIOHandler.Transformation.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "transformation");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function write_F(self : access Inst;image_P : Union_QtAda6_QtGui_QImage_str) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "write");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
end QtAda6.QtGui.QImageWriter;
