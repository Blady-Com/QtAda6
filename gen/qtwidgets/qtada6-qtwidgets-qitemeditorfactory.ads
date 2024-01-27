-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qitemeditorfactory.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QItemEditorCreatorBase;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtWidgets.QItemEditorFactory is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function createEditor
     (self : access Inst; userType_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function defaultFactory return access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class;
   procedure registerEditor
     (self : access Inst; userType_P : int; creator_P : access QtAda6.QtWidgets.QItemEditorCreatorBase.Inst'Class);
   procedure setDefaultFactory (factory_P : access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class);
   function valuePropertyName (self : access Inst; userType_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
end QtAda6.QtWidgets.QItemEditorFactory;
