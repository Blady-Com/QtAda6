-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qbackingstore.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QWindow;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtCore.QSize;
package QtAda6.QtGui.QBackingStore is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function Create (window_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class;
   procedure beginPaint
     (self    : access Inst;
      arg_1_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect);
   procedure endPaint (self : access Inst);
   procedure flush
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect;
      window_P : access QtAda6.QtGui.QWindow.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null);
   function hasStaticContents (self : access Inst) return bool;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   procedure resize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   function scroll
     (self   : access Inst;
      area_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect; dx_P : int;
      dy_P   : int) return bool;
   procedure setStaticContents
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function staticContents (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
end QtAda6.QtGui.QBackingStore;
