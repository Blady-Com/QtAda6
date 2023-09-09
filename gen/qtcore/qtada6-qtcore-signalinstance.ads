-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-signalinstance.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.SignalInstance is
   type Optional_type_K is access Any;
   type Optional_object is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Object with null record;
   procedure Finalize (Self : in out Class);
   procedure connect (self : access Inst; slot_P : Object; type_K_P : Optional_type_K);
   procedure disconnect (self : access Inst; slot_P : Optional_object);
   procedure emit (self : access Inst; args_P : Any);
end QtAda6.QtCore.SignalInstance;
