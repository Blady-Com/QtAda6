-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qintvalidator.adb
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
with QtAda6.QtGui.QValidator;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QIntValidator is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(bottom_P : int;top_P : int;parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIntValidator");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (bottom_P));
  Tuple_SetItem (Args, 1,Long_FromLong (top_P));
  Tuple_SetItem (Args, 2,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIntValidator");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function bottom(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "bottom");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function fixup(self : access Inst;input_P : str) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "fixup");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (input_P));
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
procedure setBottom(self : access Inst;arg_1_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setBottom");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setRange(self : access Inst;bottom_P : int;top_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setRange");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (bottom_P));
  Tuple_SetItem (Args, 1,Long_FromLong (top_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setTop(self : access Inst;arg_1_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setTop");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
function top(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "top");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
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
end QtAda6.QtGui.QIntValidator;
