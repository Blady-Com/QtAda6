-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpen.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.PenStyle;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.PenCapStyle;
limited with QtAda6.QtCore.Qt.PenJoinStyle;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.QDataStream;
package QtAda6.QtGui.QPen is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_float is array (Positive range <>) of float;
   type SEQUENCE_float is array (Positive range <>) of float;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) return Class;
   function Create
     (brush_P : access QtAda6.QtGui.QBrush.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create
     (brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create
     (brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create
     (brush_P : access QtAda6.QtGui.QColor.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create
     (brush_P : access QtAda6.QtGui.QGradient.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create
     (brush_P : access QtAda6.QtGui.QImage.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create
     (brush_P : access QtAda6.QtGui.QPixmap.Inst'Class; width_P : float;
      s_P     : access QtAda6.QtCore.Qt.PenStyle.Inst'Class     := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class;
   function Create (color_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create (color_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create (color_P : Any) return Class;
   function Create (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (color_P : str) return Class;
   function Create (color_P : int) return Class;
   function Create (pen_P : access QtAda6.QtGui.QPen.Inst'Class) return Class;
-- function Create(pen_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) return Class;
-- function Create(pen_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function capStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class;
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function dashOffset (self : access Inst) return float;
   function dashPattern (self : access Inst) return LIST_float;
   function isCosmetic (self : access Inst) return bool;
   function isSolid (self : access Inst) return bool;
   function joinStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class;
   function miterLimit (self : access Inst) return float;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setCapStyle (self : access Inst; pcs_P : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class);
   procedure setColor (self : access Inst; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setColor (self : access Inst; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setColor (self : access Inst; color_P : Any);
   procedure setColor (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setColor (self : access Inst; color_P : str);
   procedure setColor (self : access Inst; color_P : int);
   procedure setCosmetic (self : access Inst; cosmetic_P : bool);
   procedure setDashOffset (self : access Inst; doffset_P : float);
   procedure setDashPattern (self : access Inst; pattern_P : SEQUENCE_float);
   procedure setJoinStyle (self : access Inst; pcs_P : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class);
   procedure setMiterLimit (self : access Inst; limit_P : float);
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class);
   procedure setWidth (self : access Inst; width_P : int);
   procedure setWidthF (self : access Inst; width_P : float);
   function style (self : access Inst) return access QtAda6.QtCore.Qt.PenStyle.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPen.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QColor.Inst'Class);
   function width (self : access Inst) return int;
   function widthF (self : access Inst) return float;
end QtAda6.QtGui.QPen;
