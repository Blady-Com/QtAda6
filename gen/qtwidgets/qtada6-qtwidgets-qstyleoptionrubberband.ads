-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoptionrubberband.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtWidgets.QStyleOption;
package QtAda6.QtWidgets.QStyleOptionRubberBand is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QStyleOption.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtWidgets.QStyleOptionRubberBand.Inst'Class) return Class;
   function Create (version_P : int) return Class;
end QtAda6.QtWidgets.QStyleOptionRubberBand;
