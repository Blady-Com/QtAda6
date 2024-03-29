-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpalette.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtGui.QPalette.ColorGroup;
limited with QtAda6.QtGui.QPalette.ColorRole;
limited with QtAda6.QtGui.QColor;
package QtAda6.QtGui.QPalette is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   type UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is new Any;
   type UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create
     (button_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class;
   function Create
     (button_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      window_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class;
   function Create
     (palette_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor) return Class;
   function Create
     (windowText_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      button_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      light_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      dark_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      mid_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      bright_text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      base_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      window_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
      return Class;
   function Create
     (windowText_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      window_P     : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      light_P      : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      dark_P       : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      mid_P        : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      text_P       : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      base_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; ds_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; ds_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function alternateBase (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function base (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function brightText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function brush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) return access QtAda6.QtGui.QBrush.Inst'Class;
   function brush
     (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class)
      return access QtAda6.QtGui.QBrush.Inst'Class;
   function button (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function buttonText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function cacheKey (self : access Inst) return int;
   function color
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class;
   function color
     (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function currentColorGroup (self : access Inst) return access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
   function dark (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function highlight (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function highlightedText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function isBrushSet
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) return bool;
   function isCopyOf
     (self : access Inst; p_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
      return bool;
   function isEqual
     (self  : access Inst; cr1_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr2_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class) return bool;
   function light (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function link (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function linkVisited (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function mid (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function midlight (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function placeholderText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function resolve
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
      return access QtAda6.QtGui.QPalette.Inst'Class;
   function resolveMask (self : access Inst) return int;
   procedure setBrush
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setColor
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setColor
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setColorGroup
     (self          : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      windowText_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      button_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      light_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      dark_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      mid_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      bright_text_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      base_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      window_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setCurrentColorGroup (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class);
   procedure setResolveMask (self : access Inst; mask_P : int);
   function shadow (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   procedure swap
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   function text (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function toolTipBase (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function toolTipText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function windowText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
end QtAda6.QtGui.QPalette;
