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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DirtyPen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyPen"));
   end DirtyPen;
   function DirtyBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyBrush"));
   end DirtyBrush;
   function DirtyBrushOrigin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyBrushOrigin"));
   end DirtyBrushOrigin;
   function DirtyFont return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyFont"));
   end DirtyFont;
   function DirtyBackground return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyBackground"));
   end DirtyBackground;
   function DirtyBackgroundMode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyBackgroundMode"));
   end DirtyBackgroundMode;
   function DirtyTransform return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyTransform"));
   end DirtyTransform;
   function DirtyClipRegion return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyClipRegion"));
   end DirtyClipRegion;
   function DirtyClipPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyClipPath"));
   end DirtyClipPath;
   function DirtyHints return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyHints"));
   end DirtyHints;
   function DirtyCompositionMode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyCompositionMode"));
   end DirtyCompositionMode;
   function DirtyClipEnabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyClipEnabled"));
   end DirtyClipEnabled;
   function DirtyOpacity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DirtyOpacity"));
   end DirtyOpacity;
   function AllDirty return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AllDirty"));
   end AllDirty;
end QtAda6.QtGui.QPaintEngine.DirtyFlag;
