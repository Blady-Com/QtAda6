-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-alignmentflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.AlignmentFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function AlignLeading return Class;-- 0x1
   function AlignLeft return Class;-- 0x1
   function AlignRight return Class;-- 0x2
   function AlignTrailing return Class;-- 0x2
   function AlignHCenter return Class;-- 0x4
   function AlignJustify return Class;-- 0x8
   function AlignAbsolute return Class;-- 0x10
   function AlignHorizontal_Mask return Class;-- 0x1f
   function AlignTop return Class;-- 0x20
   function AlignBottom return Class;-- 0x40
   function AlignVCenter return Class;-- 0x80
   function AlignCenter return Class;-- 0x84
   function AlignBaseline return Class;-- 0x100
   function AlignVertical_Mask return Class;-- 0x1e0
end QtAda6.QtCore.Qt.AlignmentFlag;
