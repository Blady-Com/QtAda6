-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qradialgradient.adb
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
with QtAda6.QtGui.QGradient;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QRadialGradient is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(QRadialGradient_P : access QtAda6.QtGui.QRadialGradient.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,QRadialGradient_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(center_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;centerRadius_P : float;focalPoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;focalRadius_P : float) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Float_FromDouble (centerRadius_P));
  Tuple_SetItem (Args, 2,No_Value);
  Tuple_SetItem (Args, 3,Float_FromDouble (focalRadius_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(center_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;radius_P : float) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Float_FromDouble (radius_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(center_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;radius_P : float;focalPoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Float_FromDouble (radius_P));
  Tuple_SetItem (Args, 2,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(cx_P : float;cy_P : float;centerRadius_P : float;fx_P : float;fy_P : float;focalRadius_P : float) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 6);
  Tuple_SetItem (Args, 0,Float_FromDouble (cx_P));
  Tuple_SetItem (Args, 1,Float_FromDouble (cy_P));
  Tuple_SetItem (Args, 2,Float_FromDouble (centerRadius_P));
  Tuple_SetItem (Args, 3,Float_FromDouble (fx_P));
  Tuple_SetItem (Args, 4,Float_FromDouble (fy_P));
  Tuple_SetItem (Args, 5,Float_FromDouble (focalRadius_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(cx_P : float;cy_P : float;radius_P : float) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Float_FromDouble (cx_P));
  Tuple_SetItem (Args, 1,Float_FromDouble (cy_P));
  Tuple_SetItem (Args, 2,Float_FromDouble (radius_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(cx_P : float;cy_P : float;radius_P : float;fx_P : float;fy_P : float) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Args   := Tuple_New ( 5);
  Tuple_SetItem (Args, 0,Float_FromDouble (cx_P));
  Tuple_SetItem (Args, 1,Float_FromDouble (cy_P));
  Tuple_SetItem (Args, 2,Float_FromDouble (radius_P));
  Tuple_SetItem (Args, 3,Float_FromDouble (fx_P));
  Tuple_SetItem (Args, 4,Float_FromDouble (fy_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure U_copy_U is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRadialGradient");
  Method := Object_GetAttrString (Class, "__copy__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function center(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "center");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function centerRadius(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "centerRadius");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function focalPoint(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "focalPoint");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function focalRadius(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "focalRadius");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function radius(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "radius");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
procedure setCenter(self : access Inst;center_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCenter(self : access Inst;x_P : float;y_P : float) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCenter");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Float_FromDouble (x_P));
  Tuple_SetItem (Args, 1,Float_FromDouble (y_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCenterRadius(self : access Inst;radius_P : float) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCenterRadius");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Float_FromDouble (radius_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFocalPoint(self : access Inst;focalPoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFocalPoint");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFocalPoint(self : access Inst;x_P : float;y_P : float) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFocalPoint");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Float_FromDouble (x_P));
  Tuple_SetItem (Args, 1,Float_FromDouble (y_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFocalRadius(self : access Inst;radius_P : float) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFocalRadius");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Float_FromDouble (radius_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setRadius(self : access Inst;radius_P : float) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setRadius");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Float_FromDouble (radius_P));
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QRadialGradient;
