-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdatastream.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
limited with QtAda6.QtCore.QCborArray;
limited with QtAda6.QtCore.QCborMap;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QJsonArray;
limited with QtAda6.QtCore.QJsonDocument;
limited with QtAda6.QtCore.QLine;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QTime;
limited with QtAda6.QtCore.QUuid;
limited with QtAda6.QtCore.QJsonValue;
limited with QtAda6.QtCore.QBitArray;
limited with QtAda6.QtCore.QCborValue;
limited with QtAda6.QtCore.QCborKnownTags;
limited with QtAda6.QtCore.QCborSimpleType;
limited with QtAda6.QtCore.QCborTag;
limited with QtAda6.QtCore.QCborValue.Type_K;
limited with QtAda6.QtCore.QEasingCurve;
limited with QtAda6.QtCore.QEasingCurve.Type_K;
limited with QtAda6.QtCore.QJsonValue.Type_K;
limited with QtAda6.QtCore.QLineF;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.QMarginsF;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QUrl;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.Key;
limited with QtAda6.QtCore.QRegularExpression;
limited with QtAda6.QtCore.QTimeZone;
limited with QtAda6.QtCore.QVersionNumber;
limited with QtAda6.QtCore.QDataStream.ByteOrder;
limited with QtAda6.QtCore.QDataStream.FloatingPointPrecision;
limited with QtAda6.QtCore.QDataStream.Status;
with QtAda6.QtCore.QIODeviceBase;
package QtAda6.QtCore.QDataStream is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QIODeviceBase.Inst with null record;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   type DICT_strQtAda6_QtCore_QJsonValue is new Any;
   type UNION_QtAda6_QtCore_QBitArrayint is new Any;
   type UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint is
     new Any;
   type UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K is new Any;
   type UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint is
     new Any;
   type UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine is new Any;
   type UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language is new Any;
   type UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins is new Any;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint is new Any;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize is new Any;
   type UNION_QtAda6_QtCore_QUrlstr is new Any;
   type UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key is new Any;
   type UNION_QtAda6_QtCore_QRegularExpressionstr is new Any;
   type TUPLE is new Any;
   type LIST_str is array (Positive range <>) of str;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
   function Create (arg_1_P : UNION_QtAda6_QtCore_QByteArraybytes) return Class;
   function Create
     (arg_1_P : UNION_QtAda6_QtCore_QByteArraybytes;
      flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return Class;
   procedure U_lshift_U (self : access Inst; arg_1_P : str);
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QDate.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QJsonDocument.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QLine.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QSize.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QTime.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QUuid.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U (self : access Inst; arg_2_P : str) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : DICT_strQtAda6_QtCore_QJsonValue)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
-- function U_lshift_U(self : access Inst;arg_2_P : str) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QBitArrayint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self    : access Inst;
      arg_2_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self    : access Inst;
      arg_2_P : UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QUrlstr) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self          : access Inst;
      combination_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U (self : access Inst; i_P : int) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U (self : access Inst; p_P : Any) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; re_P : UNION_QtAda6_QtCore_QRegularExpressionstr)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; tz_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_lshift_U
     (self : access Inst; version_P : access QtAda6.QtCore.QVersionNumber.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QDate.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QJsonDocument.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QLine.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QSize.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QTime.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : access QtAda6.QtCore.QUuid.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U (self : access Inst; arg_2_P : str) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : DICT_strQtAda6_QtCore_QJsonValue)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
-- function U_rshift_U(self : access Inst;arg_2_P : str) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QBitArrayint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QByteArraybytes)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self    : access Inst;
      arg_2_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self    : access Inst;
      arg_2_P : UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QUrlstr) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self          : access Inst;
      combination_P : UNION_QtAda6_QtCore_QKeyCombinationQtAda6_QtCore_Qt_KeyboardModifierQtAda6_QtCore_Qt_Key)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U (self : access Inst; i_P : int) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U (self : access Inst; p_P : Any) return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; re_P : UNION_QtAda6_QtCore_QRegularExpressionstr)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; tz_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; version_P : access QtAda6.QtCore.QVersionNumber.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   procedure abortTransaction (self : access Inst);
   function atEnd (self : access Inst) return bool;
   function byteOrder_F (self : access Inst) return access QtAda6.QtCore.QDataStream.ByteOrder.Inst'Class;
   function commitTransaction (self : access Inst) return bool;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function floatingPointPrecision_F
     (self : access Inst) return access QtAda6.QtCore.QDataStream.FloatingPointPrecision.Inst'Class;
   function isDeviceTransactionStarted (self : access Inst) return bool;
   function readBool (self : access Inst) return bool;
   function readBytes (self : access Inst; len_P : int) return TUPLE;
   function readDouble (self : access Inst) return float;
   function readFloat (self : access Inst) return float;
   function readInt16 (self : access Inst) return int;
   function readInt32 (self : access Inst) return int;
   function readInt64 (self : access Inst) return int;
   function readInt8 (self : access Inst) return int;
   function readQChar (self : access Inst) return str;
   function readQString (self : access Inst) return str;
   function readQStringList (self : access Inst) return LIST_str;
   function readQVariant (self : access Inst) return Any;
   function readRawData (self : access Inst; len_P : int) return int;
   function readString (self : access Inst) return str;
   function readUInt16 (self : access Inst) return int;
   function readUInt32 (self : access Inst) return int;
   function readUInt64 (self : access Inst) return int;
   function readUInt8 (self : access Inst) return int;
   procedure resetStatus (self : access Inst);
   procedure rollbackTransaction (self : access Inst);
   procedure setByteOrder (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.ByteOrder.Inst'Class);
   procedure setDevice (self : access Inst; arg_1_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFloatingPointPrecision
     (self : access Inst; precision_P : access QtAda6.QtCore.QDataStream.FloatingPointPrecision.Inst'Class);
   procedure setStatus (self : access Inst; status_P : access QtAda6.QtCore.QDataStream.Status.Inst'Class);
   procedure setVersion (self : access Inst; arg_1_P : int);
   function skipRawData (self : access Inst; len_P : int) return int;
   procedure startTransaction (self : access Inst);
   function status_F (self : access Inst) return access QtAda6.QtCore.QDataStream.Status.Inst'Class;
   function version_F (self : access Inst) return int;
   procedure writeBool (self : access Inst; arg_1_P : bool);
   function writeBytes (self : access Inst; arg_1_P : bytes) return access QtAda6.QtCore.QDataStream.Inst'Class;
   procedure writeDouble (self : access Inst; arg_1_P : float);
   procedure writeFloat (self : access Inst; arg_1_P : float);
   procedure writeInt16 (self : access Inst; arg_1_P : int);
   procedure writeInt32 (self : access Inst; arg_1_P : int);
   procedure writeInt64 (self : access Inst; arg_1_P : int);
   procedure writeInt8 (self : access Inst; arg_1_P : int);
   procedure writeQChar (self : access Inst; arg_1_P : str);
   procedure writeQString (self : access Inst; arg_1_P : str);
   procedure writeQStringList (self : access Inst; arg_1_P : SEQUENCE_str);
   procedure writeQVariant (self : access Inst; arg_1_P : Any);
   function writeRawData (self : access Inst; arg_1_P : bytes) return int;
   procedure writeString (self : access Inst; arg_1_P : str);
   procedure writeUInt16 (self : access Inst; arg_1_P : int);
   procedure writeUInt32 (self : access Inst; arg_1_P : int);
   procedure writeUInt64 (self : access Inst; arg_1_P : int);
   procedure writeUInt8 (self : access Inst; arg_1_P : int);
end QtAda6.QtCore.QDataStream;
