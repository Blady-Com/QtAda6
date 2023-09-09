-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetatype-typeflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QMetaType.TypeFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NeedsConstruction        : QMetaType.TypeFlag.Class;-- 0x1
   NeedsDestruction         : QMetaType.TypeFlag.Class;-- 0x2
   MovableType              : QMetaType.TypeFlag.Class;-- 0x4
   RelocatableType          : QMetaType.TypeFlag.Class;-- 0x4
   PointerToQObject         : QMetaType.TypeFlag.Class;-- 0x8
   IsEnumeration            : QMetaType.TypeFlag.Class;-- 0x10
   SharedPointerToQObject   : QMetaType.TypeFlag.Class;-- 0x20
   WeakPointerToQObject     : QMetaType.TypeFlag.Class;-- 0x40
   TrackingPointerToQObject : QMetaType.TypeFlag.Class;-- 0x80
   IsUnsignedEnumeration    : QMetaType.TypeFlag.Class;-- 0x100
   IsGadget                 : QMetaType.TypeFlag.Class;-- 0x200
   PointerToGadget          : QMetaType.TypeFlag.Class;-- 0x400
   IsPointer                : QMetaType.TypeFlag.Class;-- 0x800
   IsQmlList                : QMetaType.TypeFlag.Class;-- 0x1000
   IsConst                  : QMetaType.TypeFlag.Class;-- 0x2000
   NeedsCopyConstruction    : QMetaType.TypeFlag.Class;-- 0x4000
   NeedsMoveConstruction    : QMetaType.TypeFlag.Class;-- 0x8000
end QtAda6.QtCore.QMetaType.TypeFlag;
