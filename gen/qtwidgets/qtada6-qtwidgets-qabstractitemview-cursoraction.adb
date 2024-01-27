-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractitemview-cursoraction.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QAbstractItemView.CursorAction is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function MoveUp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveUp"));
   end MoveUp;
   function MoveDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveDown"));
   end MoveDown;
   function MoveLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveLeft"));
   end MoveLeft;
   function MoveRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveRight"));
   end MoveRight;
   function MoveHome return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveHome"));
   end MoveHome;
   function MoveEnd return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveEnd"));
   end MoveEnd;
   function MovePageUp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MovePageUp"));
   end MovePageUp;
   function MovePageDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MovePageDown"));
   end MovePageDown;
   function MoveNext return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MoveNext"));
   end MoveNext;
   function MovePrevious return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorAction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MovePrevious"));
   end MovePrevious;
end QtAda6.QtWidgets.QAbstractItemView.CursorAction;
