-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale-datasizeformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QLocale.DataSizeFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   DataSizeIecFormat         : QLocale.DataSizeFormat.Class;-- 0x0
   DataSizeBase1000          : QLocale.DataSizeFormat.Class;-- 0x1
   DataSizeSIQuantifiers     : QLocale.DataSizeFormat.Class;-- 0x2
   DataSizeTraditionalFormat : QLocale.DataSizeFormat.Class;-- 0x2
   DataSizeSIFormat          : QLocale.DataSizeFormat.Class;-- 0x3
end QtAda6.QtCore.QLocale.DataSizeFormat;
