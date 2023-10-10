-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethod.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
package QtAda6.QtGui.QInputMethod is
   type ClassVar_Signal is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   anchorRectangleChanged        : ClassVar_Signal;-- anchorRectangleChanged()
   animatingChanged              : ClassVar_Signal;-- animatingChanged()
   cursorRectangleChanged        : ClassVar_Signal;-- cursorRectangleChanged()
   inputDirectionChanged         : ClassVar_Signal;-- inputDirectionChanged(Qt::LayoutDirection)
   inputItemClipRectangleChanged : ClassVar_Signal;-- inputItemClipRectangleChanged()
   keyboardRectangleChanged      : ClassVar_Signal;-- keyboardRectangleChanged()
   localeChanged                 : ClassVar_Signal;-- localeChanged()
   visibleChanged                : ClassVar_Signal;-- visibleChanged()
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
   procedure setInputItemRectangle (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setInputItemTransform (self : access Inst; transform_P : access QtAda6.QtGui.QTransform.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure show (self : access Inst);
   procedure update (self : access Inst; queries_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class);
end QtAda6.QtGui.QInputMethod;
