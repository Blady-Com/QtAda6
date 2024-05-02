-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qsplashscreen.adb
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
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QScreen;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
package body QtAda6.QtWidgets.QSplashScreen is
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
   function Create
     (pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class        := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSplashScreen");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if pixmap_P /= null then
         Dict_SetItemString (Dict, "pixmap", pixmap_P.Python_Proxy);
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pixmap_P : access QtAda6.QtGui.QImage.Inst'Class         := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSplashScreen");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if pixmap_P /= null then
         Dict_SetItemString (Dict, "pixmap", pixmap_P.Python_Proxy);
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (pixmap_P : str := ""; f_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSplashScreen");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if pixmap_P /= "" then
         Dict_SetItemString (Dict, "pixmap", Unicode_FromString (pixmap_P));
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSplashScreen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if pixmap_P /= null then
         Dict_SetItemString (Dict, "pixmap", pixmap_P.Python_Proxy);
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSplashScreen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if pixmap_P /= null then
         Dict_SetItemString (Dict, "pixmap", pixmap_P.Python_Proxy);
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; pixmap_P : str := "";
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSplashScreen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if pixmap_P /= "" then
         Dict_SetItemString (Dict, "pixmap", Unicode_FromString (pixmap_P));
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure clearMessage (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMessage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearMessage;
   procedure drawContents (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawContents;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   procedure finish (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "finish");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end finish;
   function message (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "message");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end message;
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mousePressEvent;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   procedure setPixmap (self : access Inst; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixmap;
   procedure setPixmap (self : access Inst; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixmap;
   procedure setPixmap (self : access Inst; pixmap_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pixmap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixmap;
   procedure showMessage
     (self    : access Inst; message_P : str; alignment_P : int := 0;
      color_P : access QtAda6.QtGui.QColor.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Dict := Dict_New;
      if alignment_P /= 0 then
         Dict_SetItemString (Dict, "alignment", Long_FromLong (alignment_P));
      end if;
      if color_P /= null then
         Dict_SetItemString (Dict, "color", color_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   procedure showMessage
     (self    : access Inst; message_P : str; alignment_P : int := 0;
      color_P : access QtAda6.QtGui.QRgba64.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Dict := Dict_New;
      if alignment_P /= 0 then
         Dict_SetItemString (Dict, "alignment", Long_FromLong (alignment_P));
      end if;
      if color_P /= null then
         Dict_SetItemString (Dict, "color", color_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   procedure showMessage (self : access Inst; message_P : str; alignment_P : int := 0; color_P : Any := null) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Dict := Dict_New;
      if alignment_P /= 0 then
         Dict_SetItemString (Dict, "alignment", Long_FromLong (alignment_P));
      end if;
      if color_P /= null then
         Dict_SetItemString (Dict, "color", color_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   procedure showMessage
     (self    : access Inst; message_P : str; alignment_P : int := 0;
      color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Dict := Dict_New;
      if alignment_P /= 0 then
         Dict_SetItemString (Dict, "alignment", Long_FromLong (alignment_P));
      end if;
      if color_P /= null then
         Dict_SetItemString (Dict, "color", color_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   procedure showMessage (self : access Inst; message_P : str; alignment_P : int := 0; color_P : str := "") is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Dict := Dict_New;
      if alignment_P /= 0 then
         Dict_SetItemString (Dict, "alignment", Long_FromLong (alignment_P));
      end if;
      if color_P /= "" then
         Dict_SetItemString (Dict, "color", Unicode_FromString (color_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
   procedure showMessage (self : access Inst; message_P : str; alignment_P : int := 0; color_P : int := 0) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMessage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (message_P));
      Dict := Dict_New;
      if alignment_P /= 0 then
         Dict_SetItemString (Dict, "alignment", Long_FromLong (alignment_P));
      end if;
      if color_P /= 0 then
         Dict_SetItemString (Dict, "color", Long_FromLong (color_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showMessage;
end QtAda6.QtWidgets.QSplashScreen;
