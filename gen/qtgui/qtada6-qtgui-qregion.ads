-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qregion.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.FillRule;
limited with QtAda6.QtGui.QRegion.RegionType;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QTransform;
package QtAda6.QtGui.QRegion is
   type Union_QtAda6_QtGui_QBitmap_str is access Any;
   type Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (bitmap_P : Union_QtAda6_QtGui_QBitmap_str) return Class;
   function Create
     (pa_P       : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class) return Class;
   function Create
     (r_P : access QtAda6.QtCore.QRect.Inst'Class; t_P : access QtAda6.QtGui.QRegion.RegionType.Inst'Class)
      return Class;
   function Create
     (region_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return Class;
   function Create
     (x_P : int; y_P : int; w_P : int; h_P : int; t_P : access QtAda6.QtGui.QRegion.RegionType.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_add_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_and_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_and_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_iadd_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_ior_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_isub_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_ixor_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U
     (self : access Inst; m_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_or_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_sub_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function U_xor_U
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function begin_K (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function cbegin (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function cend (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function contains (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function contains (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return bool;
   function end_K (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function intersected
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class;
   function intersected
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function intersects (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return bool;
   function intersects
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect) return bool;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function rectCount (self : access Inst) return int;
   procedure setRects (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; num_P : int);
   function subtracted
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   procedure swap
     (self    : access Inst;
      other_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure translate (self : access Inst; dx_P : int; dy_P : int);
   procedure translate (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function translated (self : access Inst; dx_P : int; dy_P : int) return access QtAda6.QtGui.QRegion.Inst'Class;
   function translated
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class;
   function united
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class;
   function united
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function xored
     (self : access Inst;
      r_P  : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtGui.QRegion;
