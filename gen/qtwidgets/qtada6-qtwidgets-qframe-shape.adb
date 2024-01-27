-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qframe-shape.adb
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
package body QtAda6.QtWidgets.QFrame.Shape is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoFrame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoFrame"));
   end NoFrame;
   function Box return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Box"));
   end Box;
   function Panel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Panel"));
   end Panel;
   function WinPanel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WinPanel"));
   end WinPanel;
   function HLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HLine"));
   end HLine;
   function VLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VLine"));
   end VLine;
   function StyledPanel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Shape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StyledPanel"));
   end StyledPanel;
end QtAda6.QtWidgets.QFrame.Shape;
