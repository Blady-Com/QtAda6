-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsurfaceformat-formatoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QSurfaceFormat.FormatOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   StereoBuffers       : QSurfaceFormat.FormatOption.Class;-- 0x1
   DebugContext        : QSurfaceFormat.FormatOption.Class;-- 0x2
   DeprecatedFunctions : QSurfaceFormat.FormatOption.Class;-- 0x4
   ResetNotification   : QSurfaceFormat.FormatOption.Class;-- 0x8
   ProtectedContent    : QSurfaceFormat.FormatOption.Class;-- 0x10
end QtAda6.QtGui.QSurfaceFormat.FormatOption;
