-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetatype-typeflag.adb
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
package body QtAda6.QtCore.QMetaType.TypeFlag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NeedsConstruction return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NeedsConstruction"));
   end NeedsConstruction;
   function NeedsDestruction return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NeedsDestruction"));
   end NeedsDestruction;
   function MovableType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MovableType"));
   end MovableType;
   function RelocatableType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RelocatableType"));
   end RelocatableType;
   function PointerToQObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PointerToQObject"));
   end PointerToQObject;
   function IsEnumeration return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsEnumeration"));
   end IsEnumeration;
   function SharedPointerToQObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SharedPointerToQObject"));
   end SharedPointerToQObject;
   function WeakPointerToQObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WeakPointerToQObject"));
   end WeakPointerToQObject;
   function TrackingPointerToQObject return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TrackingPointerToQObject"));
   end TrackingPointerToQObject;
   function IsUnsignedEnumeration return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsUnsignedEnumeration"));
   end IsUnsignedEnumeration;
   function IsGadget return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsGadget"));
   end IsGadget;
   function PointerToGadget return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PointerToGadget"));
   end PointerToGadget;
   function IsPointer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsPointer"));
   end IsPointer;
   function IsQmlList return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsQmlList"));
   end IsQmlList;
   function IsConst return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IsConst"));
   end IsConst;
   function NeedsCopyConstruction return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NeedsCopyConstruction"));
   end NeedsCopyConstruction;
   function NeedsMoveConstruction return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NeedsMoveConstruction"));
   end NeedsMoveConstruction;
end QtAda6.QtCore.QMetaType.TypeFlag;
