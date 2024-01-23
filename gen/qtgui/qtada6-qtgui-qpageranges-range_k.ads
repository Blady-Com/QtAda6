-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpageranges-range_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPageRanges.Range_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (Range_K_P : access QtAda6.QtGui.QPageRanges.Range_K.Inst'Class) return Class;
   procedure U_copy_U;
   function contains (self : access Inst; pageNumber_P : int) return bool;
end QtAda6.QtGui.QPageRanges.Range_K;
