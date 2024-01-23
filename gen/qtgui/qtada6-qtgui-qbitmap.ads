-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qbitmap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QImage.Format;
limited with QtAda6.QtCore.Qt.ImageConversionFlag;
limited with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QPixmap;
package QtAda6.QtGui.QBitmap is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPixmap.Inst with null record;
   type UNION_QtAda6_QtGui_QBitmapstr is new Any;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   type UNION_QtAda6_QtGui_QImagestr is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QBitmap_P : UNION_QtAda6_QtGui_QBitmapstr) return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function Create (arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return Class;
   function Create (fileName_P : str; format_P : bytes := "") return Class;
   function Create (w_P : int; h_P : int) return Class;
   procedure U_copy_U;
   procedure clear (self : access Inst);
   function fromData
     (size_P       : access QtAda6.QtCore.QSize.Inst'Class; bits_P : bytes;
      monoFormat_P : access QtAda6.QtGui.QImage.Format.Inst'Class := null)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function fromImage
     (image_P : UNION_QtAda6_QtGui_QImagestr; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function fromPixmap
     (pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return access QtAda6.QtGui.QBitmap.Inst'Class;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QBitmapstr);
   function transformed
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
end QtAda6.QtGui.QBitmap;
