-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qvalidator.adb
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
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QLocale.Language;
package body QtAda6.QtGui.QValidator is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QValidator");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function fixup(self : access Inst;arg_1_P : str) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "fixup");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function locale(self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "locale");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure setLocale(self : access Inst;locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setLocale");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function validate(self : access Inst;arg_1_P : str;arg_2_P : int) return object is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "validate");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (arg_1_P));
  Tuple_SetItem (Args, 1,Long_FromLong (arg_2_P));
  Result := Object_CallObject (Method, Args, True);
  return (Python_Proxy => Result);
end;
end QtAda6.QtGui.QValidator;
