-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtilerules.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.TileRule;
package QtAda6.QtWidgets.QTileRules is
   type Union_QtAda6_QtWidgets_QTileRules_QtAda6_QtCore_Qt_TileRule is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (QTileRules_P : Union_QtAda6_QtWidgets_QTileRules_QtAda6_QtCore_Qt_TileRule) return Class;
   function Create
     (horizontalRule_P : access QtAda6.QtCore.Qt.TileRule.Inst'Class;
      verticalRule_P   : access QtAda6.QtCore.Qt.TileRule.Inst'Class) return Class;
   function Create (rule_P : access QtAda6.QtCore.Qt.TileRule.Inst'Class) return Class;
   procedure U_copy_U;
end QtAda6.QtWidgets.QTileRules;
