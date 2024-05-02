-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethod.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QInputMethod.Action;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QInputMethod is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function anchorRectangleChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- anchorRectangleChanged()
   function animatingChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- animatingChanged()
   function cursorRectangleChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cursorRectangleChanged()
   function inputDirectionChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- inputDirectionChanged(Qt::LayoutDirection)
   function inputItemClipRectangleChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- inputItemClipRectangleChanged()
   function keyboardRectangleChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- keyboardRectangleChanged()
   function localeChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- localeChanged()
   function visibleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- visibleChanged()
   function anchorRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure commit (self : access Inst);
   function cursorRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure hide (self : access Inst);
   function inputDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function inputItemClipRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function inputItemRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function inputItemTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure invokeAction
     (self : access Inst; a_P : access QtAda6.QtGui.QInputMethod.Action.Inst'Class; cursorPosition_P : int);
   function isAnimating (self : access Inst) return bool;
   function isVisible (self : access Inst) return bool;
   function keyboardRectangle (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   function queryFocusObject
     (query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any) return Any;
   procedure reset (self : access Inst);
   procedure setInputItemRectangle (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure setInputItemRectangle (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setInputItemTransform (self : access Inst; transform_P : access QtAda6.QtGui.QTransform.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure show (self : access Inst);
   procedure update (self : access Inst; queries_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class);
end QtAda6.QtGui.QInputMethod;
