-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextobjectinterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextFormat;
limited with QtAda6.QtCore.QSizeF;
package QtAda6.QtGui.QTextObjectInterface is
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure drawObject
     (self            : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class;
      posInDocument_P : int; format_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   function intrinsicSize
     (self     : access Inst; doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class; posInDocument_P : int;
      format_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class;
end QtAda6.QtGui.QTextObjectInterface;
