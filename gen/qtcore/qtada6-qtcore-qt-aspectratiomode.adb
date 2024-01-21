-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-aspectratiomode.adb
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
package body QtAda6.QtCore.Qt.AspectRatioMode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function IgnoreAspectRatio return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AspectRatioMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IgnoreAspectRatio"));
   end IgnoreAspectRatio;
   function KeepAspectRatio return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AspectRatioMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KeepAspectRatio"));
   end KeepAspectRatio;
   function KeepAspectRatioByExpanding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AspectRatioMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KeepAspectRatioByExpanding"));
   end KeepAspectRatioByExpanding;
end QtAda6.QtCore.Qt.AspectRatioMode;
