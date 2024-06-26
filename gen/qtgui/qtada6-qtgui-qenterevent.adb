-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qenterevent.adb
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
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QEnterEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QEnterEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QEnterEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QEnterEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QEnterEvent.Class := new QtAda6.QtGui.QEnterEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "globalPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalPos;
   function globalX (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalX");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end globalX;
   function globalY (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalY");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end globalY;
   function localPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "localPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end localPos;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screenPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screenPos;
   function windowPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowPos;
   function x (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end x;
   function y (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end y;
end QtAda6.QtGui.QEnterEvent;
