-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsocketnotifier.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSocketNotifier.Type_K;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QSocketNotifier is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   activated : ClassVar_Signal;-- activated(QSocketDescriptor,QSocketNotifier::Type)
   function Create
     (arg_1_P  : Object; arg_2_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create
     (arg_1_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class; parent_P : Optional_QtAda6_QtCore_QObject)
      return Class;
   function Create
     (socket_P : int; arg_2_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function isEnabled (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   procedure setEnabled (self : access Inst; arg_1_P : bool);
   procedure setSocket (self : access Inst; socket_P : int);
   function socket (self : access Inst) return int;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
end QtAda6.QtCore.QSocketNotifier;
