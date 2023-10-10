-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qhoverevent.adb
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
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QPointingDevice;
package body QtAda6.QtGui.QHoverEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QHoverEvent.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QHoverEvent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;oldPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QHoverEvent");
  Args   := Tuple_New ( 5);
  Tuple_SetItem (Args, 0,type_K_P.Python_Proxy);
  Tuple_SetItem (Args, 1,No_Value);
  Tuple_SetItem (Args, 2,No_Value);
  Tuple_SetItem (Args, 3,modifiers_P.Python_Proxy);
  Tuple_SetItem (Args, 4,device_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;scenePos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;globalPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;oldPos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QHoverEvent");
  Args   := Tuple_New ( 6);
  Tuple_SetItem (Args, 0,type_K_P.Python_Proxy);
  Tuple_SetItem (Args, 1,No_Value);
  Tuple_SetItem (Args, 2,No_Value);
  Tuple_SetItem (Args, 3,No_Value);
  Tuple_SetItem (Args, 4,modifiers_P.Python_Proxy);
  Tuple_SetItem (Args, 5,device_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function clone(self : access Inst) return access QtAda6.QtGui.QHoverEvent.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QHoverEvent.Class := new QtAda6.QtGui.QHoverEvent.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function isUpdateEvent(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isUpdateEvent");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function oldPos(self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "oldPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function oldPosF(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "oldPosF");
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
function posF(self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "posF");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QHoverEvent;
