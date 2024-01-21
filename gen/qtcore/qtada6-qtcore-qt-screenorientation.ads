-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-screenorientation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.ScreenOrientation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function PrimaryOrientation return Class;-- 0x0
   function PortraitOrientation return Class;-- 0x1
   function LandscapeOrientation return Class;-- 0x2
   function InvertedPortraitOrientation return Class;-- 0x4
   function InvertedLandscapeOrientation return Class;-- 0x8
end QtAda6.QtCore.Qt.ScreenOrientation;
