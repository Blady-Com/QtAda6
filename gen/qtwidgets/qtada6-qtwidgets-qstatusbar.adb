-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstatusbar.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtGui.QShowEvent;
package body QtAda6.QtWidgets.QStatusBar is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function messageChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "messageChanged"));
   end messageChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStatusBar");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addPermanentWidget
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPermanentWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addPermanentWidget;
   procedure addWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addWidget;
   procedure clearMessage (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMessage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearMessage;
   function currentMessage (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentMessage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end currentMessage;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   procedure hideOrShow (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideOrShow");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideOrShow;
   function insertPermanentWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0)
      return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertPermanentWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end insertPermanentWidget;
   function insertWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0)
      return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end insertWidget;
   function isSizeGripEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSizeGripEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSizeGripEnabled;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   procedure reformat (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reformat");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reformat;
   procedure removeWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeWidget;
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   procedure setSizeGripEnabled (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizeGripEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSizeGripEnabled;
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showEvent;
   procedure showMessage (self : access Inst; text_P : str; timeout_P : int := 0) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict := Dict_New;
      if timeout_P /= 0 then
         Dict_SetItemString (Dict, "timeout", Long_FromLong (timeout_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
end QtAda6.QtWidgets.QStatusBar;
