-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlabel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QMovie;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QPicture;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.TextFormat;
limited with QtAda6.QtCore.Qt.TextInteractionFlag;
with QtAda6.QtWidgets.QFrame;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QLabel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QFrame.Inst with null record;
   procedure Finalize (Self : in out Class);
   function linkActivated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- linkActivated(QString)
   function linkHovered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- linkHovered(QString)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function Create
     (text_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null;
      f_P    : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function buddy (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   procedure contextMenuEvent (self : access Inst; ev_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; ev_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; ev_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function hasScaledContents (self : access Inst) return bool;
   function hasSelectedText (self : access Inst) return bool;
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   function indent (self : access Inst) return int;
   procedure keyPressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function margin (self : access Inst) return int;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function movie (self : access Inst) return access QtAda6.QtGui.QMovie.Inst'Class;
   function openExternalLinks (self : access Inst) return bool;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function picture (self : access Inst) return access QtAda6.QtGui.QPicture.Inst'Class;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedText (self : access Inst) return str;
   function selectionStart (self : access Inst) return int;
   procedure setAlignment (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setBuddy (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setIndent (self : access Inst; arg_1_P : int);
   procedure setMargin (self : access Inst; arg_1_P : int);
   procedure setMovie (self : access Inst; movie_P : access QtAda6.QtGui.QMovie.Inst'Class);
   procedure setNum (self : access Inst; arg_1_P : float);
   procedure setNum (self : access Inst; arg_1_P : int);
   procedure setOpenExternalLinks (self : access Inst; open_P : bool);
   procedure setPicture (self : access Inst; arg_1_P : access QtAda6.QtGui.QPicture.Inst'Class);
   procedure setPicture (self : access Inst; arg_1_P : int);
   procedure setPixmap (self : access Inst; arg_1_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setPixmap (self : access Inst; arg_1_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setPixmap (self : access Inst; arg_1_P : str);
   procedure setScaledContents (self : access Inst; arg_1_P : bool);
   procedure setSelection (self : access Inst; arg_1_P : int; arg_2_P : int);
   procedure setText (self : access Inst; arg_1_P : str);
   procedure setTextFormat (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class);
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class);
   procedure setWordWrap (self : access Inst; on_P : bool);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function text (self : access Inst) return str;
   function textFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class;
   function wordWrap (self : access Inst) return bool;
end QtAda6.QtWidgets.QLabel;
