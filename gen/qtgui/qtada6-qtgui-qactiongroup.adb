-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qactiongroup.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QAction;
with QtAda6.QtGui.QActionGroup.ExclusionPolicy;
package body QtAda6.QtGui.QActionGroup is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function hovered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "hovered"));
   end hovered;
   function triggered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "triggered"));
   end triggered;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QActionGroup");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function actions (self : access Inst) return LIST_QtAda6_QtGui_QAction is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actions");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end actions;
   function addAction
     (self : access Inst; a_P : access QtAda6.QtGui.QAction.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function checkedAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "checkedAction");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end checkedAction;
   function exclusionPolicy_F (self : access Inst) return access QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QActionGroup.ExclusionPolicy.Class :=
        new QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "exclusionPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exclusionPolicy_F;
   function isEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEnabled;
   function isExclusive (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isExclusive");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isExclusive;
   function isVisible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isVisible;
   procedure removeAction (self : access Inst; a_P : access QtAda6.QtGui.QAction.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAction;
   procedure setDisabled (self : access Inst; b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDisabled;
   procedure setEnabled (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEnabled;
   procedure setExclusionPolicy
     (self : access Inst; policy_P : access QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExclusionPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExclusionPolicy;
   procedure setExclusive (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExclusive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExclusive;
   procedure setVisible (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
end QtAda6.QtGui.QActionGroup;
