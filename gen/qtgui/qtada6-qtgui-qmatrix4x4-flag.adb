-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmatrix4x4-flag.adb
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
package body QtAda6.QtGui.QMatrix4x4.Flag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Identity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Identity"));
   end Identity;
   function Translation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Translation"));
   end Translation;
   function Scale return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Scale"));
   end Scale;
   function Rotation2D return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rotation2D"));
   end Rotation2D;
   function Rotation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rotation"));
   end Rotation;
   function Perspective return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Perspective"));
   end Perspective;
   function General return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "General"));
   end General;
end QtAda6.QtGui.QMatrix4x4.Flag;
