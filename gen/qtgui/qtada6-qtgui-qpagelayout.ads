-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpagelayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPageSize;
limited with QtAda6.QtGui.QPageSize.PageSizeId;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QPageLayout.Orientation;
limited with QtAda6.QtCore.QMarginsF;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtGui.QPageLayout.Unit;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPageLayout.Mode;
package QtAda6.QtGui.QPageLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QPageSizeQtAda6_QtGui_QPageSize_PageSizeIdQtAda6_QtCore_QSize is new Any;
   type UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return Class;
   function Create
     (pageSize_P    : UNION_QtAda6_QtGui_QPageSizeQtAda6_QtGui_QPageSize_PageSizeIdQtAda6_QtCore_QSize;
      orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class;
      margins_P     : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins;
      units_P       : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class     := null;
      minMargins_P  : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins := null) return Class;
   procedure U_copy_U;
   function fullRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function fullRect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function fullRectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function fullRectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function isEquivalentTo (self : access Inst; other_P : access QtAda6.QtGui.QPageLayout.Inst'Class) return bool;
   function isValid (self : access Inst) return bool;
   function margins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class;
   function margins
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QMarginsF.Inst'Class;
   function marginsPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function marginsPoints (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function maximumMargins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class;
   function minimumMargins (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class;
   function mode_F (self : access Inst) return access QtAda6.QtGui.QPageLayout.Mode.Inst'Class;
   function orientation_F (self : access Inst) return access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class;
   function pageSize (self : access Inst) return access QtAda6.QtGui.QPageSize.Inst'Class;
   function paintRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function paintRect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function paintRectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function paintRectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function setBottomMargin (self : access Inst; bottomMargin_P : float) return bool;
   function setLeftMargin (self : access Inst; leftMargin_P : float) return bool;
   function setMargins
     (self : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins) return bool;
   procedure setMinimumMargins (self : access Inst; minMargins_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins);
   procedure setMode (self : access Inst; mode_P : access QtAda6.QtGui.QPageLayout.Mode.Inst'Class);
   procedure setOrientation
     (self : access Inst; orientation_P : access QtAda6.QtGui.QPageLayout.Orientation.Inst'Class);
   procedure setPageSize
     (self : access Inst; pageSize_P : UNION_QtAda6_QtGui_QPageSizeQtAda6_QtGui_QPageSize_PageSizeIdQtAda6_QtCore_QSize;
      minMargins_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins := null);
   function setRightMargin (self : access Inst; rightMargin_P : float) return bool;
   function setTopMargin (self : access Inst; topMargin_P : float) return bool;
   procedure setUnits (self : access Inst; units_P : access QtAda6.QtGui.QPageLayout.Unit.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPageLayout.Inst'Class);
   function units (self : access Inst) return access QtAda6.QtGui.QPageLayout.Unit.Inst'Class;
end QtAda6.QtGui.QPageLayout;
