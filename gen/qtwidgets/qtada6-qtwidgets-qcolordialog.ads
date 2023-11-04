-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcolordialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QColorDialog.ColorDialogOption;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QDialog;
package QtAda6.QtWidgets.QColorDialog is
   type ClassVar_Signal is access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   procedure Finalize (Self : in out Class);
   colorSelected       : ClassVar_Signal;-- colorSelected(QColor)
   currentColorChanged : ClassVar_Signal;-- currentColorChanged(QColor)
   function Create
     (initial_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      parent_P  : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function currentColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function customColor (index_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function customCount return int;
   procedure done (self : access Inst; result_P : int);
   function getColor
     (initial_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      parent_P  : Optional_QtAda6_QtWidgets_QWidget; title_P : str;
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   function options (self : access Inst) return access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class;
   function selectedColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   procedure setCurrentColor
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setCustomColor
     (index_P : int; color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class; on_P : bool);
   procedure setOptions
     (self : access Inst; options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class);
   procedure setStandardColor
     (index_P : int; color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setVisible (self : access Inst; visible_P : bool);
   function standardColor (index_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class) return bool;
end QtAda6.QtWidgets.QColorDialog;
