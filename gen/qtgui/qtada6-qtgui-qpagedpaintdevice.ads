-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpagedpaintdevice.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPageLayout;
limited with QtAda6.QtGui.QPageRanges;
limited with QtAda6.QtCore.QMarginsF;
limited with QtAda6.QtGui.QPageLayout.Unit;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtGui.QPageLayout.Orientation;
limited with QtAda6.QtGui.QPageSize;
limited with QtAda6.QtGui.QPageSize.PageSizeId;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QPaintDevice;
package QtAda6.QtGui.QPagedPaintDevice is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPaintDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function newPage (self : access Inst) return bool;
   function pageLayout (self : access Inst) return access QtAda6.QtGui.QPageLayout.Inst'Class;
   function pageRanges (self : access Inst) return access QtAda6.QtGui.QPageRanges.Inst'Class;
   function setPageLayout (self : access Inst; pageLayout_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return bool;
   function setPageMargins
     (self    : access Inst; margins_P : access QtAda6.QtCore.QMarginsF.Inst'Class;
      units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class := null) return bool;
   function setPageMargins
     (self    : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class;
      units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class := null) return bool;
   function setPageOrientation
     (self : access Inst; orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class) return bool;
   procedure setPageRanges (self : access Inst; ranges_P : access QtAda6.QtGui.QPageRanges.Inst'Class);
   function setPageSize (self : access Inst; pageSize_P : access QtAda6.QtGui.QPageSize.Inst'Class) return bool;
   function setPageSize
     (self : access Inst; pageSize_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return bool;
   function setPageSize (self : access Inst; pageSize_P : access QtAda6.QtCore.QSize.Inst'Class) return bool;
end QtAda6.QtGui.QPagedPaintDevice;
