-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstractnativeeventfilter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QAbstractNativeEventFilter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function nativeEventFilter
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArray_bytes; message_P : int)
      return access Object'Class;
end QtAda6.QtCore.QAbstractNativeEventFilter;
