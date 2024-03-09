-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qsystemtrayicon.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QMenu;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QIcon;
with QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon;
package body QtAda6.QtWidgets.QSystemTrayIcon is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activated"));
   end activated;
   function messageClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "messageClicked"));
   end messageClicked;
   function Create
     (icon_P   : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function contextMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMenu.Class := new QtAda6.QtWidgets.QMenu.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contextMenu");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contextMenu;
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
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "geometry");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end geometry;
   procedure hide (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hide");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hide;
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "icon");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end icon;
   function isSystemTrayAvailable return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      Method := Object_GetAttrString (Class, "isSystemTrayAvailable");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSystemTrayAvailable;
   function isVisible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isVisible;
   procedure setContextMenu (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContextMenu");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if menu_P /= null then menu_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setContextMenu;
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIcon;
   procedure setToolTip (self : access Inst; tip_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (tip_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setToolTip;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
   procedure show (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "show");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end show;
   procedure showMessage
     (self   : access Inst; title_P : str; msg_P : str;
      icon_P : access QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon.Inst'Class := null; msecs_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (msg_P));
      Dict := Dict_New;
      if icon_P /= null then
         Dict_SetItemString (Dict, "icon", icon_P.Python_Proxy);
      end if;
      if msecs_P /= 0 then
         Dict_SetItemString (Dict, "msecs", Long_FromLong (msecs_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   procedure showMessage
     (self    : access Inst; title_P : str; msg_P : str; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;
      msecs_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (msg_P));
      Tuple_SetItem (Args, 2, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if msecs_P /= 0 then
         Dict_SetItemString (Dict, "msecs", Long_FromLong (msecs_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   function supportsMessages return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSystemTrayIcon");
      Method := Object_GetAttrString (Class, "supportsMessages");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end supportsMessages;
   function toolTip (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toolTip;
end QtAda6.QtWidgets.QSystemTrayIcon;
