-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsondocument.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QJsonArray;
limited with QtAda6.QtCore.QJsonValue;
limited with QtAda6.QtCore.QJsonParseError;
limited with QtAda6.QtCore.QJsonDocument.JsonFormat;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QJsonDocument is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type DICT_str_QtAda6_QtCore_QJsonValue is record
      C0 : str;
      C1 : access QtAda6.QtCore.QJsonValue.Inst'Class;
   end record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class;
   function Create (object_P : DICT_str_QtAda6_QtCore_QJsonValue) return Class;
   function Create (other_P : access QtAda6.QtCore.QJsonDocument.Inst'Class) return Class;
   procedure U_copy_U;
   function array_K (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class;
   function fromJson
     (json_P : UNION_QtAda6_QtCore_QByteArray_bytes; error_P : access QtAda6.QtCore.QJsonParseError.Inst'Class := null)
      return access QtAda6.QtCore.QJsonDocument.Inst'Class;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QJsonDocument.Inst'Class;
   function isArray (self : access Inst) return bool;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isObject (self : access Inst) return bool;
   function object (self : access Inst) return DICT_str_QtAda6_QtCore_QJsonValue;
   procedure setArray (self : access Inst; array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class);
   procedure setObject (self : access Inst; object_P : DICT_str_QtAda6_QtCore_QJsonValue);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QJsonDocument.Inst'Class);
   function toJson
     (self : access Inst; format_P : access QtAda6.QtCore.QJsonDocument.JsonFormat.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toVariant (self : access Inst) return Any;
end QtAda6.QtCore.QJsonDocument;
