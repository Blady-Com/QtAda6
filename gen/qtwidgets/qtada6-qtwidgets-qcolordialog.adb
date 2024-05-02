-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcolordialog.adb
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
with QtAda6.QtGui.QColor;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QColorDialog.ColorDialogOption;
with QtAda6.QtCore.QObject;
package body QtAda6.QtWidgets.QColorDialog is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function colorSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "colorSelected"));
   end colorSelected;
   function currentColorChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentColorChanged"));
   end currentColorChanged;
   function Create
     (initial_P : access QtAda6.QtGui.QColor.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initial_P /= null then initial_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (initial_P : access QtAda6.QtGui.QRgba64.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initial_P /= null then initial_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (initial_P : Any; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initial_P /= null then initial_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (initial_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initial_P /= null then initial_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (initial_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (initial_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (initial_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (initial_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   function currentColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentColor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentColor;
   function customColor (index_P : int) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "customColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end customColor;
   function customCount return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "customCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end customCount;
   procedure done (self : access Inst; result_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (result_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end done;
   function getColor
     (initial_P : access QtAda6.QtGui.QColor.Inst'Class                             := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                        := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "getColor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if initial_P /= null then
         Dict_SetItemString (Dict, "initial", initial_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getColor;
   function getColor
     (initial_P : access QtAda6.QtGui.QRgba64.Inst'Class                            := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                        := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "getColor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if initial_P /= null then
         Dict_SetItemString (Dict, "initial", initial_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getColor;
   function getColor
     (initial_P : Any := null; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "getColor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if initial_P /= null then
         Dict_SetItemString (Dict, "initial", initial_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getColor;
   function getColor
     (initial_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class                    := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                        := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "getColor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if initial_P /= null then
         Dict_SetItemString (Dict, "initial", initial_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getColor;
   function getColor
     (initial_P : str := ""; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "getColor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if initial_P /= "" then
         Dict_SetItemString (Dict, "initial", Unicode_FromString (initial_P));
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getColor;
   function getColor
     (initial_P : int := 0; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "getColor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if initial_P /= 0 then
         Dict_SetItemString (Dict, "initial", Long_FromLong (initial_P));
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if title_P /= "" then
         Dict_SetItemString (Dict, "title", Unicode_FromString (title_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getColor;
   procedure open (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (member_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   function options (self : access Inst) return access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Class :=
        new QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   function selectedColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectedColor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedColor;
   procedure setCurrentColor (self : access Inst; color_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColor;
   procedure setCurrentColor (self : access Inst; color_P : access QtAda6.QtGui.QRgba64.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColor;
   procedure setCurrentColor (self : access Inst; color_P : Any) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColor;
   procedure setCurrentColor (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColor;
   procedure setCurrentColor (self : access Inst; color_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColor;
   procedure setCurrentColor (self : access Inst; color_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentColor;
   procedure setCustomColor (index_P : int; color_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setCustomColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomColor;
   procedure setCustomColor (index_P : int; color_P : access QtAda6.QtGui.QRgba64.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setCustomColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomColor;
   procedure setCustomColor (index_P : int; color_P : Any) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setCustomColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomColor;
   procedure setCustomColor (index_P : int; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setCustomColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomColor;
   procedure setCustomColor (index_P : int; color_P : str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setCustomColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomColor;
   procedure setCustomColor (index_P : int; color_P : int) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setCustomColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomColor;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class;
      on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setOption;
   procedure setOptions
     (self : access Inst; options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptions;
   procedure setStandardColor (index_P : int; color_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setStandardColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardColor;
   procedure setStandardColor (index_P : int; color_P : access QtAda6.QtGui.QRgba64.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setStandardColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardColor;
   procedure setStandardColor (index_P : int; color_P : Any) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setStandardColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardColor;
   procedure setStandardColor (index_P : int; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setStandardColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardColor;
   procedure setStandardColor (index_P : int; color_P : str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setStandardColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardColor;
   procedure setStandardColor (index_P : int; color_P : int) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "setStandardColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardColor;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
   function standardColor (index_P : int) return access QtAda6.QtGui.QColor.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColorDialog");
      Method := Object_GetAttrString (Class, "standardColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end standardColor;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end testOption;
end QtAda6.QtWidgets.QColorDialog;
