-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qjsonparseerror-parseerror.adb
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
package body QtAda6.QtCore.QJsonParseError.ParseError is
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
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoError"));
   end NoError;
   function UnterminatedObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnterminatedObject"));
   end UnterminatedObject;
   function MissingNameSeparator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MissingNameSeparator"));
   end MissingNameSeparator;
   function UnterminatedArray return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnterminatedArray"));
   end UnterminatedArray;
   function MissingValueSeparator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MissingValueSeparator"));
   end MissingValueSeparator;
   function IllegalValue return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalValue"));
   end IllegalValue;
   function TerminationByNumber return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TerminationByNumber"));
   end TerminationByNumber;
   function IllegalNumber return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalNumber"));
   end IllegalNumber;
   function IllegalEscapeSequence return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalEscapeSequence"));
   end IllegalEscapeSequence;
   function IllegalUTF8String return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IllegalUTF8String"));
   end IllegalUTF8String;
   function UnterminatedString return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnterminatedString"));
   end UnterminatedString;
   function MissingObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MissingObject"));
   end MissingObject;
   function DeepNesting return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DeepNesting"));
   end DeepNesting;
   function DocumentTooLarge return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentTooLarge"));
   end DocumentTooLarge;
   function GarbageAtEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonParseError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GarbageAtEnd"));
   end GarbageAtEnd;
end QtAda6.QtCore.QJsonParseError.ParseError;
