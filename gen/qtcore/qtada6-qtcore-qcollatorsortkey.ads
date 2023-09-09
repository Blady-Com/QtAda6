-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcollatorsortkey.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCollatorSortKey is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (other_P : access QtAda6.QtCore.QCollatorSortKey.Inst'Class) return Class;
   function compare (self : access Inst; key_P : access QtAda6.QtCore.QCollatorSortKey.Inst'Class) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCollatorSortKey.Inst'Class);
end QtAda6.QtCore.QCollatorSortKey;
