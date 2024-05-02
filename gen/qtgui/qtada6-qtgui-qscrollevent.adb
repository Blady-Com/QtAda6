-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qscrollevent.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QScrollEvent.ScrollState;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QScrollEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QScrollEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; overshoot_P : access QtAda6.QtCore.QPointF.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; overshoot_P : access QtAda6.QtCore.QPoint.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      overshoot_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; overshoot_P : access QtAda6.QtCore.QPointF.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; overshoot_P : access QtAda6.QtCore.QPoint.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      overshoot_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      overshoot_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      overshoot_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (contentPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      overshoot_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QScrollEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if contentPos_P /= null then contentPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if overshoot_P /= null then overshoot_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scrollState_P /= null then scrollState_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QScrollEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QScrollEvent.Class := new QtAda6.QtGui.QScrollEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function contentPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contentPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contentPos;
   function overshootDistance (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "overshootDistance");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end overshootDistance;
   function scrollState_F (self : access Inst) return access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QScrollEvent.ScrollState.Class := new QtAda6.QtGui.QScrollEvent.ScrollState.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scrollState");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scrollState_F;
end QtAda6.QtGui.QScrollEvent;
