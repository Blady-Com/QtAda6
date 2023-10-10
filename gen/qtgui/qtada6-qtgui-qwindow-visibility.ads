-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qwindow-visibility.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QWindow.Visibility is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Hidden              : QWindow.Visibility.Class;-- 0x0
   AutomaticVisibility : QWindow.Visibility.Class;-- 0x1
   Windowed            : QWindow.Visibility.Class;-- 0x2
   Minimized           : QWindow.Visibility.Class;-- 0x3
   Maximized           : QWindow.Visibility.Class;-- 0x4
   FullScreen          : QWindow.Visibility.Class;-- 0x5
end QtAda6.QtGui.QWindow.Visibility;
