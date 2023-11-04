-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicssceneresizeevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QGraphicsSceneEvent;
package QtAda6.QtWidgets.QGraphicsSceneResizeEvent is
   type Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsSceneEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function newSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function oldSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure setNewSize (self : access Inst; size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize);
   procedure setOldSize (self : access Inst; size_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize);
end QtAda6.QtWidgets.QGraphicsSceneResizeEvent;
