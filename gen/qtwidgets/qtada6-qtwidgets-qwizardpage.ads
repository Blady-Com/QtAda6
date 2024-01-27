-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwizardpage.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWizard.WizardButton;
limited with QtAda6.QtWidgets.QWizard.WizardPixmap;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtWidgets.QWizard;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QWizardPage is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   procedure Finalize (Self : in out Class);
   function completeChanged (self : access Inst) return CLASSVAR_Signal;-- completeChanged()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function buttonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class) return str;
   procedure cleanupPage (self : access Inst);
   function field (self : access Inst; name_P : str) return Any;
   procedure initializePage (self : access Inst);
   function isCommitPage (self : access Inst) return bool;
   function isComplete (self : access Inst) return bool;
   function isFinalPage (self : access Inst) return bool;
   function nextId (self : access Inst) return int;
   function pixmap
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure registerField
     (self : access Inst; name_P : str; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; property_P : bytes := "";
      changedSignal_P : bytes := "");
   procedure setButtonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class; text_P : str);
   procedure setCommitPage (self : access Inst; commitPage_P : bool);
   procedure setField (self : access Inst; name_P : str; value_P : Any);
   procedure setFinalPage (self : access Inst; finalPage_P : bool);
   procedure setPixmap
     (self     : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr);
   procedure setSubTitle (self : access Inst; subTitle_P : str);
   procedure setTitle (self : access Inst; title_P : str);
   function subTitle (self : access Inst) return str;
   function title (self : access Inst) return str;
   function validatePage (self : access Inst) return bool;
   function wizard (self : access Inst) return access QtAda6.QtWidgets.QWizard.Inst'Class;
end QtAda6.QtWidgets.QWizardPage;
