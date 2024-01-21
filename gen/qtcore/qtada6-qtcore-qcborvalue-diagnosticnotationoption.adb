-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborvalue-diagnosticnotationoption.adb
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
package body QtAda6.QtCore.QCborValue.DiagnosticNotationOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Compact return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DiagnosticNotationOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Compact"));
   end Compact;
   function LineWrapped return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DiagnosticNotationOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LineWrapped"));
   end LineWrapped;
   function ExtendedFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DiagnosticNotationOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtendedFormat"));
   end ExtendedFormat;
end QtAda6.QtCore.QCborValue.DiagnosticNotationOption;
