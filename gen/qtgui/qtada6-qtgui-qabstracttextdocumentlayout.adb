-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qabstracttextdocumentlayout.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QTextDocument;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QTextInlineObject;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtGui.QTextFrame;
with QtAda6.QtGui.QTextObjectInterface;
with QtAda6.QtCore.Qt.HitTestAccuracy;
with QtAda6.QtGui.QPaintDevice;
package body QtAda6.QtGui.QAbstractTextDocumentLayout is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractTextDocumentLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, doc_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function anchorAt
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchorAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end anchorAt;
   function blockBoundingRect
     (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockBoundingRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, block_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockBoundingRect;
   function blockWithMarkerAt
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtGui.QTextBlock.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextBlock.Class := new QtAda6.QtGui.QTextBlock.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "blockWithMarkerAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end blockWithMarkerAt;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextDocument.Class := new QtAda6.QtGui.QTextDocument.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "document");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end document;
   procedure documentChanged (self : access Inst; from_U_P : int; charsRemoved_P : int; charsAdded_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "documentChanged");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (charsRemoved_P));
      Tuple_SetItem (Args, 2, Long_FromLong (charsAdded_P));
      Result := Object_CallObject (Method, Args, True);
   end documentChanged;
   function documentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "documentSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end documentSize;
   procedure draw
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      context_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "draw");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, context_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end draw;
   procedure drawInlineObject
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P   : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      object_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawInlineObject");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, object_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Long_FromLong (posInDocument_P));
      Tuple_SetItem (Args, 4, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end drawInlineObject;
   function format (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "format");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   function formatAt
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtGui.QTextFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFormat.Class := new QtAda6.QtGui.QTextFormat.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "formatAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end formatAt;
   function formatIndex (self : access Inst; pos_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "formatIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end formatIndex;
   function frameBoundingRect
     (self : access Inst; frame_P : access QtAda6.QtGui.QTextFrame.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "frameBoundingRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, frame_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameBoundingRect;
   function handlerForObject
     (self : access Inst; objectType_P : int) return access QtAda6.QtGui.QTextObjectInterface.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextObjectInterface.Class := new QtAda6.QtGui.QTextObjectInterface.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "handlerForObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (objectType_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end handlerForObject;
   function hitTest
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      accuracy_P : access QtAda6.QtCore.Qt.HitTestAccuracy.Inst'Class) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hitTest");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, accuracy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hitTest;
   function imageAt
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "imageAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end imageAt;
   function pageCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pageCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pageCount;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPaintDevice.Class := new QtAda6.QtGui.QPaintDevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintDevice");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintDevice;
   procedure positionInlineObject
     (self     : access Inst; item_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positionInlineObject");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (posInDocument_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end positionInlineObject;
   procedure registerHandler
     (self : access Inst; objectType_P : int; component_P : access QtAda6.QtCore.QObject.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerHandler");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (objectType_P));
      Tuple_SetItem (Args, 1, component_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end registerHandler;
   procedure resizeInlineObject
     (self     : access Inst; item_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeInlineObject");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (posInDocument_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end resizeInlineObject;
   procedure setPaintDevice (self : access Inst; device_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPaintDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPaintDevice;
   procedure unregisterHandler (self : access Inst; objectType_P : int; component_P : Optional_QtAda6_QtCore_QObject) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unregisterHandler");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (objectType_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end unregisterHandler;
end QtAda6.QtGui.QAbstractTextDocumentLayout;
