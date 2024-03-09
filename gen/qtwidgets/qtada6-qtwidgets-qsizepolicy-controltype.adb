-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qsizepolicy-controltype.adb
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
package body QtAda6.QtWidgets.QSizePolicy.ControlType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DefaultType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DefaultType"));
   end DefaultType;
   function ButtonBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ButtonBox"));
   end ButtonBox;
   function CheckBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CheckBox"));
   end CheckBox;
   function ComboBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ComboBox"));
   end ComboBox;
   function Frame return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Frame"));
   end Frame;
   function GroupBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GroupBox"));
   end GroupBox;
   function Label return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Label"));
   end Label;
   function Line return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Line"));
   end Line;
   function LineEdit return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LineEdit"));
   end LineEdit;
   function PushButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PushButton"));
   end PushButton;
   function RadioButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RadioButton"));
   end RadioButton;
   function Slider return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Slider"));
   end Slider;
   function SpinBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SpinBox"));
   end SpinBox;
   function TabWidget return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabWidget"));
   end TabWidget;
   function ToolButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ToolButton"));
   end ToolButton;
end QtAda6.QtWidgets.QSizePolicy.ControlType;
