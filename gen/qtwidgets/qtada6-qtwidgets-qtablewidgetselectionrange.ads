-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtablewidgetselectionrange.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QTableWidgetSelectionRange is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (QTableWidgetSelectionRange_P : access QtAda6.QtWidgets.QTableWidgetSelectionRange.Inst'Class) return Class;
   function Create (top_P : int; left_P : int; bottom_P : int; right_P : int) return Class;
   procedure U_copy_U;
   function bottomRow (self : access Inst) return int;
   function columnCount (self : access Inst) return int;
   function leftColumn (self : access Inst) return int;
   function rightColumn (self : access Inst) return int;
   function rowCount (self : access Inst) return int;
   function topRow (self : access Inst) return int;
end QtAda6.QtWidgets.QTableWidgetSelectionRange;
