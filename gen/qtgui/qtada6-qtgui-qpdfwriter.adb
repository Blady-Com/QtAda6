-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpdfwriter.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPagedPaintDevice;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtGui.QPagedPaintDevice.PdfVersion;
package body QtAda6.QtGui.QPdfWriter is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPdfWriter");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,device_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(filename_P : str) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPdfWriter");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (filename_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure addFileAttachment(self : access Inst;fileName_P : str;data_P : Union_QtAda6_QtCore_QByteArray_bytes;mimeType_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "addFileAttachment");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Unicode_FromString (fileName_P));
  Tuple_SetItem (Args, 1,No_Value);
  Tuple_SetItem (Args, 2,Unicode_FromString (mimeType_P));
  Result := Object_CallObject (Method, Args, True);
end;
function creator(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "creator");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function documentXmpMetadata(self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "documentXmpMetadata");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function metric(self : access Inst;id_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "metric");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,id_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function newPage(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "newPage");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function paintEngine(self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "paintEngine");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function pdfVersion(self : access Inst) return access QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Class := new QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "pdfVersion");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function resolution(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "resolution");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure setCreator(self : access Inst;creator_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCreator");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (creator_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setDocumentXmpMetadata(self : access Inst;xmpMetadata_P : Union_QtAda6_QtCore_QByteArray_bytes) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDocumentXmpMetadata");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setPdfVersion(self : access Inst;version_P : access QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setPdfVersion");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,version_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setResolution(self : access Inst;resolution_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setResolution");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (resolution_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setTitle(self : access Inst;title_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setTitle");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (title_P));
  Result := Object_CallObject (Method, Args, True);
end;
function title(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "title");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
end QtAda6.QtGui.QPdfWriter;
