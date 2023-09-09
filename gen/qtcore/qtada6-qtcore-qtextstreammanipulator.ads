-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtextstreammanipulator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QTextStream;
package QtAda6.QtCore.QTextStreamManipulator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   procedure U_copy_U;
   procedure exec (self : access Inst; s_P : access QtAda6.QtCore.QTextStream.Inst'Class);
   procedure exec_U (self : access Inst; arg_1_P : access QtAda6.QtCore.QTextStream.Inst'Class);
end QtAda6.QtCore.QTextStreamManipulator;
