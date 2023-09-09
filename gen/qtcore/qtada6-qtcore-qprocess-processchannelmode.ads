-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qprocess-processchannelmode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QProcess.ProcessChannelMode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   SeparateChannels       : QProcess.ProcessChannelMode.Class;-- 0x0
   MergedChannels         : QProcess.ProcessChannelMode.Class;-- 0x1
   ForwardedChannels      : QProcess.ProcessChannelMode.Class;-- 0x2
   ForwardedOutputChannel : QProcess.ProcessChannelMode.Class;-- 0x3
   ForwardedErrorChannel  : QProcess.ProcessChannelMode.Class;-- 0x4
end QtAda6.QtCore.QProcess.ProcessChannelMode;
