-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale-datasizeformat.adb
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
package body QtAda6.QtCore.QLocale.DataSizeFormat is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DataSizeIecFormat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataSizeIecFormat"));
   end DataSizeIecFormat;
   function DataSizeBase1000 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataSizeBase1000"));
   end DataSizeBase1000;
   function DataSizeSIQuantifiers return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataSizeSIQuantifiers"));
   end DataSizeSIQuantifiers;
   function DataSizeTraditionalFormat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataSizeTraditionalFormat"));
   end DataSizeTraditionalFormat;
   function DataSizeSIFormat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataSizeSIFormat"));
   end DataSizeSIFormat;
end QtAda6.QtCore.QLocale.DataSizeFormat;
