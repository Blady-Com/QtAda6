-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QStyleOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (other_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class) return Class;
   function Create (version_P : int; type_K_P : int) return Class;
   procedure initFrom (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
end QtAda6.QtWidgets.QStyleOption;
