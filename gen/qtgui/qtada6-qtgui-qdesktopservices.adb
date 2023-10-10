-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdesktopservices.adb
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
with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QDesktopServices is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function openUrl(url_P : Union_QtAda6_QtCore_QUrl_str) return bool is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
  Method := Object_GetAttrString (Class, "openUrl");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure setUrlHandler(scheme_P : str;receiver_P : access QtAda6.QtCore.QObject.Inst'Class;method_P : bytes) is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
  Method := Object_GetAttrString (Class, "setUrlHandler");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Unicode_FromString (scheme_P));
  Tuple_SetItem (Args, 1,receiver_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Bytes_FromString (String(method_P)));
  Result := Object_CallObject (Method, Args, True);
end;
procedure unsetUrlHandler(scheme_P : str) is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDesktopServices");
  Method := Object_GetAttrString (Class, "unsetUrlHandler");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (scheme_P));
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QDesktopServices;
