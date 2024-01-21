-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-matchflag.adb
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
package body QtAda6.QtCore.Qt.MatchFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function MatchExactly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchExactly"));
   end MatchExactly;
   function MatchContains return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchContains"));
   end MatchContains;
   function MatchStartsWith return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchStartsWith"));
   end MatchStartsWith;
   function MatchEndsWith return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchEndsWith"));
   end MatchEndsWith;
   function MatchRegularExpression return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchRegularExpression"));
   end MatchRegularExpression;
   function MatchWildcard return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchWildcard"));
   end MatchWildcard;
   function MatchFixedString return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchFixedString"));
   end MatchFixedString;
   function MatchTypeMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchTypeMask"));
   end MatchTypeMask;
   function MatchCaseSensitive return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchCaseSensitive"));
   end MatchCaseSensitive;
   function MatchWrap return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchWrap"));
   end MatchWrap;
   function MatchRecursive return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MatchFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MatchRecursive"));
   end MatchRecursive;
end QtAda6.QtCore.Qt.MatchFlag;
