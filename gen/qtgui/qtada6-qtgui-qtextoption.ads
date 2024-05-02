-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtGui.QTextOption.Flag;
limited with QtAda6.QtGui.QTextOption.Tab;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtGui.QTextOption.WrapMode;
package QtAda6.QtGui.QTextOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_float is array (Positive range <>) of float;
   subtype SEQUENCE_QtAda6_QtGui_QTextOption_Tab is QtAda6.QtGui.QTextOption.Tab.Class_Array;
   type LIST_float is array (Positive range <>) of float;
   subtype LIST_QtAda6_QtGui_QTextOption_Tab is QtAda6.QtGui.QTextOption.Tab.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return Class;
   function Create (o_P : access QtAda6.QtGui.QTextOption.Inst'Class) return Class;
-- function Create(o_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return Class;
   procedure U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function flags (self : access Inst) return access QtAda6.QtGui.QTextOption.Flag.Inst'Class;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtGui.QTextOption.Flag.Inst'Class);
   procedure setTabArray (self : access Inst; tabStops_P : SEQUENCE_float);
   procedure setTabStopDistance (self : access Inst; tabStopDistance_P : float);
   procedure setTabs (self : access Inst; tabStops_P : SEQUENCE_QtAda6_QtGui_QTextOption_Tab);
   procedure setTextDirection (self : access Inst; aDirection_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class);
   procedure setUseDesignMetrics (self : access Inst; b_P : bool);
   procedure setWrapMode (self : access Inst; wrap_P : access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class);
   function tabArray (self : access Inst) return LIST_float;
   function tabStopDistance (self : access Inst) return float;
   function tabs (self : access Inst) return LIST_QtAda6_QtGui_QTextOption_Tab;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function useDesignMetrics (self : access Inst) return bool;
   function wrapMode_F (self : access Inst) return access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class;
end QtAda6.QtGui.QTextOption;
