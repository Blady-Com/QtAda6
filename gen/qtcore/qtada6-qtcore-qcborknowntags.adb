-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborknowntags.adb
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
package body QtAda6.QtCore.QCborKnownTags is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DateTimeString return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DateTimeString"));
   end DateTimeString;
   function UnixTime_t return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnixTime_t"));
   end UnixTime_t;
   function PositiveBignum return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PositiveBignum"));
   end PositiveBignum;
   function NegativeBignum return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NegativeBignum"));
   end NegativeBignum;
   function Decimal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Decimal"));
   end Decimal;
   function Bigfloat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Bigfloat"));
   end Bigfloat;
   function COSE_Encrypt0 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "COSE_Encrypt0"));
   end COSE_Encrypt0;
   function COSE_Mac0 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "COSE_Mac0"));
   end COSE_Mac0;
   function COSE_Sign1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "COSE_Sign1"));
   end COSE_Sign1;
   function ExpectedBase64url return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExpectedBase64url"));
   end ExpectedBase64url;
   function ExpectedBase64 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExpectedBase64"));
   end ExpectedBase64;
   function ExpectedBase16 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExpectedBase16"));
   end ExpectedBase16;
   function EncodedCbor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EncodedCbor"));
   end EncodedCbor;
   function Url return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Url"));
   end Url;
   function Base64url return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Base64url"));
   end Base64url;
   function Base64 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Base64"));
   end Base64;
   function RegularExpression return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RegularExpression"));
   end RegularExpression;
   function MimeMessage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MimeMessage"));
   end MimeMessage;
   function Uuid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Uuid"));
   end Uuid;
   function COSE_Encrypt return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "COSE_Encrypt"));
   end COSE_Encrypt;
   function COSE_Mac return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "COSE_Mac"));
   end COSE_Mac;
   function COSE_Sign return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "COSE_Sign"));
   end COSE_Sign;
   function Signature return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborKnownTags");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborKnownTags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Signature"));
   end Signature;
end QtAda6.QtCore.QCborKnownTags;
