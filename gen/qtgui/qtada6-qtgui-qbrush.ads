-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qbrush.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtGui.QGradient.Preset;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QTransform;
package QtAda6.QtGui.QBrush is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (brush_P : access QtAda6.QtGui.QBrush.Inst'Class) return Class;
   function Create (brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) return Class;
   function Create (brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (brush_P : access QtAda6.QtGui.QColor.Inst'Class) return Class;
   function Create (brush_P : access QtAda6.QtGui.QGradient.Inst'Class) return Class;
   function Create (brush_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (brush_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
-- function Create(bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) return Class;
   function Create
     (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      bs_P    : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class;
   function Create
     (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class)
      return Class;
   function Create
     (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class)
      return Class;
   function Create (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; pixmap_P : str) return Class;
   function Create
     (color_P : access QtAda6.QtGui.QColor.Inst'Class; bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null)
      return Class;
   function Create
     (color_P : access QtAda6.QtGui.QRgba64.Inst'Class; bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null)
      return Class;
   function Create (color_P : Any; bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class;
-- function Create(color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class;
   function Create (color_P : str; bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class;
   function Create (color_P : int; bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class := null) return Class;
   function Create
     (color_P : access QtAda6.QtGui.QColor.Inst'Class; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create
     (color_P : access QtAda6.QtGui.QColor.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (color_P : access QtAda6.QtGui.QColor.Inst'Class; pixmap_P : str) return Class;
   function Create
     (color_P : access QtAda6.QtGui.QRgba64.Inst'Class; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create
     (color_P : access QtAda6.QtGui.QRgba64.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (color_P : access QtAda6.QtGui.QRgba64.Inst'Class; pixmap_P : str) return Class;
   function Create (color_P : Any; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create (color_P : Any; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (color_P : Any; pixmap_P : str) return Class;
-- function Create(color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
-- function Create(color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
-- function Create(color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;pixmap_P : str) return Class;
   function Create (color_P : str; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create (color_P : str; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (color_P : str; pixmap_P : str) return Class;
   function Create (color_P : int; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create (color_P : int; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (color_P : int; pixmap_P : str) return Class;
-- function Create(gradient_P : access QtAda6.QtGui.QGradient.Inst'Class) return Class;
   function Create (gradient_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class) return Class;
-- function Create(image_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (image_P : str) return Class;
-- function Create(pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
-- function Create(pixmap_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
-- function Create(pixmap_P : str) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function gradient (self : access Inst) return access QtAda6.QtGui.QGradient.Inst'Class;
   function isOpaque (self : access Inst) return bool;
   procedure setColor (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setColor (self : access Inst; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setColor (self : access Inst; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setColor (self : access Inst; color_P : Any);
-- procedure setColor(self : access Inst;color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setColor (self : access Inst; color_P : str);
   procedure setColor (self : access Inst; color_P : int);
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setTexture (self : access Inst; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setTexture (self : access Inst; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setTexture (self : access Inst; pixmap_P : str);
   procedure setTextureImage (self : access Inst; image_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setTextureImage (self : access Inst; image_P : str);
   procedure setTransform (self : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class);
   function style (self : access Inst) return access QtAda6.QtCore.Qt.BrushStyle.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   function texture (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function textureImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
end QtAda6.QtGui.QBrush;
