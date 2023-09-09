-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcalendar-yearmonthday.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCalendar.YearMonthDay is
   type Union_QtAda6_QtCore_QCalendar_YearMonthDay_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (YearMonthDay_P : Union_QtAda6_QtCore_QCalendar_YearMonthDay_int) return Class;
   function Create (y_P : int; m_P : int; d_P : int) return Class;
   procedure U_copy_U;
   function isValid (self : access Inst) return bool;
end QtAda6.QtCore.QCalendar.YearMonthDay;
