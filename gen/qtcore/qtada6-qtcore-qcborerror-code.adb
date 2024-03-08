-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborerror-code.adb
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
package body QtAda6.QtCore.QCborError.Code is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoError"));
   end NoError;
   function UnknownError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnknownError"));
   end UnknownError;
   function AdvancePastEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AdvancePastEnd"));
   end AdvancePastEnd;
   function InputOutputError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InputOutputError"));
   end InputOutputError;
   function GarbageAtEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GarbageAtEnd"));
   end GarbageAtEnd;
   function EndOfFile return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EndOfFile"));
   end EndOfFile;
   function UnexpectedBreak return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnexpectedBreak"));
   end UnexpectedBreak;
   function UnknownType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnknownType"));
   end UnknownType;
   function IllegalType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalType"));
   end IllegalType;
   function IllegalNumber return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalNumber"));
   end IllegalNumber;
   function IllegalSimpleType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalSimpleType"));
   end IllegalSimpleType;
   function InvalidUtf8String return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InvalidUtf8String"));
   end InvalidUtf8String;
   function DataTooLarge return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataTooLarge"));
   end DataTooLarge;
   function NestingTooDeep return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NestingTooDeep"));
   end NestingTooDeep;
   function UnsupportedType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnsupportedType"));
   end UnsupportedType;
end QtAda6.QtCore.QCborError.Code;
