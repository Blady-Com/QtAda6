-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qabstracttextdocumentlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QTextBlock;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext;
limited with QtAda6.QtGui.QTextInlineObject;
limited with QtAda6.QtGui.QTextFormat;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QTextFrame;
limited with QtAda6.QtGui.QTextObjectInterface;
limited with QtAda6.QtCore.Qt.HitTestAccuracy;
limited with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QAbstractTextDocumentLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function documentSizeChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- documentSizeChanged(QSizeF)
   function pageCountChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- pageCountChanged(int)
   function update (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- update()
   function updateBlock (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- updateBlock(QTextBlock)
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function anchorAt (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class) return str;
   function anchorAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return str;
   function anchorAt (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return str;
   function blockBoundingRect
     (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function blockWithMarkerAt
     (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function blockWithMarkerAt
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function blockWithMarkerAt
     (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   procedure documentChanged (self : access Inst; from_U_P : int; charsRemoved_P : int; charsAdded_P : int);
   function documentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure draw
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      context_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Inst'Class);
   procedure drawInlineObject
     (self            : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRectF.Inst'Class; object_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class;
      posInDocument_P : int; format_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   procedure drawInlineObject
     (self            : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; object_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class;
      posInDocument_P : int; format_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   function format (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function formatAt
     (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return access QtAda6.QtGui.QTextFormat.Inst'Class;
   function formatAt
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QTextFormat.Inst'Class;
   function formatAt
     (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtGui.QTextFormat.Inst'Class;
   function formatIndex (self : access Inst; pos_P : int) return int;
   function frameBoundingRect
     (self : access Inst; frame_P : access QtAda6.QtGui.QTextFrame.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function handlerForObject
     (self : access Inst; objectType_P : int) return access QtAda6.QtGui.QTextObjectInterface.Inst'Class;
   function hitTest
     (self       : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class;
      accuracy_P : access QtAda6.QtCore.Qt.HitTestAccuracy.Inst'Class) return int;
   function hitTest
     (self       : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class;
      accuracy_P : access QtAda6.QtCore.Qt.HitTestAccuracy.Inst'Class) return int;
   function hitTest
     (self       : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      accuracy_P : access QtAda6.QtCore.Qt.HitTestAccuracy.Inst'Class) return int;
   function imageAt (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class) return str;
   function imageAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return str;
   function imageAt (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return str;
   function pageCount (self : access Inst) return int;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   procedure positionInlineObject
     (self     : access Inst; item_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   procedure registerHandler
     (self : access Inst; objectType_P : int; component_P : access QtAda6.QtCore.QObject.Inst'Class);
   procedure resizeInlineObject
     (self     : access Inst; item_P : access QtAda6.QtGui.QTextInlineObject.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   procedure setPaintDevice (self : access Inst; device_P : access QtAda6.QtGui.QPaintDevice.Inst'Class);
   procedure unregisterHandler
     (self : access Inst; objectType_P : int; component_P : access QtAda6.QtCore.QObject.Inst'Class := null);
end QtAda6.QtGui.QAbstractTextDocumentLayout;
