-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qplaintextedit.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QContextMenuEvent;
with QtAda6.QtWidgets.QMenu;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtGui.QTextCursor;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QDragEnterEvent;
with QtAda6.QtGui.QDragLeaveEvent;
with QtAda6.QtGui.QDragMoveEvent;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtWidgets.QTextEdit.ExtraSelection;
with QtAda6.QtGui.QTextDocument.FindFlag;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtWidgets.QPlainTextEdit.LineWrapMode;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QTextCursor.MoveOperation;
with QtAda6.QtGui.QTextCursor.MoveMode;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QPagedPaintDevice;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.Qt.TextInteractionFlag;
with QtAda6.QtGui.QTextOption.WrapMode;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtWidgets.QPlainTextEdit is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function blockCountChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "blockCountChanged"));
   end blockCountChanged;
   function copyAvailable (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "copyAvailable"));
   end copyAvailable;
   function cursorPositionChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cursorPositionChanged"));
   end cursorPositionChanged;
   function modificationChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "modificationChanged"));
   end modificationChanged;
   function redoAvailable (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "redoAvailable"));
   end redoAvailable;
   function selectionChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "selectionChanged"));
   end selectionChanged;
   function textChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "textChanged"));
   end textChanged;
   function undoAvailable (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "undoAvailable"));
   end undoAvailable;
   function updateRequest (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "updateRequest"));
   end updateRequest;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QPlainTextEdit");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (text_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QPlainTextEdit");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function anchorAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchorAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end anchorAt;
   procedure appendHtml (self : access Inst; html_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendHtml");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (html_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end appendHtml;
   procedure appendPlainText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end appendPlainText;
   function backgroundVisible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "backgroundVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end backgroundVisible;
   function blockBoundingGeometry
     (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockBoundingGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if block_P /= null then block_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockBoundingGeometry;
   function blockBoundingRect
     (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockBoundingRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if block_P /= null then block_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockBoundingRect;
   function blockCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end blockCount;
   function canInsertFromMimeData (self : access Inst; source_P : access QtAda6.QtCore.QMimeData.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canInsertFromMimeData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if source_P /= null then source_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canInsertFromMimeData;
   function canPaste (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canPaste");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canPaste;
   procedure centerCursor (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerCursor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end centerCursor;
   function centerOnScroll (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerOnScroll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end centerOnScroll;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   function contentOffset (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contentOffset");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contentOffset;
   procedure contextMenuEvent (self : access Inst; e_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end contextMenuEvent;
   procedure copy (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end copy;
   function createMimeDataFromSelection (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "createMimeDataFromSelection");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createMimeDataFromSelection;
   function createStandardContextMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMenu.Class := new QtAda6.QtWidgets.QMenu.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "createStandardContextMenu");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createStandardContextMenu;
   function createStandardContextMenu
     (self : access Inst; position_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QMenu.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMenu.Class := new QtAda6.QtWidgets.QMenu.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createStandardContextMenu");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createStandardContextMenu;
   function currentCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentCharFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentCharFormat;
   function cursorForPosition
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cursorForPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursorForPosition;
   function cursorRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cursorRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursorRect;
   function cursorRect
     (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cursorRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursorRect;
   function cursorWidth (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cursorWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end cursorWidth;
   procedure cut (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cut");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cut;
   procedure doSetTextCursor (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doSetTextCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doSetTextCursor;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "document");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end document;
   function documentTitle (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "documentTitle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end documentTitle;
   procedure dragEnterEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragEnterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragEnterEvent;
   procedure dragLeaveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragLeaveEvent;
   procedure dragMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragMoveEvent;
   procedure dropEvent (self : access Inst; e_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dropEvent;
   procedure ensureCursorVisible (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureCursorVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end ensureCursorVisible;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function extraSelections (self : access Inst) return LIST_QtAda6_QtWidgets_QTextEdit_ExtraSelection is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "extraSelections");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end extraSelections;
   function find
     (self : access Inst; exp_P : str; options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (exp_P));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end find;
   function find
     (self      : access Inst; exp_P : UNION_QtAda6_QtCore_QRegularExpression_str;
      options_P : access QtAda6.QtGui.QTextDocument.FindFlag.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "find");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if exp_P /= null then exp_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end find;
   function firstVisibleBlock (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "firstVisibleBlock");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end firstVisibleBlock;
   procedure focusInEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusInEvent;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   procedure focusOutEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusOutEvent;
   function getPaintContext
     (self : access Inst) return access QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Class :=
        new QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "getPaintContext");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getPaintContext;
   procedure inputMethodEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end inputMethodEvent;
   function inputMethodQuery
     (self : access Inst; property_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if property_P /= null then property_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end inputMethodQuery;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if argument_P /= null then argument_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end inputMethodQuery;
   procedure insertFromMimeData (self : access Inst; source_P : access QtAda6.QtCore.QMimeData.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertFromMimeData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if source_P /= null then source_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertFromMimeData;
   procedure insertPlainText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertPlainText;
   function isReadOnly (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isReadOnly");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isReadOnly;
   function isUndoRedoEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUndoRedoEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUndoRedoEnabled;
   procedure keyPressEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyPressEvent;
   procedure keyReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyReleaseEvent;
   function lineWrapMode_F (self : access Inst) return access QtAda6.QtWidgets.QPlainTextEdit.LineWrapMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QPlainTextEdit.LineWrapMode.Class :=
        new QtAda6.QtWidgets.QPlainTextEdit.LineWrapMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lineWrapMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lineWrapMode_F;
   function loadResource (self : access Inst; type_K_P : int; name_P : UNION_QtAda6_QtCore_QUrl_str) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadResource");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, (if name_P /= null then name_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end loadResource;
   function maximumBlockCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumBlockCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maximumBlockCount;
   procedure mergeCurrentCharFormat (self : access Inst; modifier_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mergeCurrentCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if modifier_P /= null then modifier_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mergeCurrentCharFormat;
   procedure mouseDoubleClickEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseDoubleClickEvent;
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseReleaseEvent;
   procedure moveCursor
     (self   : access Inst; operation_P : access QtAda6.QtGui.QTextCursor.MoveOperation.Inst'Class;
      mode_P : access QtAda6.QtGui.QTextCursor.MoveMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if operation_P /= null then operation_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end moveCursor;
   function overwriteMode (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overwriteMode");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end overwriteMode;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   procedure paste (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paste");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paste;
   function placeholderText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "placeholderText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end placeholderText;
   procedure print_U (self : access Inst; printer_P : access QtAda6.QtGui.QPagedPaintDevice.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "print_");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if printer_P /= null then printer_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end print_U;
   procedure redo (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end redo;
   procedure resizeEvent (self : access Inst; e_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollContentsBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollContentsBy;
   procedure selectAll (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectAll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectAll;
   procedure setBackgroundVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackgroundVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackgroundVisible;
   procedure setCenterOnScroll (self : access Inst; enabled_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenterOnScroll");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenterOnScroll;
   procedure setCurrentCharFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentCharFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentCharFormat;
   procedure setCursorWidth (self : access Inst; width_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursorWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCursorWidth;
   procedure setDocument (self : access Inst; document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocument");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if document_P /= null then document_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDocument;
   procedure setDocumentTitle (self : access Inst; title_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocumentTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDocumentTitle;
   procedure setExtraSelections (self : access Inst; selections_P : SEQUENCE_QtAda6_QtWidgets_QTextEdit_ExtraSelection)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExtraSelections");
      List   := List_New (selections_P'Length);
      for ind in selections_P'Range loop
         List_SetItem
           (List, ssize_t (ind - selections_P'First),
            (if selections_P (ind) /= null then selections_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExtraSelections;
   procedure setLineWrapMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QPlainTextEdit.LineWrapMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLineWrapMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLineWrapMode;
   procedure setMaximumBlockCount (self : access Inst; maximum_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumBlockCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maximum_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximumBlockCount;
   procedure setOverwriteMode (self : access Inst; overwrite_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOverwriteMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (overwrite_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOverwriteMode;
   procedure setPlaceholderText (self : access Inst; placeholderText_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPlaceholderText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (placeholderText_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPlaceholderText;
   procedure setPlainText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPlainText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPlainText;
   procedure setReadOnly (self : access Inst; ro_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setReadOnly");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (ro_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setReadOnly;
   procedure setTabChangesFocus (self : access Inst; b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabChangesFocus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabChangesFocus;
   procedure setTabStopDistance (self : access Inst; distance_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabStopDistance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (distance_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabStopDistance;
   procedure setTextCursor (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextCursor;
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextInteractionFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextInteractionFlags;
   procedure setUndoRedoEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUndoRedoEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUndoRedoEnabled;
   procedure setWordWrapMode (self : access Inst; policy_P : access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWordWrapMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWordWrapMode;
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showEvent;
   function tabChangesFocus (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabChangesFocus");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end tabChangesFocus;
   function tabStopDistance (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabStopDistance");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end tabStopDistance;
   function textCursor (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextCursor.Class := new QtAda6.QtGui.QTextCursor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textCursor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textCursor;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextInteractionFlag.Class := new QtAda6.QtCore.Qt.TextInteractionFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textInteractionFlags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textInteractionFlags;
   procedure timerEvent (self : access Inst; e_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end timerEvent;
   function toPlainText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPlainText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toPlainText;
   procedure undo (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "undo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end undo;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wheelEvent;
   function wordWrapMode (self : access Inst) return access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextOption.WrapMode.Class := new QtAda6.QtGui.QTextOption.WrapMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "wordWrapMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end wordWrapMode;
   procedure zoomIn (self : access Inst; range_K_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "zoomIn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if range_K_P /= 0 then
         Dict_SetItemString (Dict, "range", Long_FromLong (range_K_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end zoomIn;
   procedure zoomInF (self : access Inst; range_K_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "zoomInF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (range_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end zoomInF;
   procedure zoomOut (self : access Inst; range_K_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "zoomOut");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if range_K_P /= 0 then
         Dict_SetItemString (Dict, "range", Long_FromLong (range_K_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end zoomOut;
end QtAda6.QtWidgets.QPlainTextEdit;
