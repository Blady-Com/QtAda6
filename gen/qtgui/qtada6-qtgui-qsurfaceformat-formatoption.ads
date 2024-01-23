-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsurfaceformat-formatoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QSurfaceFormat.FormatOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function StereoBuffers return Class;-- 0x1
   function DebugContext return Class;-- 0x2
   function DeprecatedFunctions return Class;-- 0x4
   function ResetNotification return Class;-- 0x8
   function ProtectedContent return Class;-- 0x10
end QtAda6.QtGui.QSurfaceFormat.FormatOption;
