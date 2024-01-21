-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetatype-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QMetaType.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function UnknownType return Class;-- 0x0
   function Bool return Class;-- 0x1
   function FirstCoreType return Class;-- 0x1
   function Int return Class;-- 0x2
   function UInt return Class;-- 0x3
   function LongLong return Class;-- 0x4
   function ULongLong return Class;-- 0x5
   function Double return Class;-- 0x6
   function QReal return Class;-- 0x6
   function QChar return Class;-- 0x7
   function QVariantMap return Class;-- 0x8
   function QVariantList return Class;-- 0x9
   function QString return Class;-- 0xa
   function QStringList return Class;-- 0xb
   function QByteArray return Class;-- 0xc
   function QBitArray return Class;-- 0xd
   function QDate return Class;-- 0xe
   function QTime return Class;-- 0xf
   function QDateTime return Class;-- 0x10
   function QUrl return Class;-- 0x11
   function QLocale return Class;-- 0x12
   function QRect return Class;-- 0x13
   function QRectF return Class;-- 0x14
   function QSize return Class;-- 0x15
   function QSizeF return Class;-- 0x16
   function QLine return Class;-- 0x17
   function QLineF return Class;-- 0x18
   function QPoint return Class;-- 0x19
   function QPointF return Class;-- 0x1a
   function QVariantHash return Class;-- 0x1c
   function QEasingCurve return Class;-- 0x1d
   function QUuid return Class;-- 0x1e
   function VoidStar return Class;-- 0x1f
   function Long return Class;-- 0x20
   function Short return Class;-- 0x21
   function Char return Class;-- 0x22
   function ULong return Class;-- 0x23
   function UShort return Class;-- 0x24
   function UChar return Class;-- 0x25
   function Float return Class;-- 0x26
   function QObjectStar return Class;-- 0x27
   function SChar return Class;-- 0x28
   function QVariant return Class;-- 0x29
   function QModelIndex return Class;-- 0x2a
   function Void return Class;-- 0x2b
   function QRegularExpression return Class;-- 0x2c
   function QJsonValue return Class;-- 0x2d
   function QJsonObject return Class;-- 0x2e
   function QJsonArray return Class;-- 0x2f
   function QJsonDocument return Class;-- 0x30
   function QByteArrayList return Class;-- 0x31
   function QPersistentModelIndex return Class;-- 0x32
   function Nullptr return Class;-- 0x33
   function QCborSimpleType return Class;-- 0x34
   function QCborValue return Class;-- 0x35
   function QCborArray return Class;-- 0x36
   function QCborMap return Class;-- 0x37
   function Char16 return Class;-- 0x38
   function Char32 return Class;-- 0x39
   function QVariantPair return Class;-- 0x3a
   function Float16 return Class;-- 0x3f
   function LastCoreType return Class;-- 0x3f
   function FirstGuiType return Class;-- 0x1000
   function QFont return Class;-- 0x1000
   function QPixmap return Class;-- 0x1001
   function QBrush return Class;-- 0x1002
   function QColor return Class;-- 0x1003
   function QPalette return Class;-- 0x1004
   function QIcon return Class;-- 0x1005
   function QImage return Class;-- 0x1006
   function QPolygon return Class;-- 0x1007
   function QRegion return Class;-- 0x1008
   function QBitmap return Class;-- 0x1009
   function QCursor return Class;-- 0x100a
   function QKeySequence return Class;-- 0x100b
   function QPen return Class;-- 0x100c
   function QTextLength return Class;-- 0x100d
   function QTextFormat return Class;-- 0x100e
   function QTransform return Class;-- 0x1010
   function QMatrix4x4 return Class;-- 0x1011
   function QVector2D return Class;-- 0x1012
   function QVector3D return Class;-- 0x1013
   function QVector4D return Class;-- 0x1014
   function QQuaternion return Class;-- 0x1015
   function QPolygonF return Class;-- 0x1016
   function LastGuiType return Class;-- 0x1017
   function QColorSpace return Class;-- 0x1017
   function FirstWidgetsType return Class;-- 0x2000
   function HighestInternalId return Class;-- 0x2000
   function LastWidgetsType return Class;-- 0x2000
   function QSizePolicy return Class;-- 0x2000
   function User return Class;-- 0x10000
end QtAda6.QtCore.QMetaType.Type_K;
