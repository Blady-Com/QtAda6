-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicstextitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtWidgets.QGraphicsSceneHoverEvent;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtWidgets.QGraphicsItem.Extension;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtCore.Qt.TextInteractionFlag;
with QtAda6.QtWidgets.QGraphicsObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QGraphicsTextItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   type UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint is new Any;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   procedure Finalize (Self : in out Class);
   function linkActivated (self : access Inst) return CLASSVAR_Signal;-- linkActivated(QString)
   function linkHovered (self : access Inst) return CLASSVAR_Signal;-- linkHovered(QString)
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create (text_P : str; parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   procedure adjustSize (self : access Inst);
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function contains
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return bool;
   procedure contextMenuEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Inst'Class);
   function defaultTextColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   procedure dragEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragMoveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   function extension (self : access Inst; variant_P : Any) return Any;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   procedure hoverEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure mouseDoubleClickEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mousePressEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseReleaseEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function openExternalLinks (self : access Inst) return bool;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function sceneEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure setDefaultTextColor
     (self : access Inst; c_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint);
   procedure setDocument (self : access Inst; document_P : access QtAda6.QtGui.QTextDocument.Inst'Class);
   procedure setExtension
     (self : access Inst; extension_P : access QtAda6.QtWidgets.QGraphicsItem.Extension.Inst'Class; variant_P : Any);
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str);
   procedure setHtml (self : access Inst; html_P : str);
   procedure setOpenExternalLinks (self : access Inst; open_P : bool);
   procedure setPlainText (self : access Inst; text_P : str);
   procedure setTabChangesFocus (self : access Inst; b_P : bool);
   procedure setTextCursor (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class);
   procedure setTextWidth (self : access Inst; width_P : float);
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function supportsExtension
     (self : access Inst; extension_P : access QtAda6.QtWidgets.QGraphicsItem.Extension.Inst'Class) return bool;
   function tabChangesFocus (self : access Inst) return bool;
   function textCursor (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class;
   function textWidth (self : access Inst) return float;
   function toHtml (self : access Inst) return str;
   function toPlainText (self : access Inst) return str;
   function type_K (self : access Inst) return int;
end QtAda6.QtWidgets.QGraphicsTextItem;
