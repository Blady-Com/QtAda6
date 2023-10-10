-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qabstractfileiconprovider.adb
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
with QtAda6.QtCore.QFileInfo;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QAbstractFileIconProvider.IconType;
with QtAda6.QtGui.QAbstractFileIconProvider.Option;
package body QtAda6.QtGui.QAbstractFileIconProvider is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function icon_F(self : access Inst;arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class) return access QtAda6.QtGui.QIcon.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "icon");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function icon_F(self : access Inst;arg_1_P : access QtAda6.QtGui.QAbstractFileIconProvider.IconType.Inst'Class) return access QtAda6.QtGui.QIcon.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "icon");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function options(self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAbstractFileIconProvider.Option.Class := new QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "options");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure setOptions(self : access Inst;arg_1_P : access QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function type_K(self : access Inst;arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "type");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
end QtAda6.QtGui.QAbstractFileIconProvider;
