-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibleeditabletextinterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessibleEditableTextInterface is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure deleteText (self : access Inst; startOffset_P : int; endOffset_P : int);
   procedure insertText (self : access Inst; offset_P : int; text_P : str);
   procedure replaceText (self : access Inst; startOffset_P : int; endOffset_P : int; text_P : str);
end QtAda6.QtGui.QAccessibleEditableTextInterface;
