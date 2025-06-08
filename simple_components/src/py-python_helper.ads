-------------------------------------------------------------------------------
-- NAME (spec)                  : py-python_helper.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Python extra declarations
-- NOTES                        : Ada 2022, Simple Components
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

package Py.Python_Helper is

   function Compile (Source : String; File_Name : String; Module_Name : String) return Handle;

end Py.Python_Helper;
