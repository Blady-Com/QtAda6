-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qitemselectionmodel-selectionflag.adb
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
package body QtAda6.QtCore.QItemSelectionModel.SelectionFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoUpdate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoUpdate"));
   end NoUpdate;
   function Clear return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Clear"));
   end Clear;
   function Select_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Select"));
   end Select_K;
   function ClearAndSelect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ClearAndSelect"));
   end ClearAndSelect;
   function Deselect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Deselect"));
   end Deselect;
   function Toggle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Toggle"));
   end Toggle;
   function Current return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Current"));
   end Current;
   function SelectCurrent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SelectCurrent"));
   end SelectCurrent;
   function ToggleCurrent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ToggleCurrent"));
   end ToggleCurrent;
   function Rows return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Rows"));
   end Rows;
   function Columns return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SelectionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Columns"));
   end Columns;
end QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
