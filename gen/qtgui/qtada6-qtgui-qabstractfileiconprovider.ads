-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qabstractfileiconprovider.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QFileInfo;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QAbstractFileIconProvider.IconType;
limited with QtAda6.QtGui.QAbstractFileIconProvider.Option;
package QtAda6.QtGui.QAbstractFileIconProvider is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function icon_F
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class)
      return access QtAda6.QtGui.QIcon.Inst'Class;
   function icon_F
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QAbstractFileIconProvider.IconType.Inst'Class)
      return access QtAda6.QtGui.QIcon.Inst'Class;
   function options (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst'Class;
   procedure setOptions (self : access Inst; arg_1_P : access QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst'Class);
   function type_K (self : access Inst; arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class) return str;
end QtAda6.QtGui.QAbstractFileIconProvider;
