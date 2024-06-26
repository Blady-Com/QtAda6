-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qwheelevent.adb
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
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.ScrollPhase;
with QtAda6.QtCore.Qt.MouseEventSource;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QWheelEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pos_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWheelEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pixelDelta_P /= null then pixelDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if angleDelta_P /= null then angleDelta_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if phase_P /= null then phase_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (inverted_P));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function angleDelta (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "angleDelta");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end angleDelta;
   function clone (self : access Inst) return access QtAda6.QtGui.QWheelEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QWheelEvent.Class := new QtAda6.QtGui.QWheelEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function hasPixelDelta (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasPixelDelta");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasPixelDelta;
   function inverted (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inverted");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end inverted;
   function isBeginEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBeginEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isBeginEvent;
   function isEndEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEndEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEndEvent;
   function isInverted (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInverted");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isInverted;
   function isUpdateEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUpdateEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUpdateEvent;
   function phase (self : access Inst) return access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ScrollPhase.Class := new QtAda6.QtCore.Qt.ScrollPhase.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "phase");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end phase;
   function pixelDelta (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixelDelta");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelDelta;
   function source (self : access Inst) return access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseEventSource.Class := new QtAda6.QtCore.Qt.MouseEventSource.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "source");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end source;
end QtAda6.QtGui.QWheelEvent;
