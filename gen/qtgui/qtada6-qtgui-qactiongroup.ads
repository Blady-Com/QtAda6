-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qactiongroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QActionGroup.ExclusionPolicy;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QActionGroup is
   type ClassVar_Signal is access Any;
   type List_QtAda6_QtGui_QAction is access Any;
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   hovered   : ClassVar_Signal;-- hovered(QAction*)
   triggered : ClassVar_Signal;-- triggered(QAction*)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function actions (self : access Inst) return List_QtAda6_QtGui_QAction;
   function addAction
     (self : access Inst; a_P : access QtAda6.QtGui.QAction.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
   function checkedAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function exclusionPolicy_F (self : access Inst) return access QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst'Class;
   function isEnabled (self : access Inst) return bool;
   function isExclusive (self : access Inst) return bool;
   function isVisible (self : access Inst) return bool;
   procedure removeAction (self : access Inst; a_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure setDisabled (self : access Inst; b_P : bool);
   procedure setEnabled (self : access Inst; arg_1_P : bool);
   procedure setExclusionPolicy
     (self : access Inst; policy_P : access QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst'Class);
   procedure setExclusive (self : access Inst; arg_1_P : bool);
   procedure setVisible (self : access Inst; arg_1_P : bool);
end QtAda6.QtGui.QActionGroup;
