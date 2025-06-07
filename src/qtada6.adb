-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 glue for the generated files
-- NOTES                        : Ada 2022, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with Ada.Unchecked_Deallocation;
with Ada.Command_Line;

package body QtAda6 is
   use Py;

   QtAda6_PySide_Python_Proxy    : Py.Handle;
   QtAda6_QtCore_Python_Proxy    : Py.Handle;
   QtAda6_QtGui_Python_Proxy     : Py.Handle;
   QtAda6_QtWidgets_Python_Proxy : Py.Handle;

   -------------------------
   -- QtCore_Python_Proxy --
   -------------------------

   function QtCore_Python_Proxy return Py.Handle is
   begin
      return QtAda6_QtCore_Python_Proxy;
   end QtCore_Python_Proxy;

   ------------------------
   -- QtGui_Python_Proxy --
   ------------------------

   function QtGui_Python_Proxy return Py.Handle is
   begin
      return QtAda6_QtGui_Python_Proxy;
   end QtGui_Python_Proxy;

   ----------------------------
   -- QtWidgets_Python_Proxy --
   ----------------------------

   function QtWidgets_Python_Proxy return Py.Handle is
   begin
      return QtAda6_QtWidgets_Python_Proxy;
   end QtWidgets_Python_Proxy;

   -------------
   -- Version --
   -------------

   function Version return UXStrings.UXString is
   begin
      return As_String (Object_GetAttrString (QtAda6_PySide_Python_Proxy, "__version__"));
   end Version;

   ----------
   -- argv --
   ----------

   function argv return SEQUENCE_str is
      use type unsigned;
      Args : SEQUENCE_str (0 .. unsigned (Ada.Command_Line.Argument_Count) - 1);
   begin
      for I in Args'Range loop
         Args (I) := UXStrings.From_UTF_8 (Ada.Command_Line.Argument (Positive (I + 1)));
      end loop;
      return Args;
   end argv;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      QtAda6_PySide_Python_Proxy    := Py.Import_ImportModule ("PySide6");
      QtAda6_QtCore_Python_Proxy    := Py.Import_ImportModule ("PySide6.QtCore");
      QtAda6_QtGui_Python_Proxy     := Py.Import_ImportModule ("PySide6.QtGui");
      QtAda6_QtWidgets_Python_Proxy := Py.Import_ImportModule ("PySide6.QtWidgets");
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      Py.Invalidate (QtAda6_PySide_Python_Proxy);
      Py.Invalidate (QtAda6_QtCore_Python_Proxy);
      Py.Invalidate (QtAda6_QtGui_Python_Proxy);
      Py.Invalidate (QtAda6_QtWidgets_Python_Proxy);
   end Finalize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Object_Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Object, Object_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Object_Access (Self));
   end Finalize;

   --------------
   -- setValue --
   --------------

   procedure setValue (Self : access Object; Value : Object_Class) is
   begin
      Self.Python_Proxy := Value.Python_Proxy;
   end setValue;

   procedure setValue (Self : access Object; Value : str) is
   begin
      Self.Python_Proxy := Unicode_FromString (Value);
   end setValue;

end QtAda6;
