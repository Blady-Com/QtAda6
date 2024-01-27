-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qframe.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QFrame.Shadow;
limited with QtAda6.QtWidgets.QFrame.Shape;
limited with QtAda6.QtWidgets.QStyleOptionFrame;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QFrame is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure drawFrame (self : access Inst; arg_1_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function frameRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function frameShadow (self : access Inst) return access QtAda6.QtWidgets.QFrame.Shadow.Inst'Class;
   function frameShape (self : access Inst) return access QtAda6.QtWidgets.QFrame.Shape.Inst'Class;
   function frameStyle (self : access Inst) return int;
   function frameWidth (self : access Inst) return int;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionFrame.Inst'Class);
   function lineWidth (self : access Inst) return int;
   function midLineWidth (self : access Inst) return int;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setFrameRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setFrameShadow (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QFrame.Shadow.Inst'Class);
   procedure setFrameShape (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QFrame.Shape.Inst'Class);
   procedure setFrameStyle (self : access Inst; arg_1_P : int);
   procedure setLineWidth (self : access Inst; arg_1_P : int);
   procedure setMidLineWidth (self : access Inst; arg_1_P : int);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtWidgets.QFrame;
