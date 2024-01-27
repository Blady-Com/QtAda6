-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwhatsthis.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QWhatsThis is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function createAction
     (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure enterWhatsThisMode;
   procedure hideText;
   function inWhatsThisMode return bool;
   procedure leaveWhatsThisMode;
   procedure showText
     (pos_P : access QtAda6.QtCore.QPoint.Inst'Class; text_P : str;
      w_P   : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
end QtAda6.QtWidgets.QWhatsThis;
