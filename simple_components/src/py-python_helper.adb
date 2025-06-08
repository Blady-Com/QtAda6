-------------------------------------------------------------------------------
-- NAME (body)                  : py-python_helper.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Python extra declarations
-- NOTES                        : Ada 2022, Simple Components
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

package body Py.Python_Helper is

   -------------
   -- Compile --
   -------------

   function Compile (Source : String; File_Name : String; Module_Name : String) return Handle is
      Code       : Handle;
      Module     : Handle;
      File_Input : constant := 257;
   begin
      Code.Ptr := Links.CompileString (To_C (Source), To_C (File_Name), File_Input);
      if Code.Ptr = Null_Object then
         Check_Error;
      end if;
      Module.Ptr := Links.Import_ExecCodeModuleEx (To_C (Module_Name), Code.Ptr);
      if Module.Ptr = Null_Object then
         Check_Error;
      end if;
      return Module;
   end Compile;

end Py.Python_Helper;
