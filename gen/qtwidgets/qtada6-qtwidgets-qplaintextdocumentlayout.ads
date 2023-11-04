-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qplaintextdocumentlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextBlock;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext;
limited with QtAda6.QtGui.QTextFrame;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.HitTestAccuracy;
with QtAda6.QtGui.QAbstractTextDocumentLayout;
package QtAda6.QtWidgets.QPlainTextDocumentLayout is
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QAbstractTextDocumentLayout.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function blockBoundingRect
     (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function cursorWidth (self : access Inst) return int;
   procedure documentChanged (self : access Inst; from_U_P : int; arg_2_P : int; charsAdded_P : int);
   function documentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure draw
     (self    : access Inst; arg_1_P : access QtAda6.QtGui.QPainter.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Inst'Class);
   procedure ensureBlockLayout (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   function frameBoundingRect
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QTextFrame.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function hitTest
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      arg_2_P : access QtAda6.QtCore.Qt.HitTestAccuracy.Inst'Class) return int;
   function pageCount (self : access Inst) return int;
   procedure requestUpdate (self : access Inst);
   procedure setCursorWidth (self : access Inst; width_P : int);
end QtAda6.QtWidgets.QPlainTextDocumentLayout;
