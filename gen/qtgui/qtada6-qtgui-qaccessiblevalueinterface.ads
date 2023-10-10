-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessiblevalueinterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessibleValueInterface is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function currentValue (self : access Inst) return Any;
   function maximumValue (self : access Inst) return Any;
   function minimumStepSize (self : access Inst) return Any;
   function minimumValue (self : access Inst) return Any;
   procedure setCurrentValue (self : access Inst; value_P : Any);
end QtAda6.QtGui.QAccessibleValueInterface;
