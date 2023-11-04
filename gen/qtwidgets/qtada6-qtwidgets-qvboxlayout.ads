-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qvboxlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QBoxLayout;
package QtAda6.QtWidgets.QVBoxLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QBoxLayout.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return Class;
end QtAda6.QtWidgets.QVBoxLayout;
