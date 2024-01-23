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
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function anchorRectangleChanged (self : access Inst) return CLASSVAR_Signal;-- anchorRectangleChanged()
   function animatingChanged (self : access Inst) return CLASSVAR_Signal;-- animatingChanged()
   function cursorRectangleChanged (self : access Inst) return CLASSVAR_Signal;-- cursorRectangleChanged()
   function inputDirectionChanged
     (self : access Inst) return CLASSVAR_Signal;-- inputDirectionChanged(Qt::LayoutDirection)
   function inputItemClipRectangleChanged (self : access Inst) return CLASSVAR_Signal;-- inputItemClipRectangleChanged()
   function keyboardRectangleChanged (self : access Inst) return CLASSVAR_Signal;-- keyboardRectangleChanged()
   function localeChanged (self : access Inst) return CLASSVAR_Signal;-- localeChanged()
   function visibleChanged (self : access Inst) return CLASSVAR_Signal;-- visibleChanged()
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
   procedure setInputItemRectangle (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect);
   procedure setInputItemTransform (self : access Inst; transform_P : access QtAda6.QtGui.QTransform.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure show (self : access Inst);
   procedure update (self : access Inst; queries_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class);
end QtAda6.QtGui.QInputMethod;
