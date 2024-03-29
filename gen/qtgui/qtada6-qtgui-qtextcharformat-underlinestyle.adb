-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcharformat-underlinestyle.adb
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
package body QtAda6.QtGui.QTextCharFormat.UnderlineStyle is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoUnderline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoUnderline"));
   end NoUnderline;
   function SingleUnderline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SingleUnderline"));
   end SingleUnderline;
   function DashUnderline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DashUnderline"));
   end DashUnderline;
   function DotLine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DotLine"));
   end DotLine;
   function DashDotLine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DashDotLine"));
   end DashDotLine;
   function DashDotDotLine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DashDotDotLine"));
   end DashDotDotLine;
   function WaveUnderline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WaveUnderline"));
   end WaveUnderline;
   function SpellCheckUnderline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SpellCheckUnderline"));
   end SpellCheckUnderline;
end QtAda6.QtGui.QTextCharFormat.UnderlineStyle;
