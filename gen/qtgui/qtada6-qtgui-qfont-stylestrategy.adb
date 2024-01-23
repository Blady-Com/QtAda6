-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfont-stylestrategy.adb
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
package body QtAda6.QtGui.QFont.StyleStrategy is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PreferDefault return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferDefault"));
   end PreferDefault;
   function PreferBitmap return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferBitmap"));
   end PreferBitmap;
   function PreferDevice return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferDevice"));
   end PreferDevice;
   function PreferOutline return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferOutline"));
   end PreferOutline;
   function ForceOutline return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForceOutline"));
   end ForceOutline;
   function PreferMatch return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferMatch"));
   end PreferMatch;
   function PreferQuality return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferQuality"));
   end PreferQuality;
   function PreferAntialias return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferAntialias"));
   end PreferAntialias;
   function NoAntialias return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoAntialias"));
   end NoAntialias;
   function NoSubpixelAntialias return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoSubpixelAntialias"));
   end NoSubpixelAntialias;
   function PreferNoShaping return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferNoShaping"));
   end PreferNoShaping;
   function NoFontMerging return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StyleStrategy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoFontMerging"));
   end NoFontMerging;
end QtAda6.QtGui.QFont.StyleStrategy;
