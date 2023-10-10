-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpagesize.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPageSize.PageSizeId;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QPageSize.SizeMatchPolicy;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QPageSize.Unit;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
package QtAda6.QtGui.QPageSize is
   type Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize is access Any;
   type Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (other_P : Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize) return Class;
   function Create (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return Class;
   function Create
     (pointSize_P   : access QtAda6.QtCore.QSize.Inst'Class; name_P : str;
      matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class) return Class;
   function Create
     (size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class;
      name_P : str; matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class) return Class;
   procedure U_copy_U;
   function definitionSize
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function definitionSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function definitionUnits
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class)
      return access QtAda6.QtGui.QPageSize.Unit.Inst'Class;
   function definitionUnits (self : access Inst) return access QtAda6.QtGui.QPageSize.Unit.Inst'Class;
   function id_F
     (pointSize_P   : access QtAda6.QtCore.QSize.Inst'Class;
      matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class)
      return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class;
   function id_F (self : access Inst) return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class;
   function id_F
     (size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class;
      matchPolicy_P : access QtAda6.QtGui.QPageSize.SizeMatchPolicy.Inst'Class)
      return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class;
   function id_F (windowsId_P : int) return access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class;
   function isEquivalentTo
     (self : access Inst; other_P : Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize)
      return bool;
   function isValid (self : access Inst) return bool;
   function key (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return str;
   function key (self : access Inst) return str;
   function name (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return str;
   function name (self : access Inst) return str;
   function rect
     (self : access Inst; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function rectPixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function rectPoints (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function size_F
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class;
      units_P      : access QtAda6.QtGui.QPageSize.Unit.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function size_F
     (self : access Inst; units_P : access QtAda6.QtGui.QPageSize.Unit.Inst'Class)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function sizePixels
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class; resolution_P : int)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function sizePixels (self : access Inst; resolution_P : int) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizePoints
     (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizePoints (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure swap
     (self : access Inst; other_P : Union_QtAda6_QtGui_QPageSize_QtAda6_QtGui_QPageSize_PageSizeId_QtAda6_QtCore_QSize);
   function windowsId (pageSizeId_P : access QtAda6.QtGui.QPageSize.PageSizeId.Inst'Class) return int;
   function windowsId (self : access Inst) return int;
end QtAda6.QtGui.QPageSize;
