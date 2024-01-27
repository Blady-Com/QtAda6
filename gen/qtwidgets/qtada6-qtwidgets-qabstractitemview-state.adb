-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractitemview-state.adb
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
package body QtAda6.QtWidgets.QAbstractItemView.State is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoState"));
   end NoState;
   function DraggingState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DraggingState"));
   end DraggingState;
   function DragSelectingState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragSelectingState"));
   end DragSelectingState;
   function EditingState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EditingState"));
   end EditingState;
   function ExpandingState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExpandingState"));
   end ExpandingState;
   function CollapsingState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CollapsingState"));
   end CollapsingState;
   function AnimatingState return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "State");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnimatingState"));
   end AnimatingState;
end QtAda6.QtWidgets.QAbstractItemView.State;
