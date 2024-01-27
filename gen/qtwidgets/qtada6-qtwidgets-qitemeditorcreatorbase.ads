-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qitemeditorcreatorbase.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtWidgets.QItemEditorCreatorBase is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function createWidget
     (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function valuePropertyName (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
end QtAda6.QtWidgets.QItemEditorCreatorBase;
