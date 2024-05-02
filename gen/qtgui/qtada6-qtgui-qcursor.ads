-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qcursor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtCore.Qt.CursorShape;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.Qt.ReturnByValueConstant;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QScreen;
package QtAda6.QtGui.QCursor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (bitmap_P : access QtAda6.QtGui.QBitmap.Inst'Class; mask_P : access QtAda6.QtGui.QBitmap.Inst'Class;
      hotX_P   : int := 0; hotY_P : int := 0) return Class;
   function Create
     (bitmap_P : access QtAda6.QtGui.QBitmap.Inst'Class; mask_P : str; hotX_P : int := 0; hotY_P : int := 0)
      return Class;
   function Create
     (bitmap_P : str; mask_P : access QtAda6.QtGui.QBitmap.Inst'Class; hotX_P : int := 0; hotY_P : int := 0)
      return Class;
   function Create (bitmap_P : str; mask_P : str; hotX_P : int := 0; hotY_P : int := 0) return Class;
   function Create (cursor_P : access QtAda6.QtGui.QCursor.Inst'Class) return Class;
   function Create (cursor_P : access QtAda6.QtCore.Qt.CursorShape.Inst'Class) return Class;
   function Create (cursor_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create
     (pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; hotX_P : int := 0; hotY_P : int := 0) return Class;
   function Create
     (pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; hotX_P : int := 0; hotY_P : int := 0) return Class;
   function Create (pixmap_P : str; hotX_P : int := 0; hotY_P : int := 0) return Class;
-- function Create(shape_P : access QtAda6.QtCore.Qt.CursorShape.Inst'Class) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; outS_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; inS_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function bitmap (self : access Inst) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function bitmap
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.ReturnByValueConstant.Inst'Class)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function hotSpot (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mask (self : access Inst) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function mask
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.ReturnByValueConstant.Inst'Class)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function pos return access QtAda6.QtCore.QPoint.Inst'Class;
   function pos (screen_P : access QtAda6.QtGui.QScreen.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure setPos (p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPos (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPos (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; x_P : int; y_P : int);
   procedure setPos (x_P : int; y_P : int);
   procedure setShape (self : access Inst; newShape_P : access QtAda6.QtCore.Qt.CursorShape.Inst'Class);
   function shape (self : access Inst) return access QtAda6.QtCore.Qt.CursorShape.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QCursor.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.Qt.CursorShape.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPixmap.Inst'Class);
end QtAda6.QtGui.QCursor;
