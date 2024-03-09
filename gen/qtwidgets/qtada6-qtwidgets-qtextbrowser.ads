-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtextbrowser.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QTextDocument.ResourceType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtCore.QUrl;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QTextEdit;
package QtAda6.QtWidgets.QTextBrowser is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QTextEdit.Inst with null record;
   type UNION_QtAda6_QtCore_QUrl_str is new Any;
   type LIST_str is array (Positive range <>) of str;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function anchorClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- anchorClicked(QUrl)
   function backwardAvailable
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- backwardAvailable(bool)
   function forwardAvailable
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- forwardAvailable(bool)
   function highlighted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- highlighted(QUrl)
   function historyChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- historyChanged()
   function sourceChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- sourceChanged(QUrl)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure backward (self : access Inst);
   function backwardHistoryCount (self : access Inst) return int;
   procedure clearHistory (self : access Inst);
   procedure doSetSource
     (self     : access Inst; name_P : UNION_QtAda6_QtCore_QUrl_str;
      type_K_P : access QtAda6.QtGui.QTextDocument.ResourceType.Inst'Class := null);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; ev_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure forward (self : access Inst);
   function forwardHistoryCount (self : access Inst) return int;
   function historyTitle (self : access Inst; arg_1_P : int) return str;
   function historyUrl (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QUrl.Inst'Class;
   procedure home (self : access Inst);
   function isBackwardAvailable (self : access Inst) return bool;
   function isForwardAvailable (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function loadResource (self : access Inst; type_K_P : int; name_P : UNION_QtAda6_QtCore_QUrl_str) return Any;
   procedure mouseMoveEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; ev_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function openExternalLinks (self : access Inst) return bool;
   function openLinks (self : access Inst) return bool;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure reload (self : access Inst);
   function searchPaths (self : access Inst) return LIST_str;
   procedure setOpenExternalLinks (self : access Inst; open_P : bool);
   procedure setOpenLinks (self : access Inst; open_P : bool);
   procedure setSearchPaths (self : access Inst; paths_P : SEQUENCE_str);
   procedure setSource
     (self     : access Inst; name_P : UNION_QtAda6_QtCore_QUrl_str;
      type_K_P : access QtAda6.QtGui.QTextDocument.ResourceType.Inst'Class := null);
   function source (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class;
   function sourceType (self : access Inst) return access QtAda6.QtGui.QTextDocument.ResourceType.Inst'Class;
end QtAda6.QtWidgets.QTextBrowser;
