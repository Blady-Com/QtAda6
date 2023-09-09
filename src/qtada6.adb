-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 glue for the generated files
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
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

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      QtAda6_PySide_Python_Proxy := Py.Import_ImportModule ("PySide6");
      QtAda6_QtCore_Python_Proxy := Py.Import_ImportModule ("PySide6.QtCore");
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      Py.Invalidate (QtAda6_PySide_Python_Proxy);
      Py.Invalidate (QtAda6_QtCore_Python_Proxy);
   end Finalize;

end QtAda6;
