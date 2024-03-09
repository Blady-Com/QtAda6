-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qundogroup.adb
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
with QtAda6.QtGui.QUndoStack;
with QtAda6.QtGui.QAction;
package body QtAda6.QtGui.QUndoGroup is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activeStackChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activeStackChanged"));
   end activeStackChanged;
   function canRedoChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "canRedoChanged"));
   end canRedoChanged;
   function canUndoChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "canUndoChanged"));
   end canUndoChanged;
   function cleanChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cleanChanged"));
   end cleanChanged;
   function indexChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "indexChanged"));
   end indexChanged;
   function redoTextChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "redoTextChanged"));
   end redoTextChanged;
   function undoTextChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "undoTextChanged"));
   end undoTextChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QUndoGroup");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function activeStack (self : access Inst) return access QtAda6.QtGui.QUndoStack.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QUndoStack.Class := new QtAda6.QtGui.QUndoStack.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "activeStack");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activeStack;
   procedure addStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addStack");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stack_P /= null then stack_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addStack;
   function canRedo (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canRedo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canRedo;
   function canUndo (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canUndo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canUndo;
   function createRedoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str := "")
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createRedoAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if prefix_P /= "" then
         Dict_SetItemString (Dict, "prefix", Unicode_FromString (prefix_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createRedoAction;
   function createUndoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str := "")
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createUndoAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if prefix_P /= "" then
         Dict_SetItemString (Dict, "prefix", Unicode_FromString (prefix_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createUndoAction;
   function isClean (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isClean");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isClean;
   procedure redo (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end redo;
   function redoText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redoText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end redoText;
   procedure removeStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeStack");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stack_P /= null then stack_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeStack;
   procedure setActiveStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActiveStack");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stack_P /= null then stack_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setActiveStack;
   function stacks (self : access Inst) return LIST_QtAda6_QtGui_QUndoStack is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stacks");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end stacks;
   procedure undo (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "undo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end undo;
   function undoText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "undoText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end undoText;
end QtAda6.QtGui.QUndoGroup;
