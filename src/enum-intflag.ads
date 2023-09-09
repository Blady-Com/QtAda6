-------------------------------------------------------------------------------
-- NAME (spec)                  : enum-intflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 glue for the generated files
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py;

package Enum.IntFlag is

   type Inst is tagged record
      Python_Proxy : Py.Handle;
   end record;

end Enum.IntFlag;
