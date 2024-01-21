-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborvalue.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCborArray;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QCborMap;
limited with QtAda6.QtCore.QCborKnownTags;
limited with QtAda6.QtCore.QCborSimpleType;
limited with QtAda6.QtCore.QCborTag;
limited with QtAda6.QtCore.QCborValue.Type_K;
limited with QtAda6.QtCore.QRegularExpression;
limited with QtAda6.QtCore.QUrl;
limited with QtAda6.QtCore.QUuid;
limited with QtAda6.QtCore.QCborParserError;
limited with QtAda6.QtCore.QCborStreamReader;
limited with QtAda6.QtCore.QJsonValue;
limited with QtAda6.QtCore.QJsonValue.Type_K;
limited with QtAda6.QtCore.QJsonArray;
limited with QtAda6.QtCore.QCborValue.EncodingOption;
limited with QtAda6.QtCore.QCborStreamWriter;
limited with QtAda6.QtCore.QCborValue.DiagnosticNotationOption;
package QtAda6.QtCore.QCborValue is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   type UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint is
     new Any;
   type UNION_QtAda6_QtCore_QRegularExpressionstr is new Any;
   type UNION_QtAda6_QtCore_QUrlstr is new Any;
   type UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint is
     new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (a_P : access QtAda6.QtCore.QCborArray.Inst'Class) return Class;
   function Create (b_U_P : bool) return Class;
   function Create (ba_P : UNION_QtAda6_QtCore_QByteArraybytes) return Class;
   function Create (dt_P : access QtAda6.QtCore.QDateTime.Inst'Class) return Class;
   function Create (i_P : int) return Class;
-- function Create(i_P : int) return Class;
   function Create (m_P : access QtAda6.QtCore.QCborMap.Inst'Class) return Class;
   function Create
     (other_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return Class;
   function Create (rx_P : UNION_QtAda6_QtCore_QRegularExpressionstr) return Class;
   function Create (s_P : str) return Class;
   function Create (s_P : bytes) return Class;
   function Create (st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return Class;
   function Create
     (t_U_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class;
      tv_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint :=
        null)
      return Class;
   function Create (t_U_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class) return Class;
   function Create
     (tag_P         : access QtAda6.QtCore.QCborTag.Inst'Class;
      taggedValue_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint :=
        null)
      return Class;
-- function Create(u_P : int) return Class;
   function Create (url_P : UNION_QtAda6_QtCore_QUrlstr) return Class;
   function Create (uuid_P : access QtAda6.QtCore.QUuid.Inst'Class) return Class;
   function Create (v_P : float) return Class;
   procedure U_copy_U;
   function compare
     (self    : access Inst;
      other_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return int;
   function fromCbor
     (ba_P : UNION_QtAda6_QtCore_QByteArraybytes; error_P : access QtAda6.QtCore.QCborParserError.Inst'Class := null)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromCbor
     (data_P : bytes; len_P : int; error_P : access QtAda6.QtCore.QCborParserError.Inst'Class := null)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromCbor
     (data_P : bytearray; len_P : int; error_P : access QtAda6.QtCore.QCborParserError.Inst'Class := null)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromCbor
     (reader_P : access QtAda6.QtCore.QCborStreamReader.Inst'Class) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromJsonValue
     (v_P : UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QCborValue.Inst'Class;
   function isArray (self : access Inst) return bool;
   function isBool (self : access Inst) return bool;
   function isByteArray (self : access Inst) return bool;
   function isContainer (self : access Inst) return bool;
   function isDateTime (self : access Inst) return bool;
   function isDouble (self : access Inst) return bool;
   function isFalse (self : access Inst) return bool;
   function isInteger (self : access Inst) return bool;
   function isInvalid (self : access Inst) return bool;
   function isMap (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isRegularExpression (self : access Inst) return bool;
   function isSimpleType (self : access Inst) return bool;
   function isSimpleType (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return bool;
   function isString (self : access Inst) return bool;
   function isTag (self : access Inst) return bool;
   function isTrue (self : access Inst) return bool;
   function isUndefined (self : access Inst) return bool;
   function isUrl (self : access Inst) return bool;
   function isUuid (self : access Inst) return bool;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint);
   function tag
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborTag.Inst'Class := null)
      return access QtAda6.QtCore.QCborTag.Inst'Class;
   function taggedValue
     (self           : access Inst;
      defaultValue_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint :=
        null)
      return access QtAda6.QtCore.QCborValue.Inst'Class;
   function toArray (self : access Inst) return access QtAda6.QtCore.QCborArray.Inst'Class;
   function toArray
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class;
   function toBool (self : access Inst; defaultValue_P : bool := False) return bool;
   function toByteArray
     (self : access Inst; defaultValue_P : UNION_QtAda6_QtCore_QByteArraybytes := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toCbor
     (self : access Inst; opt_P : access QtAda6.QtCore.QCborValue.EncodingOption.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure toCbor
     (self  : access Inst; writer_P : access QtAda6.QtCore.QCborStreamWriter.Inst'Class;
      opt_P : access QtAda6.QtCore.QCborValue.EncodingOption.Inst'Class := null);
   function toDateTime
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QDateTime.Inst'Class := null)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDiagnosticNotation
     (self : access Inst; opts_P : access QtAda6.QtCore.QCborValue.DiagnosticNotationOption.Inst'Class := null)
      return str;
   function toDouble (self : access Inst; defaultValue_P : float := 0.0) return float;
   function toInteger (self : access Inst; defaultValue_P : int := 0) return int;
   function toJsonValue (self : access Inst) return access QtAda6.QtCore.QJsonValue.Inst'Class;
   function toMap (self : access Inst) return access QtAda6.QtCore.QCborMap.Inst'Class;
   function toMap
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborMap.Inst'Class;
   function toRegularExpression
     (self : access Inst; defaultValue_P : UNION_QtAda6_QtCore_QRegularExpressionstr := null)
      return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   function toSimpleType
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class := null)
      return access QtAda6.QtCore.QCborSimpleType.Inst'Class;
   function toString (self : access Inst; defaultValue_P : str := "") return str;
   function toUrl
     (self : access Inst; defaultValue_P : UNION_QtAda6_QtCore_QUrlstr := null)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function toUuid
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QUuid.Inst'Class := null)
      return access QtAda6.QtCore.QUuid.Inst'Class;
   function toVariant (self : access Inst) return Any;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QCborValue.Type_K.Inst'Class;
end QtAda6.QtCore.QCborValue;
