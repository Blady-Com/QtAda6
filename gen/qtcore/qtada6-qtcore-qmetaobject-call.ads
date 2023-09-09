-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetaobject-call.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QMetaObject.Call is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   InvokeMetaMethod               : QMetaObject.Call.Class;-- 0x0
   ReadProperty                   : QMetaObject.Call.Class;-- 0x1
   WriteProperty                  : QMetaObject.Call.Class;-- 0x2
   ResetProperty                  : QMetaObject.Call.Class;-- 0x3
   CreateInstance                 : QMetaObject.Call.Class;-- 0x4
   IndexOfMethod                  : QMetaObject.Call.Class;-- 0x5
   RegisterPropertyMetaType       : QMetaObject.Call.Class;-- 0x6
   RegisterMethodArgumentMetaType : QMetaObject.Call.Class;-- 0x7
   BindableProperty               : QMetaObject.Call.Class;-- 0x8
   CustomCall                     : QMetaObject.Call.Class;-- 0x9
end QtAda6.QtCore.QMetaObject.Call;
