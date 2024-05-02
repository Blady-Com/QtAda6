-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmessagelogcontext.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.QMessageLogContext is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageLogContext");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fileName_P : bytes; lineNumber_P : int; functionName_P : bytes; categoryName_P : bytes) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageLogContext");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (fileName_P.all)));
      Tuple_SetItem (Args, 1, Long_FromLong (lineNumber_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (Standard.String (functionName_P.all)));
      Tuple_SetItem (Args, 3, Bytes_FromString (Standard.String (categoryName_P.all)));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
end QtAda6.QtCore.QMessageLogContext;
