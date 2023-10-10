-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qscreen.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.ScreenOrientation;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QScreen is
   type ClassVar_Signal is access Any;
   type List_QtAda6_QtGui_QScreen is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   availableGeometryChanged   : ClassVar_Signal;-- availableGeometryChanged(QRect)
   geometryChanged            : ClassVar_Signal;-- geometryChanged(QRect)
   logicalDotsPerInchChanged  : ClassVar_Signal;-- logicalDotsPerInchChanged(double)
   orientationChanged         : ClassVar_Signal;-- orientationChanged(Qt::ScreenOrientation)
   physicalDotsPerInchChanged : ClassVar_Signal;-- physicalDotsPerInchChanged(double)
   physicalSizeChanged        : ClassVar_Signal;-- physicalSizeChanged(QSizeF)
   primaryOrientationChanged  : ClassVar_Signal;-- primaryOrientationChanged(Qt::ScreenOrientation)
   refreshRateChanged         : ClassVar_Signal;-- refreshRateChanged(double)
   virtualGeometryChanged     : ClassVar_Signal;-- virtualGeometryChanged(QRect)
   function angleBetween
     (self : access Inst; a_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
      b_P  : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class) return int;
   function availableGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function availableSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function availableVirtualGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function availableVirtualSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function depth (self : access Inst) return int;
   function devicePixelRatio (self : access Inst) return float;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function grabWindow
     (self : access Inst; window_P : int; x_P : int; y_P : int; w_P : int; h_P : int)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function isLandscape
     (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class) return bool;
   function isPortrait
     (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class) return bool;
   function logicalDotsPerInch (self : access Inst) return float;
   function logicalDotsPerInchX (self : access Inst) return float;
   function logicalDotsPerInchY (self : access Inst) return float;
   function manufacturer (self : access Inst) return str;
   function mapBetween
     (self : access Inst; a_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
      b_P  : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class; rect_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function model (self : access Inst) return str;
   function name (self : access Inst) return str;
   function nativeOrientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
   function physicalDotsPerInch (self : access Inst) return float;
   function physicalDotsPerInchX (self : access Inst) return float;
   function physicalDotsPerInchY (self : access Inst) return float;
   function physicalSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function primaryOrientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
   function refreshRate (self : access Inst) return float;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int;
   function serialNumber (self : access Inst) return str;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function transformBetween
     (self : access Inst; a_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
      b_P  : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class; target_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function virtualGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function virtualSiblingAt
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QScreen.Inst'Class;
   function virtualSiblings (self : access Inst) return List_QtAda6_QtGui_QScreen;
   function virtualSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtGui.QScreen;
