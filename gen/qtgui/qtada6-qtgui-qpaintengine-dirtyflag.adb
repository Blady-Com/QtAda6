-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintengine-dirtyflag.adb
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
package body QtAda6.QtGui.QPaintEngine.DirtyFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DirtyPen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyPen"));
   end DirtyPen;
   function DirtyBrush return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyBrush"));
   end DirtyBrush;
   function DirtyBrushOrigin return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyBrushOrigin"));
   end DirtyBrushOrigin;
   function DirtyFont return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyFont"));
   end DirtyFont;
   function DirtyBackground return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyBackground"));
   end DirtyBackground;
   function DirtyBackgroundMode return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyBackgroundMode"));
   end DirtyBackgroundMode;
   function DirtyTransform return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyTransform"));
   end DirtyTransform;
   function DirtyClipRegion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyClipRegion"));
   end DirtyClipRegion;
   function DirtyClipPath return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyClipPath"));
   end DirtyClipPath;
   function DirtyHints return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyHints"));
   end DirtyHints;
   function DirtyCompositionMode return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyCompositionMode"));
   end DirtyCompositionMode;
   function DirtyClipEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyClipEnabled"));
   end DirtyClipEnabled;
   function DirtyOpacity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirtyOpacity"));
   end DirtyOpacity;
   function AllDirty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DirtyFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllDirty"));
   end AllDirty;
end QtAda6.QtGui.QPaintEngine.DirtyFlag;
