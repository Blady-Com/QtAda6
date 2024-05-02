-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qprogressbar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QStyleOptionProgressBar;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QProgressBar.Direction;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QProgressBar is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function valueChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- valueChanged(int)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function format (self : access Inst) return str;
   procedure initStyleOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionProgressBar.Inst'Class);
   function invertedAppearance (self : access Inst) return bool;
   function isTextVisible (self : access Inst) return bool;
   function maximum (self : access Inst) return int;
   function minimum (self : access Inst) return int;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure reset (self : access Inst);
   procedure resetFormat (self : access Inst);
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setFormat (self : access Inst; format_P : str);
   procedure setInvertedAppearance (self : access Inst; invert_P : bool);
   procedure setMaximum (self : access Inst; maximum_P : int);
   procedure setMinimum (self : access Inst; minimum_P : int);
   procedure setOrientation (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setRange (self : access Inst; minimum_P : int; maximum_P : int);
   procedure setTextDirection
     (self : access Inst; textDirection_P : access QtAda6.QtWidgets.QProgressBar.Direction.Inst'Class);
   procedure setTextVisible (self : access Inst; visible_P : bool);
   procedure setValue (self : access Inst; value_P : int);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function text (self : access Inst) return str;
   function textDirection (self : access Inst) return access QtAda6.QtWidgets.QProgressBar.Direction.Inst'Class;
   function value (self : access Inst) return int;
end QtAda6.QtWidgets.QProgressBar;
