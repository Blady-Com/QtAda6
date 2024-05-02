-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicslayoutitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.Qt.SizeHint;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QSizePolicy.Policy;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtWidgets.QSizePolicy;
package QtAda6.QtWidgets.QGraphicsLayoutItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null; isLayout_P : bool := False)
      return Class;
   function contentsRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function effectiveSizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : access QtAda6.QtCore.QSizeF.Inst'Class := null) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function effectiveSizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : access QtAda6.QtCore.QSize.Inst'Class := null) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function getContentsMargins (self : access Inst) return access Object'Class;
   function graphicsItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function isLayout (self : access Inst) return bool;
   function maximumHeight (self : access Inst) return float;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function maximumWidth (self : access Inst) return float;
   function minimumHeight (self : access Inst) return float;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function minimumWidth (self : access Inst) return float;
   function ownedByLayout (self : access Inst) return bool;
   function parentLayoutItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
   function preferredHeight (self : access Inst) return float;
   function preferredSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function preferredWidth (self : access Inst) return float;
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setGraphicsItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure setMaximumHeight (self : access Inst; height_P : float);
   procedure setMaximumSize (self : access Inst; size_P : access QtAda6.QtCore.QSizeF.Inst'Class);
   procedure setMaximumSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMaximumSize (self : access Inst; w_P : float; h_P : float);
   procedure setMaximumWidth (self : access Inst; width_P : float);
   procedure setMinimumHeight (self : access Inst; height_P : float);
   procedure setMinimumSize (self : access Inst; size_P : access QtAda6.QtCore.QSizeF.Inst'Class);
   procedure setMinimumSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMinimumSize (self : access Inst; w_P : float; h_P : float);
   procedure setMinimumWidth (self : access Inst; width_P : float);
   procedure setOwnedByLayout (self : access Inst; ownedByLayout_P : bool);
   procedure setParentLayoutItem
     (self : access Inst; parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class);
   procedure setPreferredHeight (self : access Inst; height_P : float);
   procedure setPreferredSize (self : access Inst; size_P : access QtAda6.QtCore.QSizeF.Inst'Class);
   procedure setPreferredSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setPreferredSize (self : access Inst; w_P : float; h_P : float);
   procedure setPreferredWidth (self : access Inst; width_P : float);
   procedure setSizePolicy
     (self          : access Inst; hPolicy_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      vPolicy_P     : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      controlType_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class := null);
   procedure setSizePolicy (self : access Inst; policy_P : access QtAda6.QtWidgets.QSizePolicy.Inst'Class);
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : access QtAda6.QtCore.QSizeF.Inst'Class := null) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : access QtAda6.QtCore.QSize.Inst'Class := null) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function sizePolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class;
   procedure updateGeometry (self : access Inst);
end QtAda6.QtWidgets.QGraphicsLayoutItem;
