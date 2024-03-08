-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdynamicpropertychangeevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QEvent;
package QtAda6.QtCore.QDynamicPropertyChangeEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtCore.QDynamicPropertyChangeEvent.Inst'Class) return Class;
   function Create (name_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class;
   function clone (self : access Inst) return access QtAda6.QtCore.QDynamicPropertyChangeEvent.Inst'Class;
   function propertyName (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
end QtAda6.QtCore.QDynamicPropertyChangeEvent;
