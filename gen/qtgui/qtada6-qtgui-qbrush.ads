-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qbrush.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
   type Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     access Any;
   type Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type Union_QtAda6_QtGui_QGradient_QtAda6_QtGui_QGradient_Preset is access Any;
   type Union_QtAda6_QtGui_QImage_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
      return Class;
   function Create (bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) return Class;
   function Create
     (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; bs_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class)
      return Class;
   function Create
     (color_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class;
   function Create
     (color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      bs_P    : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) return Class;
   function Create
     (color_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class;
   function Create (gradient_P : Union_QtAda6_QtGui_QGradient_QtAda6_QtGui_QGradient_Preset) return Class;
   function Create (image_P : Union_QtAda6_QtGui_QImage_str) return Class;
   function Create (pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class;
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
   procedure setColor
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setTexture (self : access Inst; pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure setTextureImage (self : access Inst; image_P : Union_QtAda6_QtGui_QImage_str);
   procedure setTransform (self : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class);
   function style (self : access Inst) return access QtAda6.QtCore.Qt.BrushStyle.Inst'Class;
   procedure swap
     (self    : access Inst;
      other_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   function texture (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function textureImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
end QtAda6.QtGui.QBrush;
