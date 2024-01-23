-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmovie-moviestate.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QMovie.MovieState is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NotRunning return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MovieState");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NotRunning"));
   end NotRunning;
   function Paused return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MovieState");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Paused"));
   end Paused;
   function Running return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MovieState");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Running"));
   end Running;
end QtAda6.QtGui.QMovie.MovieState;
