-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qspaceritem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QSizePolicy.Policy;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QSizePolicy;
with QtAda6.QtWidgets.QLayoutItem;
package QtAda6.QtWidgets.QSpacerItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QLayoutItem.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (w_P     : int; h_P : int; hData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null;
      vData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null) return Class;
   procedure changeSize
     (self : access Inst; w_P : int; h_P : int; hData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null;
      vData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null);
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizePolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class;
   function spacerItem (self : access Inst) return access QtAda6.QtWidgets.QSpacerItem.Inst'Class;
end QtAda6.QtWidgets.QSpacerItem;
