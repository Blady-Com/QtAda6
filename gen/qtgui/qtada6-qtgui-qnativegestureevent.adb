-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qnativegestureevent.adb
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
with QtAda6.QtGui.QSinglePointEvent;
with QtAda6.QtCore.Qt.NativeGestureType;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QNativeGestureEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QNativeGestureEvent.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QNativeGestureEvent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(type_K_P : access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;fingerCount_P : int;localPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;scenePos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;globalPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;value_P : float;delta_K_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;sequenceId_P : int) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QNativeGestureEvent");
  Args   := Tuple_New ( 9);
  Tuple_SetItem (Args, 0,type_K_P.Python_Proxy);
  Tuple_SetItem (Args, 1,dev_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Long_FromLong (fingerCount_P));
  Tuple_SetItem (Args, 3,No_Value);
  Tuple_SetItem (Args, 4,No_Value);
  Tuple_SetItem (Args, 5,No_Value);
  Tuple_SetItem (Args, 6,Float_FromDouble (value_P));
  Tuple_SetItem (Args, 7,No_Value);
  Tuple_SetItem (Args, 8,Long_FromLong (sequenceId_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(type_K_P : access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;localPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;scenePos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;globalPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;value_P : float;sequenceId_P : int;intArgument_P : int) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QNativeGestureEvent");
  Args   := Tuple_New ( 8);
  Tuple_SetItem (Args, 0,type_K_P.Python_Proxy);
  Tuple_SetItem (Args, 1,dev_P.Python_Proxy);
  Tuple_SetItem (Args, 2,No_Value);
  Tuple_SetItem (Args, 3,No_Value);
  Tuple_SetItem (Args, 4,No_Value);
  Tuple_SetItem (Args, 5,Float_FromDouble (value_P));
  Tuple_SetItem (Args, 6,Long_FromLong (sequenceId_P));
  Tuple_SetItem (Args, 7,Long_FromLong (intArgument_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function clone(self : access Inst) return access QtAda6.QtGui.QNativeGestureEvent.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QNativeGestureEvent.Class := new QtAda6.QtGui.QNativeGestureEvent.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function delta_K(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "delta");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function fingerCount(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "fingerCount");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function gestureType(self : access Inst) return access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.NativeGestureType.Class := new QtAda6.QtCore.Qt.NativeGestureType.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "gestureType");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function globalPos(self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "globalPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function localPos(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "localPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function pos(self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "pos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function screenPos(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "screenPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function value(self : access Inst) return float is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "value");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Float_AsDouble (Result);
end;
function windowPos(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "windowPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QNativeGestureEvent;
