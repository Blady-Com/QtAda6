-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetatype-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtCore.QMetaType.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   UnknownType           : QMetaType.Type_K.Class;-- 0x0
   Bool                  : QMetaType.Type_K.Class;-- 0x1
   FirstCoreType         : QMetaType.Type_K.Class;-- 0x1
   Int                   : QMetaType.Type_K.Class;-- 0x2
   UInt                  : QMetaType.Type_K.Class;-- 0x3
   LongLong              : QMetaType.Type_K.Class;-- 0x4
   ULongLong             : QMetaType.Type_K.Class;-- 0x5
   Double                : QMetaType.Type_K.Class;-- 0x6
   QReal                 : QMetaType.Type_K.Class;-- 0x6
   QChar                 : QMetaType.Type_K.Class;-- 0x7
   QVariantMap           : QMetaType.Type_K.Class;-- 0x8
   QVariantList          : QMetaType.Type_K.Class;-- 0x9
   QString               : QMetaType.Type_K.Class;-- 0xa
   QStringList           : QMetaType.Type_K.Class;-- 0xb
   QByteArray            : QMetaType.Type_K.Class;-- 0xc
   QBitArray             : QMetaType.Type_K.Class;-- 0xd
   QDate                 : QMetaType.Type_K.Class;-- 0xe
   QTime                 : QMetaType.Type_K.Class;-- 0xf
   QDateTime             : QMetaType.Type_K.Class;-- 0x10
   QUrl                  : QMetaType.Type_K.Class;-- 0x11
   QLocale               : QMetaType.Type_K.Class;-- 0x12
   QRect                 : QMetaType.Type_K.Class;-- 0x13
   QRectF                : QMetaType.Type_K.Class;-- 0x14
   QSize                 : QMetaType.Type_K.Class;-- 0x15
   QSizeF                : QMetaType.Type_K.Class;-- 0x16
   QLine                 : QMetaType.Type_K.Class;-- 0x17
   QLineF                : QMetaType.Type_K.Class;-- 0x18
   QPoint                : QMetaType.Type_K.Class;-- 0x19
   QPointF               : QMetaType.Type_K.Class;-- 0x1a
   QVariantHash          : QMetaType.Type_K.Class;-- 0x1c
   QEasingCurve          : QMetaType.Type_K.Class;-- 0x1d
   QUuid                 : QMetaType.Type_K.Class;-- 0x1e
   VoidStar              : QMetaType.Type_K.Class;-- 0x1f
   Long                  : QMetaType.Type_K.Class;-- 0x20
   Short                 : QMetaType.Type_K.Class;-- 0x21
   Char                  : QMetaType.Type_K.Class;-- 0x22
   ULong                 : QMetaType.Type_K.Class;-- 0x23
   UShort                : QMetaType.Type_K.Class;-- 0x24
   UChar                 : QMetaType.Type_K.Class;-- 0x25
   Float                 : QMetaType.Type_K.Class;-- 0x26
   QObjectStar           : QMetaType.Type_K.Class;-- 0x27
   SChar                 : QMetaType.Type_K.Class;-- 0x28
   QVariant              : QMetaType.Type_K.Class;-- 0x29
   QModelIndex           : QMetaType.Type_K.Class;-- 0x2a
   Void                  : QMetaType.Type_K.Class;-- 0x2b
   QRegularExpression    : QMetaType.Type_K.Class;-- 0x2c
   QJsonValue            : QMetaType.Type_K.Class;-- 0x2d
   QJsonObject           : QMetaType.Type_K.Class;-- 0x2e
   QJsonArray            : QMetaType.Type_K.Class;-- 0x2f
   QJsonDocument         : QMetaType.Type_K.Class;-- 0x30
   QByteArrayList        : QMetaType.Type_K.Class;-- 0x31
   QPersistentModelIndex : QMetaType.Type_K.Class;-- 0x32
   Nullptr               : QMetaType.Type_K.Class;-- 0x33
   QCborSimpleType       : QMetaType.Type_K.Class;-- 0x34
   QCborValue            : QMetaType.Type_K.Class;-- 0x35
   QCborArray            : QMetaType.Type_K.Class;-- 0x36
   QCborMap              : QMetaType.Type_K.Class;-- 0x37
   Char16                : QMetaType.Type_K.Class;-- 0x38
   Char32                : QMetaType.Type_K.Class;-- 0x39
   QVariantPair          : QMetaType.Type_K.Class;-- 0x3a
   Float16               : QMetaType.Type_K.Class;-- 0x3f
   LastCoreType          : QMetaType.Type_K.Class;-- 0x3f
   FirstGuiType          : QMetaType.Type_K.Class;-- 0x1000
   QFont                 : QMetaType.Type_K.Class;-- 0x1000
   QPixmap               : QMetaType.Type_K.Class;-- 0x1001
   QBrush                : QMetaType.Type_K.Class;-- 0x1002
   QColor                : QMetaType.Type_K.Class;-- 0x1003
   QPalette              : QMetaType.Type_K.Class;-- 0x1004
   QIcon                 : QMetaType.Type_K.Class;-- 0x1005
   QImage                : QMetaType.Type_K.Class;-- 0x1006
   QPolygon              : QMetaType.Type_K.Class;-- 0x1007
   QRegion               : QMetaType.Type_K.Class;-- 0x1008
   QBitmap               : QMetaType.Type_K.Class;-- 0x1009
   QCursor               : QMetaType.Type_K.Class;-- 0x100a
   QKeySequence          : QMetaType.Type_K.Class;-- 0x100b
   QPen                  : QMetaType.Type_K.Class;-- 0x100c
   QTextLength           : QMetaType.Type_K.Class;-- 0x100d
   QTextFormat           : QMetaType.Type_K.Class;-- 0x100e
   QTransform            : QMetaType.Type_K.Class;-- 0x1010
   QMatrix4x4            : QMetaType.Type_K.Class;-- 0x1011
   QVector2D             : QMetaType.Type_K.Class;-- 0x1012
   QVector3D             : QMetaType.Type_K.Class;-- 0x1013
   QVector4D             : QMetaType.Type_K.Class;-- 0x1014
   QQuaternion           : QMetaType.Type_K.Class;-- 0x1015
   QPolygonF             : QMetaType.Type_K.Class;-- 0x1016
   LastGuiType           : QMetaType.Type_K.Class;-- 0x1017
   QColorSpace           : QMetaType.Type_K.Class;-- 0x1017
   FirstWidgetsType      : QMetaType.Type_K.Class;-- 0x2000
   HighestInternalId     : QMetaType.Type_K.Class;-- 0x2000
   LastWidgetsType       : QMetaType.Type_K.Class;-- 0x2000
   QSizePolicy           : QMetaType.Type_K.Class;-- 0x2000
   User                  : QMetaType.Type_K.Class;-- 0x10000
end QtAda6.QtCore.QMetaType.Type_K;
