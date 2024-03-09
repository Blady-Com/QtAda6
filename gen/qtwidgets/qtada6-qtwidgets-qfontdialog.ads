-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfontdialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QFontDialog.FontDialogOption;
with QtAda6.QtWidgets.QDialog;
package QtAda6.QtWidgets.QFontDialog is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   type TUPLE is null record;
   procedure Finalize (Self : in out Class);
   function currentFontChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentFontChanged(QFont)
   function fontSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- fontSelected(QFont)
   function Create
     (initial_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   procedure done (self : access Inst; result_P : int);
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function getFont
     (initial_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                      := null; title_P : str := "";
      options_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class := null) return TUPLE;
   function getFont (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return TUPLE;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   function options (self : access Inst) return access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class;
   function selectedFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   procedure setCurrentFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class;
      on_P : bool := False);
   procedure setOptions
     (self : access Inst; options_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFontDialog.FontDialogOption.Inst'Class) return bool;
end QtAda6.QtWidgets.QFontDialog;
