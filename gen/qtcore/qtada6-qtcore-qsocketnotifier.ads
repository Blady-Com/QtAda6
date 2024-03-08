-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsocketnotifier.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QSocketNotifier.Type_K;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QSocketNotifier is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function activated
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- activated(QSocketDescriptor,QSocketNotifier::Type)
   function Create
     (arg_1_P  : access Object'Class; arg_2_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (arg_1_P  : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (socket_P : int; arg_2_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function isEnabled (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   procedure setEnabled (self : access Inst; arg_1_P : bool);
   procedure setSocket (self : access Inst; socket_P : int);
   function socket (self : access Inst) return int;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
end QtAda6.QtCore.QSocketNotifier;
