-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qt.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WhiteSpaceMode;
with QtAda6.QtCore.Qt;
package QtAda6.QtGui.Qt is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.Qt.Inst with null record;
   procedure Finalize (Self : in out Class);
   function convertFromPlainText
     (plain_P : str; mode_P : access QtAda6.QtCore.Qt.WhiteSpaceMode.Inst'Class := null) return str;
   function mightBeRichText (arg_1_P : str) return bool;
end QtAda6.QtGui.Qt;
