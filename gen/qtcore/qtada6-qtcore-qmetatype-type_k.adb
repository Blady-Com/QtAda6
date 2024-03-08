-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetatype-type_k.adb
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
package body QtAda6.QtCore.QMetaType.Type_K is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function UnknownType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnknownType"));
   end UnknownType;
   function Bool return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bool"));
   end Bool;
   function FirstCoreType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FirstCoreType"));
   end FirstCoreType;
   function Int return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Int"));
   end Int;
   function UInt return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UInt"));
   end UInt;
   function LongLong return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LongLong"));
   end LongLong;
   function ULongLong return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ULongLong"));
   end ULongLong;
   function Double return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Double"));
   end Double;
   function QReal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QReal"));
   end QReal;
   function QChar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QChar"));
   end QChar;
   function QVariantMap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVariantMap"));
   end QVariantMap;
   function QVariantList return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVariantList"));
   end QVariantList;
   function QString return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QString"));
   end QString;
   function QStringList return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QStringList"));
   end QStringList;
   function QByteArray return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QByteArray"));
   end QByteArray;
   function QBitArray return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QBitArray"));
   end QBitArray;
   function QDate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QDate"));
   end QDate;
   function QTime return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QTime"));
   end QTime;
   function QDateTime return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QDateTime"));
   end QDateTime;
   function QUrl return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QUrl"));
   end QUrl;
   function QLocale return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QLocale"));
   end QLocale;
   function QRect return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QRect"));
   end QRect;
   function QRectF return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QRectF"));
   end QRectF;
   function QSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QSize"));
   end QSize;
   function QSizeF return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QSizeF"));
   end QSizeF;
   function QLine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QLine"));
   end QLine;
   function QLineF return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QLineF"));
   end QLineF;
   function QPoint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPoint"));
   end QPoint;
   function QPointF return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPointF"));
   end QPointF;
   function QVariantHash return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVariantHash"));
   end QVariantHash;
   function QEasingCurve return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QEasingCurve"));
   end QEasingCurve;
   function QUuid return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QUuid"));
   end QUuid;
   function VoidStar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "VoidStar"));
   end VoidStar;
   function Long return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Long"));
   end Long;
   function Short return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Short"));
   end Short;
   function Char return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Char"));
   end Char;
   function ULong return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ULong"));
   end ULong;
   function UShort return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UShort"));
   end UShort;
   function UChar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UChar"));
   end UChar;
   function Float return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Float"));
   end Float;
   function QObjectStar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QObjectStar"));
   end QObjectStar;
   function SChar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SChar"));
   end SChar;
   function QVariant return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVariant"));
   end QVariant;
   function QModelIndex return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QModelIndex"));
   end QModelIndex;
   function Void return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Void"));
   end Void;
   function QRegularExpression return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QRegularExpression"));
   end QRegularExpression;
   function QJsonValue return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QJsonValue"));
   end QJsonValue;
   function QJsonObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QJsonObject"));
   end QJsonObject;
   function QJsonArray return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QJsonArray"));
   end QJsonArray;
   function QJsonDocument return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QJsonDocument"));
   end QJsonDocument;
   function QByteArrayList return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QByteArrayList"));
   end QByteArrayList;
   function QPersistentModelIndex return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPersistentModelIndex"));
   end QPersistentModelIndex;
   function Nullptr return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nullptr"));
   end Nullptr;
   function QCborSimpleType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QCborSimpleType"));
   end QCborSimpleType;
   function QCborValue return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QCborValue"));
   end QCborValue;
   function QCborArray return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QCborArray"));
   end QCborArray;
   function QCborMap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QCborMap"));
   end QCborMap;
   function Char16 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Char16"));
   end Char16;
   function Char32 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Char32"));
   end Char32;
   function QVariantPair return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVariantPair"));
   end QVariantPair;
   function Float16 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Float16"));
   end Float16;
   function LastCoreType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastCoreType"));
   end LastCoreType;
   function FirstGuiType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FirstGuiType"));
   end FirstGuiType;
   function QFont return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QFont"));
   end QFont;
   function QPixmap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPixmap"));
   end QPixmap;
   function QBrush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QBrush"));
   end QBrush;
   function QColor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QColor"));
   end QColor;
   function QPalette return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPalette"));
   end QPalette;
   function QIcon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QIcon"));
   end QIcon;
   function QImage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QImage"));
   end QImage;
   function QPolygon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPolygon"));
   end QPolygon;
   function QRegion return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QRegion"));
   end QRegion;
   function QBitmap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QBitmap"));
   end QBitmap;
   function QCursor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QCursor"));
   end QCursor;
   function QKeySequence return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QKeySequence"));
   end QKeySequence;
   function QPen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPen"));
   end QPen;
   function QTextLength return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QTextLength"));
   end QTextLength;
   function QTextFormat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QTextFormat"));
   end QTextFormat;
   function QTransform return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QTransform"));
   end QTransform;
   function QMatrix4x4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QMatrix4x4"));
   end QMatrix4x4;
   function QVector2D return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVector2D"));
   end QVector2D;
   function QVector3D return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVector3D"));
   end QVector3D;
   function QVector4D return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QVector4D"));
   end QVector4D;
   function QQuaternion return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QQuaternion"));
   end QQuaternion;
   function QPolygonF return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QPolygonF"));
   end QPolygonF;
   function LastGuiType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastGuiType"));
   end LastGuiType;
   function QColorSpace return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QColorSpace"));
   end QColorSpace;
   function FirstWidgetsType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FirstWidgetsType"));
   end FirstWidgetsType;
   function HighestInternalId return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HighestInternalId"));
   end HighestInternalId;
   function LastWidgetsType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastWidgetsType"));
   end LastWidgetsType;
   function QSizePolicy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QSizePolicy"));
   end QSizePolicy;
   function User return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "User"));
   end User;
end QtAda6.QtCore.QMetaType.Type_K;
