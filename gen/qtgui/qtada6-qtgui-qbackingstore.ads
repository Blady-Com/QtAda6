-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qbackingstore.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type Optional_QtAda6_QtGui_QWindow is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (window_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class;
   procedure beginPaint
     (self    : access Inst;
      arg_1_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure endPaint (self : access Inst);
   procedure flush
     (self     : access Inst;
      region_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect;
      window_P : Optional_QtAda6_QtGui_QWindow; offset_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function hasStaticContents (self : access Inst) return bool;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   procedure resize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   function scroll
     (self   : access Inst;
      area_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect; dx_P : int;
      dy_P   : int) return bool;
   procedure setStaticContents
     (self     : access Inst;
      region_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function staticContents (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
end QtAda6.QtGui.QBackingStore;
