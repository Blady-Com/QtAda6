-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlibrary-loadhint.adb
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
package body QtAda6.QtCore.QLibrary.LoadHint is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ResolveAllSymbolsHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LoadHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ResolveAllSymbolsHint"));
   end ResolveAllSymbolsHint;
   function ExportExternalSymbolsHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LoadHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExportExternalSymbolsHint"));
   end ExportExternalSymbolsHint;
   function LoadArchiveMemberHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LoadHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LoadArchiveMemberHint"));
   end LoadArchiveMemberHint;
   function PreventUnloadHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LoadHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreventUnloadHint"));
   end PreventUnloadHint;
   function DeepBindHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LoadHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeepBindHint"));
   end DeepBindHint;
end QtAda6.QtCore.QLibrary.LoadHint;
