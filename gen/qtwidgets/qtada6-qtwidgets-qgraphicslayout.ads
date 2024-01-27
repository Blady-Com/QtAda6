-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicslayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QGraphicsLayoutItem;
package QtAda6.QtWidgets.QGraphicsLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsLayoutItem.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class;
   procedure activate (self : access Inst);
   procedure addChildLayoutItem
     (self : access Inst; layoutItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class);
   function count (self : access Inst) return int;
   function getContentsMargins (self : access Inst) return access Object'Class;
   function instantInvalidatePropagation return bool;
   procedure invalidate (self : access Inst);
   function isActivated (self : access Inst) return bool;
   function itemAt (self : access Inst; i_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
   procedure removeAt (self : access Inst; index_P : int);
   procedure setContentsMargins (self : access Inst; left_P : float; top_P : float; right_P : float; bottom_P : float);
   procedure setInstantInvalidatePropagation (enable_P : bool);
   procedure updateGeometry (self : access Inst);
   procedure widgetEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
end QtAda6.QtWidgets.QGraphicsLayout;
