-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qabstractfileiconprovider-icontype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QAbstractFileIconProvider.IconType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Computer : QAbstractFileIconProvider.IconType.Class;-- 0x0
   Desktop  : QAbstractFileIconProvider.IconType.Class;-- 0x1
   Trashcan : QAbstractFileIconProvider.IconType.Class;-- 0x2
   Network  : QAbstractFileIconProvider.IconType.Class;-- 0x3
   Drive    : QAbstractFileIconProvider.IconType.Class;-- 0x4
   Folder   : QAbstractFileIconProvider.IconType.Class;-- 0x5
   File     : QAbstractFileIconProvider.IconType.Class;-- 0x6
end QtAda6.QtGui.QAbstractFileIconProvider.IconType;
