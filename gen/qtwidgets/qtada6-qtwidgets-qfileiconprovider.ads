-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfileiconprovider.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QFileInfo;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QAbstractFileIconProvider.IconType;
with QtAda6.QtGui.QAbstractFileIconProvider;
package QtAda6.QtWidgets.QFileIconProvider is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QAbstractFileIconProvider.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function icon
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class)
      return access QtAda6.QtGui.QIcon.Inst'Class;
-- function icon(self : access Inst;info_P : access QtAda6.QtCore.QFileInfo.Inst'Class) return access QtAda6.QtGui.QIcon.Inst'Class;
   function icon
     (self : access Inst; type_K_P : access QtAda6.QtGui.QAbstractFileIconProvider.IconType.Inst'Class)
      return access QtAda6.QtGui.QIcon.Inst'Class;
end QtAda6.QtWidgets.QFileIconProvider;
