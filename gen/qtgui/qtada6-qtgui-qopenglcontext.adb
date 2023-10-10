-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qopenglcontext.adb
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
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QOpenGLExtraFunctions;
with QtAda6.QtGui.QSurfaceFormat;
with QtAda6.QtGui.QOpenGLFunctions;
with QtAda6.QtGui.QSurface;
with QtAda6.QtGui.QOpenGLContext.OpenGLModuleType;
with QtAda6.QtGui.QScreen;
with QtAda6.QtGui.QSurfaceFormat.FormatOption;
with QtAda6.QtGui.QOpenGLContextGroup;
package body QtAda6.QtGui.QOpenGLContext is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function areSharing(first_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class;second_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) return bool is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
  Method := Object_GetAttrString (Class, "areSharing");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,first_P.Python_Proxy);
  Tuple_SetItem (Args, 1,second_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function create(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "create");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function currentContext return access QtAda6.QtGui.QOpenGLContext.Inst'Class is
  Class,  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLContext.Class := new QtAda6.QtGui.QOpenGLContext.Inst;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
  Method := Object_GetAttrString (Class, "currentContext");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function defaultFramebufferObject(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "defaultFramebufferObject");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure doneCurrent(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "doneCurrent");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function extensions(self : access Inst) return Set_QtAda6_QtCore_QByteArray is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "extensions");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function extraFunctions(self : access Inst) return access QtAda6.QtGui.QOpenGLExtraFunctions.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLExtraFunctions.Class := new QtAda6.QtGui.QOpenGLExtraFunctions.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "extraFunctions");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function format(self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "format");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function functions(self : access Inst) return access QtAda6.QtGui.QOpenGLFunctions.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLFunctions.Class := new QtAda6.QtGui.QOpenGLFunctions.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "functions");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function getProcAddress(self : access Inst;procName_P : bytes) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "getProcAddress");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Bytes_FromString (String(procName_P)));
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function getProcAddress(self : access Inst;procName_P : Union_QtAda6_QtCore_QByteArray_bytes) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "getProcAddress");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function globalShareContext return access QtAda6.QtGui.QOpenGLContext.Inst'Class is
  Class,  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLContext.Class := new QtAda6.QtGui.QOpenGLContext.Inst;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
  Method := Object_GetAttrString (Class, "globalShareContext");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function hasExtension(self : access Inst;extension_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "hasExtension");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isOpenGLES(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isOpenGLES");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isValid(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isValid");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function makeCurrent(self : access Inst;surface_P : access QtAda6.QtGui.QSurface.Inst'Class) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "makeCurrent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,surface_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function openGLModuleType_F return access QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Inst'Class is
  Class,  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Class := new QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Inst;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
  Method := Object_GetAttrString (Class, "openGLModuleType");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function resolveInterface(self : access Inst;name_P : bytes;revision_P : int) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "resolveInterface");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Bytes_FromString (String(name_P)));
  Tuple_SetItem (Args, 1,Long_FromLong (revision_P));
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function screen(self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "screen");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure setFormat(self : access Inst;format_P : Union_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setScreen(self : access Inst;screen_P : access QtAda6.QtGui.QScreen.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setScreen");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,screen_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShareContext(self : access Inst;shareContext_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShareContext");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,shareContext_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function shareContext(self : access Inst) return access QtAda6.QtGui.QOpenGLContext.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLContext.Class := new QtAda6.QtGui.QOpenGLContext.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "shareContext");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function shareGroup(self : access Inst) return access QtAda6.QtGui.QOpenGLContextGroup.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLContextGroup.Class := new QtAda6.QtGui.QOpenGLContextGroup.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "shareGroup");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function supportsThreadedOpenGL return bool is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
  Method := Object_GetAttrString (Class, "supportsThreadedOpenGL");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function surface(self : access Inst) return access QtAda6.QtGui.QSurface.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QSurface.Class := new QtAda6.QtGui.QSurface.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "surface");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure swapBuffers(self : access Inst;surface_P : access QtAda6.QtGui.QSurface.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "swapBuffers");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,surface_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QOpenGLContext;
