-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-alignmentflag.adb
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
package body QtAda6.QtCore.Qt.AlignmentFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AlignLeading return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignLeading"));
   end AlignLeading;
   function AlignLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignLeft"));
   end AlignLeft;
   function AlignRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignRight"));
   end AlignRight;
   function AlignTrailing return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignTrailing"));
   end AlignTrailing;
   function AlignHCenter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignHCenter"));
   end AlignHCenter;
   function AlignJustify return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignJustify"));
   end AlignJustify;
   function AlignAbsolute return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignAbsolute"));
   end AlignAbsolute;
   function AlignHorizontal_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignHorizontal_Mask"));
   end AlignHorizontal_Mask;
   function AlignTop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignTop"));
   end AlignTop;
   function AlignBottom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignBottom"));
   end AlignBottom;
   function AlignVCenter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignVCenter"));
   end AlignVCenter;
   function AlignCenter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignCenter"));
   end AlignCenter;
   function AlignBaseline return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignBaseline"));
   end AlignBaseline;
   function AlignVertical_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AlignmentFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlignVertical_Mask"));
   end AlignVertical_Mask;
end QtAda6.QtCore.Qt.AlignmentFlag;
