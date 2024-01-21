-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetaobject-call.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QMetaObject.Call is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function InvokeMetaMethod return Class;-- 0x0
   function ReadProperty return Class;-- 0x1
   function WriteProperty return Class;-- 0x2
   function ResetProperty return Class;-- 0x3
   function CreateInstance return Class;-- 0x4
   function IndexOfMethod return Class;-- 0x5
   function RegisterPropertyMetaType return Class;-- 0x6
   function RegisterMethodArgumentMetaType return Class;-- 0x7
   function BindableProperty return Class;-- 0x8
   function CustomCall return Class;-- 0x9
end QtAda6.QtCore.QMetaObject.Call;
