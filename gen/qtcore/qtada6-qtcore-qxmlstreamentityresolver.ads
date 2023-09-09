-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamentityresolver.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QXmlStreamEntityResolver is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function resolveEntity (self : access Inst; publicId_P : str; systemId_P : str) return str;
   function resolveUndeclaredEntity (self : access Inst; name_P : str) return str;
end QtAda6.QtCore.QXmlStreamEntityResolver;
