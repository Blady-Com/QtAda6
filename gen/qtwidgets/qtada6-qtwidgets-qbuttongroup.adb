-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qbuttongroup.adb
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
with QtAda6.QtWidgets.QAbstractButton;
package body QtAda6.QtWidgets.QButtonGroup is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function buttonClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "buttonClicked"));
   end buttonClicked;
   function buttonPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "buttonPressed"));
   end buttonPressed;
   function buttonReleased (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "buttonReleased"));
   end buttonReleased;
   function buttonToggled (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "buttonToggled"));
   end buttonToggled;
   function idClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "idClicked"));
   end idClicked;
   function idPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "idPressed"));
   end idPressed;
   function idReleased (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "idReleased"));
   end idReleased;
   function idToggled (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "idToggled"));
   end idToggled;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QButtonGroup");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addButton
     (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class; id_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if id_P /= 0 then
         Dict_SetItemString (Dict, "id", Long_FromLong (id_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addButton;
   function button (self : access Inst; id_P : int) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractButton.Class := new QtAda6.QtWidgets.QAbstractButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "button");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end button;
   function buttons (self : access Inst) return LIST_QtAda6_QtWidgets_QAbstractButton is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttons");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end buttons;
   function checkedButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractButton.Class := new QtAda6.QtWidgets.QAbstractButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "checkedButton");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end checkedButton;
   function checkedId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkedId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end checkedId;
   function exclusive (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exclusive");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end exclusive;
   function id (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "id");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end id;
   procedure removeButton (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeButton");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeButton;
   procedure setExclusive (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExclusive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExclusive;
   procedure setId (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setId");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setId;
end QtAda6.QtWidgets.QButtonGroup;
