-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsplashscreen.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtGui.QScreen;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QSplashScreen is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   type UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint is new Any;
   procedure Finalize (Self : in out Class);
   function messageChanged (self : access Inst) return CLASSVAR_Signal;-- messageChanged(QString)
   function Create
     (pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class    := null) return Class;
   function Create
     (screen_P : access QtAda6.QtGui.QScreen.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class    := null) return Class;
   procedure clearMessage (self : access Inst);
   procedure drawContents (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure finish (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function message (self : access Inst) return str;
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setPixmap (self : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr);
   procedure showMessage
     (self    : access Inst; message_P : str; alignment_P : int := 0;
      color_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint := null);
end QtAda6.QtWidgets.QSplashScreen;
