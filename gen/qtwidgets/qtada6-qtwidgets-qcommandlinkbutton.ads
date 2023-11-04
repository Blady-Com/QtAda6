-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcommandlinkbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QStyleOptionButton;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QPushButton;
package QtAda6.QtWidgets.QCommandLinkButton is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QPushButton.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (text_P : str; description_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (text_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function description (self : access Inst) return str;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionButton.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setDescription (self : access Inst; description_P : str);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtWidgets.QCommandLinkButton;
