-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qframe-stylemask.adb
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
package body QtAda6.QtWidgets.QFrame.StyleMask is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Shape_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleMask");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Shape_Mask"));
   end Shape_Mask;
   function Shadow_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFrame");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleMask");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Shadow_Mask"));
   end Shadow_Mask;
end QtAda6.QtWidgets.QFrame.StyleMask;
