-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmatrix4x3.adb
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
with QtAda6.QtGui.QMatrix3x4;
package body QtAda6.QtGui.QMatrix4x3 is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x3");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(QMatrix4x3_P : access QtAda6.QtGui.QMatrix4x3.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x3");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,QMatrix4x3_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(arg_1_P : Iterable) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x3");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Iterable_conv_A2P_is_not_supported);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function U_call_U(self : access Inst;row_P : int;column_P : int) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__call__");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
procedure U_copy_U is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x3");
  Method := Object_GetAttrString (Class, "__copy__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function U_iadd_U(self : access Inst;other_P : access QtAda6.QtGui.QMatrix4x3.Inst'Class) return access QtAda6.QtGui.QMatrix4x3.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QMatrix4x3.Class := new QtAda6.QtGui.QMatrix4x3.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,other_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function U_imul_U(self : access Inst;factor_P : float) return access QtAda6.QtGui.QMatrix4x3.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QMatrix4x3.Class := new QtAda6.QtGui.QMatrix4x3.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Float_FromDouble (factor_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function U_isub_U(self : access Inst;other_P : access QtAda6.QtGui.QMatrix4x3.Inst'Class) return access QtAda6.QtGui.QMatrix4x3.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QMatrix4x3.Class := new QtAda6.QtGui.QMatrix4x3.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,other_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function U_reduce_U(self : access Inst) return object is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return (Python_Proxy => Result);
end;
function U_repr_U(self : access Inst) return object is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return (Python_Proxy => Result);
end;
function data(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "data");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
procedure fill(self : access Inst;value_P : float) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "fill");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Float_FromDouble (value_P));
  Result := Object_CallObject (Method, Args, True);
end;
function isIdentity(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isIdentity");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure setToIdentity(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setToIdentity");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function transposed(self : access Inst) return access QtAda6.QtGui.QMatrix3x4.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QMatrix3x4.Class := new QtAda6.QtGui.QMatrix3x4.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "transposed");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QMatrix4x3;
