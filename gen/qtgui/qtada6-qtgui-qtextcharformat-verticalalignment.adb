-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcharformat-verticalalignment.adb
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
package body QtAda6.QtGui.QTextCharFormat.VerticalAlignment is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AlignNormal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignNormal"));
   end AlignNormal;
   function AlignSuperScript return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignSuperScript"));
   end AlignSuperScript;
   function AlignSubScript return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignSubScript"));
   end AlignSubScript;
   function AlignMiddle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignMiddle"));
   end AlignMiddle;
   function AlignTop return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignTop"));
   end AlignTop;
   function AlignBottom return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignBottom"));
   end AlignBottom;
   function AlignBaseline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlignBaseline"));
   end AlignBaseline;
end QtAda6.QtGui.QTextCharFormat.VerticalAlignment;
