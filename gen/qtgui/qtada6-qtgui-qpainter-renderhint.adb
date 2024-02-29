-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainter-renderhint.adb
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
package body QtAda6.QtGui.QPainter.RenderHint is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Antialiasing return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      --        Enum_Class   := Object_GetAttrString (Parent_Class, "RenderHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Antialiasing"));
   end Antialiasing;
   function TextAntialiasing return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextAntialiasing"));
   end TextAntialiasing;
   function SmoothPixmapTransform return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SmoothPixmapTransform"));
   end SmoothPixmapTransform;
   function VerticalSubpixelPositioning return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VerticalSubpixelPositioning"));
   end VerticalSubpixelPositioning;
   function LosslessImageRendering return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LosslessImageRendering"));
   end LosslessImageRendering;
   function NonCosmeticBrushPatterns return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Enum_Class   := Object_GetAttrString (Parent_Class, "RenderHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NonCosmeticBrushPatterns"));
   end NonCosmeticBrushPatterns;
end QtAda6.QtGui.QPainter.RenderHint;
