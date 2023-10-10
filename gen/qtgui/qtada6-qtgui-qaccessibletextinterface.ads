-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibletextinterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QAccessible.TextBoundaryType;
package QtAda6.QtGui.QAccessibleTextInterface is
   type Tuple_str_int_int is access Any;
   type Tuple_int_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure addSelection (self : access Inst; startOffset_P : int; endOffset_P : int);
   function attributes (self : access Inst; offset_P : int) return Tuple_str_int_int;
   function characterCount (self : access Inst) return int;
   function characterRect (self : access Inst; offset_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function cursorPosition (self : access Inst) return int;
   function offsetAtPoint (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   procedure removeSelection (self : access Inst; selectionIndex_P : int);
   procedure scrollToSubstring (self : access Inst; startIndex_P : int; endIndex_P : int);
   function selection (self : access Inst; selectionIndex_P : int) return Tuple_int_int;
   function selectionCount (self : access Inst) return int;
   procedure setCursorPosition (self : access Inst; position_P : int);
   procedure setSelection (self : access Inst; selectionIndex_P : int; startOffset_P : int; endOffset_P : int);
   function text (self : access Inst; startOffset_P : int; endOffset_P : int) return str;
   function textAfterOffset
     (self : access Inst; offset_P : int; boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class)
      return Tuple_str_int_int;
   function textAtOffset
     (self : access Inst; offset_P : int; boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class)
      return Tuple_str_int_int;
   function textBeforeOffset
     (self : access Inst; offset_P : int; boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class)
      return Tuple_str_int_int;
end QtAda6.QtGui.QAccessibleTextInterface;
