-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qslider.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QStyleOptionSlider;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QSlider.TickPosition;
package body QtAda6.QtWidgets.QSlider is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      parent_P      : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSlider");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSlider");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSlider.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initStyleOption;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
   procedure mouseMoveEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseReleaseEvent;
   procedure paintEvent (self : access Inst; ev_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   procedure setTickInterval (self : access Inst; ti_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTickInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ti_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTickInterval;
   procedure setTickPosition (self : access Inst; position_P : access QtAda6.QtWidgets.QSlider.TickPosition.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTickPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTickPosition;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function tickInterval (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tickInterval");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end tickInterval;
   function tickPosition_F (self : access Inst) return access QtAda6.QtWidgets.QSlider.TickPosition.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QSlider.TickPosition.Class := new QtAda6.QtWidgets.QSlider.TickPosition.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "tickPosition");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tickPosition_F;
end QtAda6.QtWidgets.QSlider;
