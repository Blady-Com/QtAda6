-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlayoutitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QLayout;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QSpacerItem;
limited with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QLayoutItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null) return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function controlTypes (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function hasHeightForWidth (self : access Inst) return bool;
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   procedure invalidate (self : access Inst);
   function isEmpty (self : access Inst) return bool;
   function layout (self : access Inst) return access QtAda6.QtWidgets.QLayout.Inst'Class;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumHeightForWidth (self : access Inst; arg_1_P : int) return int;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setAlignment (self : access Inst; a_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function spacerItem (self : access Inst) return access QtAda6.QtWidgets.QSpacerItem.Inst'Class;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QLayoutItem;
