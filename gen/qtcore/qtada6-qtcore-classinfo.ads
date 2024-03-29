-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-classinfo.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.ClassInfo is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Object with null record;
   type DICT_str_str is record
      C0 : str;
      C1 : str;
   end record;
   procedure Finalize (Self : in out Class);
   function Create (info_P : DICT_str_str) return Class;
end QtAda6.QtCore.ClassInfo;
