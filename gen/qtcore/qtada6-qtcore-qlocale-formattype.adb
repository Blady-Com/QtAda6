-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale-formattype.adb
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
package body QtAda6.QtCore.QLocale.FormatType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function LongFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LongFormat"));
   end LongFormat;
   function ShortFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShortFormat"));
   end ShortFormat;
   function NarrowFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NarrowFormat"));
   end NarrowFormat;
end QtAda6.QtCore.QLocale.FormatType;
