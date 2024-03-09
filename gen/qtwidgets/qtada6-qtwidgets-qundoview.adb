-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qundoview.adb
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
with QtAda6.QtGui.QUndoGroup;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QUndoStack;
with QtAda6.QtGui.QIcon;
package body QtAda6.QtWidgets.QUndoView is
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
     (group_P  : access QtAda6.QtGui.QUndoGroup.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QUndoView");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if group_P /= null then group_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QUndoView");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (stack_P  : access QtAda6.QtGui.QUndoStack.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QUndoView");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stack_P /= null then stack_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function cleanIcon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cleanIcon");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cleanIcon;
   function emptyLabel (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "emptyLabel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end emptyLabel;
   function group (self : access Inst) return access QtAda6.QtGui.QUndoGroup.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QUndoGroup.Class := new QtAda6.QtGui.QUndoGroup.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "group");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end group;
   procedure setCleanIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCleanIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCleanIcon;
   procedure setEmptyLabel (self : access Inst; label_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEmptyLabel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (label_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEmptyLabel;
   procedure setGroup (self : access Inst; group_P : access QtAda6.QtGui.QUndoGroup.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGroup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if group_P /= null then group_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGroup;
   procedure setStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStack");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stack_P /= null then stack_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStack;
   function stack (self : access Inst) return access QtAda6.QtGui.QUndoStack.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QUndoStack.Class := new QtAda6.QtGui.QUndoStack.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "stack");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end stack;
end QtAda6.QtWidgets.QUndoView;
