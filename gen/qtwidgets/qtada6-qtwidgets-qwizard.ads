-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwizard.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtWidgets.QWizardPage;
limited with QtAda6.QtWidgets.QAbstractButton;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QWizard.WizardOption;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QWizard.WizardPixmap;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.TextFormat;
limited with QtAda6.QtWidgets.QWizard.WizardStyle;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QWizard.WizardButton;
package QtAda6.QtWidgets.QWizard is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type LIST_int is array (Positive range <>) of int;
   subtype SEQUENCE_QtAda6_QtWidgets_QWizard_WizardButton is QtAda6.QtWidgets.QWizard.WizardButton.Class_Array;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   procedure Finalize (Self : in out Class);
   function currentIdChanged (self : access Inst) return CLASSVAR_Signal;-- currentIdChanged(int)
   function customButtonClicked (self : access Inst) return CLASSVAR_Signal;-- customButtonClicked(int)
   function helpRequested (self : access Inst) return CLASSVAR_Signal;-- helpRequested()
   function pageAdded (self : access Inst) return CLASSVAR_Signal;-- pageAdded(int)
   function pageRemoved (self : access Inst) return CLASSVAR_Signal;-- pageRemoved(int)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   function addPage (self : access Inst; page_P : access QtAda6.QtWidgets.QWizardPage.Inst'Class) return int;
   procedure back (self : access Inst);
   function button_F
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class)
      return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function buttonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class) return str;
   procedure cleanupPage (self : access Inst; id_P : int);
   function currentId (self : access Inst) return int;
   function currentPage (self : access Inst) return access QtAda6.QtWidgets.QWizardPage.Inst'Class;
   procedure done (self : access Inst; result_P : int);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function field (self : access Inst; name_P : str) return Any;
   function hasVisitedPage (self : access Inst; id_P : int) return bool;
   procedure initializePage (self : access Inst; id_P : int);
   procedure next (self : access Inst);
   function nextId (self : access Inst) return int;
   function options (self : access Inst) return access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class;
   function page (self : access Inst; id_P : int) return access QtAda6.QtWidgets.QWizardPage.Inst'Class;
   function pageIds (self : access Inst) return LIST_int;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function pixmap_F
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure removePage (self : access Inst; id_P : int);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure restart (self : access Inst);
   procedure setButton
     (self     : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class;
      button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class);
   procedure setButtonLayout (self : access Inst; layout_P : SEQUENCE_QtAda6_QtWidgets_QWizard_WizardButton);
   procedure setButtonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class; text_P : str);
   procedure setCurrentId (self : access Inst; id_P : int);
   procedure setDefaultProperty (self : access Inst; className_P : bytes; property_P : bytes; changedSignal_P : bytes);
   procedure setField (self : access Inst; name_P : str; value_P : Any);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class; on_P : bool := False);
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class);
   procedure setPage (self : access Inst; id_P : int; page_P : access QtAda6.QtWidgets.QWizardPage.Inst'Class);
   procedure setPixmap
     (self     : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr);
   procedure setSideWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setStartId (self : access Inst; id_P : int);
   procedure setSubTitleFormat (self : access Inst; format_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class);
   procedure setTitleFormat (self : access Inst; format_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure setWizardStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QWizard.WizardStyle.Inst'Class);
   function sideWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function startId (self : access Inst) return int;
   function subTitleFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class) return bool;
   function titleFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class;
   function validateCurrentPage (self : access Inst) return bool;
   function visitedIds (self : access Inst) return LIST_int;
   function wizardStyle_F (self : access Inst) return access QtAda6.QtWidgets.QWizard.WizardStyle.Inst'Class;
end QtAda6.QtWidgets.QWizard;
