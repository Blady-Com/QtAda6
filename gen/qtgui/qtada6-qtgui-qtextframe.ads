-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextframe.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextFrame.iterator;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtGui.QTextFrameFormat;
with QtAda6.QtGui.QTextObject;
package QtAda6.QtGui.QTextFrame is
   type List_QtAda6_QtGui_QTextFrame is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QTextObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function U_iter_U (self : access Inst) return Object;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextFrame.iterator.Inst'Class;
   function childFrames (self : access Inst) return List_QtAda6_QtGui_QTextFrame;
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextFrame.iterator.Inst'Class;
   function firstCursorPosition (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function firstPosition (self : access Inst) return int;
   function frameFormat (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Inst'Class;
   function lastCursorPosition (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function lastPosition (self : access Inst) return int;
   function parentFrame (self : access Inst) return access QtAda6.QtGui.QTextFrame.Inst'Class;
   procedure setFrameFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class);
end QtAda6.QtGui.QTextFrame;
