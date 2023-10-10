-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qabstracttextdocumentlayout-paintcontext.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (PaintContext_P : access QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext.Inst'Class) return Class;
   procedure U_copy_U;
end QtAda6.QtGui.QAbstractTextDocumentLayout.PaintContext;
