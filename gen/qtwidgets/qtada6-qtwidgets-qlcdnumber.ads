-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlcdnumber.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QLCDNumber.Mode;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QLCDNumber.SegmentStyle;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QFrame;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QLCDNumber is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QFrame.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   procedure Finalize (Self : in out Class);
   function overflow (self : access Inst) return CLASSVAR_Signal;-- overflow()
   function Create (numDigits_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function checkOverflow (self : access Inst; num_P : float) return bool;
   function checkOverflow (self : access Inst; num_P : int) return bool;
   function digitCount (self : access Inst) return int;
   procedure display (self : access Inst; num_P : float);
   procedure display (self : access Inst; num_P : int);
   procedure display (self : access Inst; str_P : str);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function intValue (self : access Inst) return int;
   function mode_F (self : access Inst) return access QtAda6.QtWidgets.QLCDNumber.Mode.Inst'Class;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function segmentStyle_F (self : access Inst) return access QtAda6.QtWidgets.QLCDNumber.SegmentStyle.Inst'Class;
   procedure setBinMode (self : access Inst);
   procedure setDecMode (self : access Inst);
   procedure setDigitCount (self : access Inst; nDigits_P : int);
   procedure setHexMode (self : access Inst);
   procedure setMode (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLCDNumber.Mode.Inst'Class);
   procedure setOctMode (self : access Inst);
   procedure setSegmentStyle (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLCDNumber.SegmentStyle.Inst'Class);
   procedure setSmallDecimalPoint (self : access Inst; arg_1_P : bool);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function smallDecimalPoint (self : access Inst) return bool;
   function value (self : access Inst) return float;
end QtAda6.QtWidgets.QLCDNumber;
