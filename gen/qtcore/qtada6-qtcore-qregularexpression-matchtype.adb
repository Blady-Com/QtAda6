-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qregularexpression-matchtype.adb
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
package body QtAda6.QtCore.QRegularExpression.MatchType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NormalMatch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NormalMatch"));
   end NormalMatch;
   function PartialPreferCompleteMatch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PartialPreferCompleteMatch"));
   end PartialPreferCompleteMatch;
   function PartialPreferFirstMatch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PartialPreferFirstMatch"));
   end PartialPreferFirstMatch;
   function NoMatch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoMatch"));
   end NoMatch;
end QtAda6.QtCore.QRegularExpression.MatchType;
