-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscrollerproperties.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QScrollerProperties.ScrollMetric;
package QtAda6.QtWidgets.QScrollerProperties is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (sp_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class) return Class;
   procedure U_copy_U;
   function scrollMetric_F
     (self : access Inst; metric_P : access QtAda6.QtWidgets.QScrollerProperties.ScrollMetric.Inst'Class) return Any;
   procedure setDefaultScrollerProperties (sp_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class);
   procedure setScrollMetric
     (self    : access Inst; metric_P : access QtAda6.QtWidgets.QScrollerProperties.ScrollMetric.Inst'Class;
      value_P : Any);
   procedure unsetDefaultScrollerProperties;
end QtAda6.QtWidgets.QScrollerProperties;
