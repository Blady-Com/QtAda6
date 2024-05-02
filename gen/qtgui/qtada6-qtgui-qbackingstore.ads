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
   procedure Finalize (Self : in out Class);
   function Create (window_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class;
   procedure beginPaint (self : access Inst; arg_1_P : access QtAda6.QtGui.QRegion.Inst'Class);
   procedure beginPaint (self : access Inst; arg_1_P : access QtAda6.QtGui.QBitmap.Inst'Class);
   procedure beginPaint (self : access Inst; arg_1_P : access QtAda6.QtGui.QPolygon.Inst'Class);
   procedure beginPaint (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure endPaint (self : access Inst);
   procedure flush
     (self     : access Inst; region_P : access QtAda6.QtGui.QRegion.Inst'Class;
      window_P : access QtAda6.QtGui.QWindow.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null);
   procedure flush
     (self     : access Inst; region_P : access QtAda6.QtGui.QBitmap.Inst'Class;
      window_P : access QtAda6.QtGui.QWindow.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null);
   procedure flush
     (self     : access Inst; region_P : access QtAda6.QtGui.QPolygon.Inst'Class;
      window_P : access QtAda6.QtGui.QWindow.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null);
   procedure flush
     (self     : access Inst; region_P : access QtAda6.QtCore.QRect.Inst'Class;
      window_P : access QtAda6.QtGui.QWindow.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null);
   function hasStaticContents (self : access Inst) return bool;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   procedure resize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   function scroll
     (self : access Inst; area_P : access QtAda6.QtGui.QRegion.Inst'Class; dx_P : int; dy_P : int) return bool;
   function scroll
     (self : access Inst; area_P : access QtAda6.QtGui.QBitmap.Inst'Class; dx_P : int; dy_P : int) return bool;
   function scroll
     (self : access Inst; area_P : access QtAda6.QtGui.QPolygon.Inst'Class; dx_P : int; dy_P : int) return bool;
   function scroll
     (self : access Inst; area_P : access QtAda6.QtCore.QRect.Inst'Class; dx_P : int; dy_P : int) return bool;
   procedure setStaticContents (self : access Inst; region_P : access QtAda6.QtGui.QRegion.Inst'Class);
   procedure setStaticContents (self : access Inst; region_P : access QtAda6.QtGui.QBitmap.Inst'Class);
   procedure setStaticContents (self : access Inst; region_P : access QtAda6.QtGui.QPolygon.Inst'Class);
   procedure setStaticContents (self : access Inst; region_P : access QtAda6.QtCore.QRect.Inst'Class);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function staticContents (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
end QtAda6.QtGui.QBackingStore;
