-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfontdialog-fontdialogoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QFontDialog.FontDialogOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoButtons           : QFontDialog.FontDialogOption.Class;-- 0x1
   DontUseNativeDialog : QFontDialog.FontDialogOption.Class;-- 0x2
   ScalableFonts       : QFontDialog.FontDialogOption.Class;-- 0x4
   NonScalableFonts    : QFontDialog.FontDialogOption.Class;-- 0x8
   MonospacedFonts     : QFontDialog.FontDialogOption.Class;-- 0x10
   ProportionalFonts   : QFontDialog.FontDialogOption.Class;-- 0x20
end QtAda6.QtWidgets.QFontDialog.FontDialogOption;
