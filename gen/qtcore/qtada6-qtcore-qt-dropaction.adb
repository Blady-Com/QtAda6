-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-dropaction.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.Qt.DropAction is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function IgnoreAction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DropAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IgnoreAction"));
   end IgnoreAction;
   function CopyAction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DropAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CopyAction"));
   end CopyAction;
   function MoveAction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DropAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveAction"));
   end MoveAction;
   function LinkAction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DropAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LinkAction"));
   end LinkAction;
   function ActionMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DropAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ActionMask"));
   end ActionMask;
   function TargetMoveAction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DropAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TargetMoveAction"));
   end TargetMoveAction;
end QtAda6.QtCore.Qt.DropAction;
