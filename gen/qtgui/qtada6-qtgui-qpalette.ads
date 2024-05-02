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
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QPalette.ColorGroup;
limited with QtAda6.QtGui.QPalette.ColorRole;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
package QtAda6.QtGui.QPalette is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (button_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create (button_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create (button_P : Any) return Class;
-- function Create(button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (button_P : str) return Class;
   function Create (button_P : int) return Class;
   function Create
     (button_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create
     (button_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create (button_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : Any) return Class;
   function Create
     (button_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
      return Class;
   function Create (button_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : str) return Class;
   function Create (button_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : int) return Class;
   function Create
     (button_P : access QtAda6.QtGui.QRgba64.Inst'Class; window_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create
     (button_P : access QtAda6.QtGui.QRgba64.Inst'Class; window_P : access QtAda6.QtGui.QRgba64.Inst'Class)
      return Class;
   function Create (button_P : access QtAda6.QtGui.QRgba64.Inst'Class; window_P : Any) return Class;
   function Create
     (button_P : access QtAda6.QtGui.QRgba64.Inst'Class; window_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
      return Class;
   function Create (button_P : access QtAda6.QtGui.QRgba64.Inst'Class; window_P : str) return Class;
   function Create (button_P : access QtAda6.QtGui.QRgba64.Inst'Class; window_P : int) return Class;
   function Create (button_P : Any; window_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create (button_P : Any; window_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create (button_P : Any; window_P : Any) return Class;
   function Create (button_P : Any; window_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (button_P : Any; window_P : str) return Class;
   function Create (button_P : Any; window_P : int) return Class;
   function Create
     (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; window_P : access QtAda6.QtGui.QColor.Inst'Class)
      return Class;
   function Create
     (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; window_P : access QtAda6.QtGui.QRgba64.Inst'Class)
      return Class;
   function Create (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; window_P : Any) return Class;
   function Create
     (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      window_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; window_P : str) return Class;
   function Create (button_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; window_P : int) return Class;
   function Create (button_P : str; window_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create (button_P : str; window_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create (button_P : str; window_P : Any) return Class;
   function Create (button_P : str; window_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (button_P : str; window_P : str) return Class;
   function Create (button_P : str; window_P : int) return Class;
   function Create (button_P : int; window_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create (button_P : int; window_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create (button_P : int; window_P : Any) return Class;
   function Create (button_P : int; window_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (button_P : int; window_P : str) return Class;
   function Create (button_P : int; window_P : int) return Class;
   function Create (palette_P : access QtAda6.QtGui.QPalette.Inst'Class) return Class;
-- function Create(palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
-- function Create(palette_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create
     (windowText_P  : access QtAda6.QtGui.QBrush.Inst'Class; button_P : access QtAda6.QtGui.QBrush.Inst'Class;
      light_P       : access QtAda6.QtGui.QBrush.Inst'Class; dark_P : access QtAda6.QtGui.QBrush.Inst'Class;
      mid_P         : access QtAda6.QtGui.QBrush.Inst'Class; text_P : access QtAda6.QtGui.QBrush.Inst'Class;
      bright_text_P : access QtAda6.QtGui.QBrush.Inst'Class; base_P : access QtAda6.QtGui.QBrush.Inst'Class;
      window_P      : access QtAda6.QtGui.QBrush.Inst'Class) return Class;
   function Create
     (windowText_P : access QtAda6.QtGui.QColor.Inst'Class; window_P : access QtAda6.QtGui.QColor.Inst'Class;
      light_P      : access QtAda6.QtGui.QColor.Inst'Class; dark_P : access QtAda6.QtGui.QColor.Inst'Class;
      mid_P        : access QtAda6.QtGui.QColor.Inst'Class; text_P : access QtAda6.QtGui.QColor.Inst'Class;
      base_P       : access QtAda6.QtGui.QColor.Inst'Class) return Class;
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
   function isCopyOf (self : access Inst; p_P : access QtAda6.QtGui.QPalette.Inst'Class) return bool;
   function isCopyOf (self : access Inst; p_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return bool;
   function isCopyOf (self : access Inst; p_P : access QtAda6.QtGui.QColor.Inst'Class) return bool;
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
     (self : access Inst; other_P : access QtAda6.QtGui.QPalette.Inst'Class)
      return access QtAda6.QtGui.QPalette.Inst'Class;
   function resolve
     (self : access Inst; other_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
      return access QtAda6.QtGui.QPalette.Inst'Class;
   function resolve
     (self : access Inst; other_P : access QtAda6.QtGui.QColor.Inst'Class)
      return access QtAda6.QtGui.QPalette.Inst'Class;
   function resolveMask (self : access Inst) return int;
   procedure setBrush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; brush_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setBrush
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBrush
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setBrush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; brush_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBrush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; brush_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure setBrush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; brush_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setBrush
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; brush_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setBrush
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      brush_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setColor
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setColor
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setColor
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : Any);
   procedure setColor
     (self    : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P    : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setColor
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : str);
   procedure setColor
     (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : int);
   procedure setColor
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setColor
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setColor (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : Any);
   procedure setColor
     (self    : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
      color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setColor (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : str);
   procedure setColor (self : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class; color_P : int);
   procedure setColorGroup
     (self          : access Inst; cr_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class;
      windowText_P  : access QtAda6.QtGui.QBrush.Inst'Class; button_P : access QtAda6.QtGui.QBrush.Inst'Class;
      light_P       : access QtAda6.QtGui.QBrush.Inst'Class; dark_P : access QtAda6.QtGui.QBrush.Inst'Class;
      mid_P         : access QtAda6.QtGui.QBrush.Inst'Class; text_P : access QtAda6.QtGui.QBrush.Inst'Class;
      bright_text_P : access QtAda6.QtGui.QBrush.Inst'Class; base_P : access QtAda6.QtGui.QBrush.Inst'Class;
      window_P      : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setCurrentColorGroup (self : access Inst; cg_P : access QtAda6.QtGui.QPalette.ColorGroup.Inst'Class);
   procedure setResolveMask (self : access Inst; mask_P : int);
   function shadow (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPalette.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QColor.Inst'Class);
   function text (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function toolTipBase (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function toolTipText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function windowText (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
end QtAda6.QtGui.QPalette;
