-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qwindow-ancestormode.adb
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
package body QtAda6.QtGui.QWindow.AncestorMode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ExcludeTransients return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AncestorMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExcludeTransients"));
   end ExcludeTransients;
   function IncludeTransients return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AncestorMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IncludeTransients"));
   end IncludeTransients;
end QtAda6.QtGui.QWindow.AncestorMode;
