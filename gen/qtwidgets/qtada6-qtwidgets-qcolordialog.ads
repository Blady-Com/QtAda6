-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcolordialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QColorDialog.ColorDialogOption;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QColorDialog is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   procedure Finalize (Self : in out Class);
   function colorSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- colorSelected(QColor)
   function currentColorChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentColorChanged(QColor)
   function Create
     (initial_P : access QtAda6.QtGui.QColor.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class;
   function Create
     (initial_P : access QtAda6.QtGui.QRgba64.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class;
   function Create (initial_P : Any; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create
     (initial_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (initial_P : str; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (initial_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function currentColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function customColor (index_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function customCount return int;
   procedure done (self : access Inst; result_P : int);
   function getColor
     (initial_P : access QtAda6.QtGui.QColor.Inst'Class                             := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                        := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function getColor
     (initial_P : access QtAda6.QtGui.QRgba64.Inst'Class                            := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                        := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function getColor
     (initial_P : Any := null; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function getColor
     (initial_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class                    := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                        := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function getColor
     (initial_P : str := ""; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function getColor
     (initial_P : int := 0; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class := null)
      return access QtAda6.QtGui.QColor.Inst'Class;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   function options (self : access Inst) return access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class;
   function selectedColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   procedure setCurrentColor (self : access Inst; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setCurrentColor (self : access Inst; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setCurrentColor (self : access Inst; color_P : Any);
   procedure setCurrentColor (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setCurrentColor (self : access Inst; color_P : str);
   procedure setCurrentColor (self : access Inst; color_P : int);
   procedure setCustomColor (index_P : int; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setCustomColor (index_P : int; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setCustomColor (index_P : int; color_P : Any);
   procedure setCustomColor (index_P : int; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setCustomColor (index_P : int; color_P : str);
   procedure setCustomColor (index_P : int; color_P : int);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class;
      on_P : bool := False);
   procedure setOptions
     (self : access Inst; options_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class);
   procedure setStandardColor (index_P : int; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setStandardColor (index_P : int; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setStandardColor (index_P : int; color_P : Any);
   procedure setStandardColor (index_P : int; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setStandardColor (index_P : int; color_P : str);
   procedure setStandardColor (index_P : int; color_P : int);
   procedure setVisible (self : access Inst; visible_P : bool);
   function standardColor (index_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QColorDialog.ColorDialogOption.Inst'Class) return bool;
end QtAda6.QtWidgets.QColorDialog;
