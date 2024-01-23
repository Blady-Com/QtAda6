-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsurfaceformat-renderabletype.adb
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
package body QtAda6.QtGui.QSurfaceFormat.RenderableType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DefaultRenderableType return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderableType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DefaultRenderableType"));
   end DefaultRenderableType;
   function OpenGL return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderableType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenGL"));
   end OpenGL;
   function OpenGLES return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderableType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenGLES"));
   end OpenGLES;
   function OpenVG return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurfaceFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderableType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenVG"));
   end OpenVG;
end QtAda6.QtGui.QSurfaceFormat.RenderableType;
