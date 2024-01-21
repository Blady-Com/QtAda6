-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetatype-typeflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QMetaType.TypeFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NeedsConstruction return Class;-- 0x1
   function NeedsDestruction return Class;-- 0x2
   function MovableType return Class;-- 0x4
   function RelocatableType return Class;-- 0x4
   function PointerToQObject return Class;-- 0x8
   function IsEnumeration return Class;-- 0x10
   function SharedPointerToQObject return Class;-- 0x20
   function WeakPointerToQObject return Class;-- 0x40
   function TrackingPointerToQObject return Class;-- 0x80
   function IsUnsignedEnumeration return Class;-- 0x100
   function IsGadget return Class;-- 0x200
   function PointerToGadget return Class;-- 0x400
   function IsPointer return Class;-- 0x800
   function IsQmlList return Class;-- 0x1000
   function IsConst return Class;-- 0x2000
   function NeedsCopyConstruction return Class;-- 0x4000
   function NeedsMoveConstruction return Class;-- 0x8000
end QtAda6.QtCore.QMetaType.TypeFlag;
