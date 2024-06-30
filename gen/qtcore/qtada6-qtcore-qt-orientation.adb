-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-orientation.adb
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
package body QtAda6.QtCore.Qt.Orientation is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;

   function Value (V : access Inst) return int is
   begin
      return Long_AsLong (Object_GetAttrString (V.Python_Proxy, "value"));
   end;

   function Image (V : access Inst) return str is
   begin
      return "Python Enum: " & As_String (Object_GetAttrString (V.Python_Proxy, "name"));
   end;

   function "or" (L, R : Class) return Class is
   begin
      return new Inst'(Python_Proxy => Number_Or (L.Python_Proxy, R.Python_Proxy));
   end;

   function Horizontal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Horizontal"));
   end Horizontal;
   function Vertical return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vertical"));
   end Vertical;
end QtAda6.QtCore.Qt.Orientation;
