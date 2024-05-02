-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcompleter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.Qt.CaseSensitivity;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QCompleter.CompletionMode;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtWidgets.QCompleter.ModelSorting;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtWidgets.QAbstractItemView;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QCompleter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function activated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- activated(QString)
   function highlighted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- highlighted(QString)
   function Create
     (completions_P : SEQUENCE_str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function caseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class;
   procedure complete (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null);
   function completionColumn (self : access Inst) return int;
   function completionCount (self : access Inst) return int;
   function completionMode_F (self : access Inst) return access QtAda6.QtWidgets.QCompleter.CompletionMode.Inst'Class;
   function completionModel (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   function completionPrefix (self : access Inst) return str;
   function completionRole (self : access Inst) return int;
   function currentCompletion (self : access Inst) return str;
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function currentRow (self : access Inst) return int;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self : access Inst; o_P : access QtAda6.QtCore.QObject.Inst'Class; e_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return bool;
   function filterMode (self : access Inst) return access QtAda6.QtCore.Qt.MatchFlag.Inst'Class;
   function maxVisibleItems (self : access Inst) return int;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   function modelSorting_F (self : access Inst) return access QtAda6.QtWidgets.QCompleter.ModelSorting.Inst'Class;
   function pathFromIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return str;
   function pathFromIndex
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return str;
   function popup (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.Inst'Class;
   procedure setCaseSensitivity
     (self : access Inst; caseSensitivity_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class);
   procedure setCompletionColumn (self : access Inst; column_P : int);
   procedure setCompletionMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QCompleter.CompletionMode.Inst'Class);
   procedure setCompletionPrefix (self : access Inst; prefix_P : str);
   procedure setCompletionRole (self : access Inst; role_P : int);
   function setCurrentRow (self : access Inst; row_P : int) return bool;
   procedure setFilterMode (self : access Inst; filterMode_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class);
   procedure setMaxVisibleItems (self : access Inst; maxItems_P : int);
   procedure setModel (self : access Inst; c_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setModelSorting
     (self : access Inst; sorting_P : access QtAda6.QtWidgets.QCompleter.ModelSorting.Inst'Class);
   procedure setPopup (self : access Inst; popup_P : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class);
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setWrapAround (self : access Inst; wrap_P : bool);
   function splitPath (self : access Inst; path_P : str) return LIST_str;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function wrapAround (self : access Inst) return bool;
end QtAda6.QtWidgets.QCompleter;
