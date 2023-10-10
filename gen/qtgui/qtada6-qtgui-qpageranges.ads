-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpageranges.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QPageRanges.Range_K;
package QtAda6.QtGui.QPageRanges is
   type List_QtAda6_QtGui_QPageRanges_Range_K is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QPageRanges.Inst'Class) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   procedure addPage (self : access Inst; pageNumber_P : int);
   procedure addRange (self : access Inst; from_U_P : int; to_P : int);
   procedure clear (self : access Inst);
   function contains (self : access Inst; pageNumber_P : int) return bool;
   function firstPage (self : access Inst) return int;
   function fromString (ranges_P : str) return access QtAda6.QtGui.QPageRanges.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function lastPage (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPageRanges.Inst'Class);
   function toRangeList (self : access Inst) return List_QtAda6_QtGui_QPageRanges_Range_K;
   function toString (self : access Inst) return str;
end QtAda6.QtGui.QPageRanges;
