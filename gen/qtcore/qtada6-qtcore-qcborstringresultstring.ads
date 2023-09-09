-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborstringresultstring.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCborStringResultString is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QCborStringResultString_P : access QtAda6.QtCore.QCborStringResultString.Inst'Class) return Class;
   procedure U_copy_U;
end QtAda6.QtCore.QCborStringResultString;
