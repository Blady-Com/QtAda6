-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qhashseed.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QHashSeed is
   type Union_QtAda6_QtCore_QHashSeed_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (QHashSeed_P : Union_QtAda6_QtCore_QHashSeed_int) return Class;
   function Create (d_P : int) return Class;
   procedure U_copy_U;
   function globalSeed return access QtAda6.QtCore.QHashSeed.Inst'Class;
   procedure resetRandomGlobalSeed;
   procedure setDeterministicGlobalSeed;
end QtAda6.QtCore.QHashSeed;
