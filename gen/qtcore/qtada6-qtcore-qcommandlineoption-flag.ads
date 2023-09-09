-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcommandlineoption-flag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QCommandLineOption.Flag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   HiddenFromHelp   : QCommandLineOption.Flag.Class;-- 0x1
   ShortOptionStyle : QCommandLineOption.Flag.Class;-- 0x2
end QtAda6.QtCore.QCommandLineOption.Flag;
