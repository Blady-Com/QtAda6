-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qlabel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QFrame;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QContextMenuEvent;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QMovie;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QPicture;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.Qt.TextFormat;
with QtAda6.QtCore.Qt.TextInteractionFlag;
package body QtAda6.QtWidgets.QLabel is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function linkActivated (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "linkActivated"));
   end linkActivated;
   function linkHovered (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "linkHovered"));
   end linkHovered;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLabel");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (text_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null;
      f_P    : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, List, Dict  : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLabel");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function buddy (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "buddy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buddy;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end changeEvent;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure contextMenuEvent (self : access Inst; ev_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end contextMenuEvent;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   procedure focusInEvent (self : access Inst; ev_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   procedure focusOutEvent (self : access Inst; ev_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusOutEvent;
   function hasScaledContents (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasScaledContents");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasScaledContents;
   function hasSelectedText (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasSelectedText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasSelectedText;
   function heightForWidth (self : access Inst; arg_1_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "heightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end heightForWidth;
   function indent (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indent;
   procedure keyPressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   function margin (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "margin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end margin;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
   procedure mouseMoveEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseReleaseEvent;
   function movie (self : access Inst) return access QtAda6.QtGui.QMovie.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMovie.Class := new QtAda6.QtGui.QMovie.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "movie");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end movie;
   function openExternalLinks (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "openExternalLinks");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end openExternalLinks;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paintEvent;
   function picture (self : access Inst) return access QtAda6.QtGui.QPicture.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPicture.Class := new QtAda6.QtGui.QPicture.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "picture");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end picture;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   function selectedText (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end selectedText;
   function selectionStart (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionStart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end selectionStart;
   procedure setAlignment (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setAlignment;
   procedure setBuddy (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBuddy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setBuddy;
   procedure setIndent (self : access Inst; arg_1_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setIndent;
   procedure setMargin (self : access Inst; arg_1_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setMargin;
   procedure setMovie (self : access Inst; movie_P : access QtAda6.QtGui.QMovie.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMovie");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if movie_P /= null then movie_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMovie;
   procedure setNum (self : access Inst; arg_1_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setNum;
   procedure setNum (self : access Inst; arg_1_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setNum;
   procedure setOpenExternalLinks (self : access Inst; open_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOpenExternalLinks");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (open_P));
      Result := Object_CallObject (Method, Args, True);
   end setOpenExternalLinks;
   procedure setPicture (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QPictureint) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPicture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPicture;
   procedure setPixmap (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPixmap;
   procedure setScaledContents (self : access Inst; arg_1_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScaledContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setScaledContents;
   procedure setSelection (self : access Inst; arg_1_P : int; arg_2_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
   end setSelection;
   procedure setText (self : access Inst; arg_1_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setText;
   procedure setTextFormat (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextFormat;
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextInteractionFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextInteractionFlags;
   procedure setWordWrap (self : access Inst; on_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWordWrap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setWordWrap;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function text (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.TextFormat.Class := new QtAda6.QtCore.Qt.TextFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textFormat;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextInteractionFlag.Class := new QtAda6.QtCore.Qt.TextInteractionFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textInteractionFlags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textInteractionFlags;
   function wordWrap (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wordWrap");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wordWrap;
end QtAda6.QtWidgets.QLabel;
