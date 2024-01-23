-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qregion-regiontype.adb
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
package body QtAda6.QtGui.QRegion.RegionType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Rectangle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRegion");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RegionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Rectangle"));
   end Rectangle;
   function Ellipse return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRegion");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RegionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ellipse"));
   end Ellipse;
end QtAda6.QtGui.QRegion.RegionType;
