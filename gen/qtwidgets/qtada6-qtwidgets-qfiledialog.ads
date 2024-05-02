-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfiledialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtWidgets.QFileDialog.AcceptMode;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QDir;
limited with QtAda6.QtCore.QUrl;
limited with QtAda6.QtWidgets.QFileDialog.FileMode;
limited with QtAda6.QtCore.QDir.Filter;
limited with QtAda6.QtWidgets.QFileDialog.Option;
limited with QtAda6.QtGui.QAbstractFileIconProvider;
limited with QtAda6.QtWidgets.QAbstractItemDelegate;
limited with QtAda6.QtWidgets.QFileDialog.DialogLabel;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QAbstractProxyModel;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtWidgets.QFileDialog.ViewMode;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QFileDialog is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type TUPLE is null record;
   type LIST_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtCore_QUrl is QtAda6.QtCore.QUrl.Class_Array;
   subtype SEQUENCE_QtAda6_QtCore_QUrl is QtAda6.QtCore.QUrl.Class_Array;
   procedure Finalize (Self : in out Class);
   function currentChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentChanged(QString)
   function currentUrlChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentUrlChanged(QUrl)
   function directoryEntered
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- directoryEntered(QString)
   function directoryUrlEntered
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- directoryUrlEntered(QUrl)
   function fileSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- fileSelected(QString)
   function filesSelected
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- filesSelected(QStringList)
   function filterSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- filterSelected(QString)
   function urlSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- urlSelected(QUrl)
   function urlsSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- urlsSelected(QList<QUrl>)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; f_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Class;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; caption_P : str := ""; directory_P : str := "";
      filter_P : str                                        := "") return Class;
   procedure accept_K (self : access Inst);
   function acceptMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function defaultSuffix (self : access Inst) return str;
   function directory (self : access Inst) return access QtAda6.QtCore.QDir.Inst'Class;
   function directoryUrl (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class;
   procedure done (self : access Inst; result_P : int);
   function fileMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class;
   function filter (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class;
   function getExistingDirectory
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null; caption_P : str := ""; dir_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return str;
   function getExistingDirectoryUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class            := null; caption_P : str := "";
      dir_P     : access QtAda6.QtCore.QUrl.Inst'Class                  := null;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function getExistingDirectoryUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null; caption_P : str := ""; dir_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function getOpenFileName
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return TUPLE;
   function getOpenFileNames
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return TUPLE;
   function getOpenFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := "";
      dir_P     : access QtAda6.QtCore.QUrl.Inst'Class := null; filter_P : str := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return TUPLE;
   function getOpenFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return TUPLE;
   function getOpenFileUrls
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := "";
      dir_P     : access QtAda6.QtCore.QUrl.Inst'Class := null; filter_P : str := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return TUPLE;
   function getOpenFileUrls
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return TUPLE;
   function getSaveFileName
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return TUPLE;
   function getSaveFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := "";
      dir_P     : access QtAda6.QtCore.QUrl.Inst'Class := null; filter_P : str := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return TUPLE;
   function getSaveFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null; supportedSchemes_P : SEQUENCE_str)
      return TUPLE;
   function history (self : access Inst) return LIST_str;
   function iconProvider (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function labelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class) return str;
   function mimeTypeFilters (self : access Inst) return LIST_str;
   function nameFilters (self : access Inst) return LIST_str;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   function options (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class;
   function proxyModel (self : access Inst) return access QtAda6.QtCore.QAbstractProxyModel.Inst'Class;
   function restoreState (self : access Inst; state_P : access QtAda6.QtCore.QByteArray.Inst'Class) return bool;
   function restoreState (self : access Inst; state_P : bytes) return bool;
   procedure saveFileContent (fileContent_P : access QtAda6.QtCore.QByteArray.Inst'Class; fileNameHint_P : str := "");
   procedure saveFileContent (fileContent_P : bytes; fileNameHint_P : str := "");
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure selectFile (self : access Inst; filename_P : str);
   procedure selectMimeTypeFilter (self : access Inst; filter_P : str);
   procedure selectNameFilter (self : access Inst; filter_P : str);
   procedure selectUrl (self : access Inst; url_P : access QtAda6.QtCore.QUrl.Inst'Class);
   procedure selectUrl (self : access Inst; url_P : str);
   function selectedFiles (self : access Inst) return LIST_str;
   function selectedMimeTypeFilter (self : access Inst) return str;
   function selectedNameFilter (self : access Inst) return str;
   function selectedUrls (self : access Inst) return LIST_QtAda6_QtCore_QUrl;
   procedure setAcceptMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class);
   procedure setDefaultSuffix (self : access Inst; suffix_P : str);
   procedure setDirectory (self : access Inst; directory_P : str);
   procedure setDirectory (self : access Inst; directory_P : access QtAda6.QtCore.QDir.Inst'Class);
-- procedure setDirectory(self : access Inst;directory_P : str);
   procedure setDirectoryUrl (self : access Inst; directory_P : access QtAda6.QtCore.QUrl.Inst'Class);
   procedure setDirectoryUrl (self : access Inst; directory_P : str);
   procedure setFileMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class);
   procedure setFilter (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class);
   procedure setHistory (self : access Inst; paths_P : SEQUENCE_str);
   procedure setIconProvider
     (self : access Inst; provider_P : access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class);
   procedure setItemDelegate
     (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setLabelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class; text_P : str);
   procedure setMimeTypeFilters (self : access Inst; filters_P : SEQUENCE_str);
   procedure setNameFilter (self : access Inst; filter_P : str);
   procedure setNameFilters (self : access Inst; filters_P : SEQUENCE_str);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; on_P : bool := False);
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class);
   procedure setProxyModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractProxyModel.Inst'Class);
   procedure setSidebarUrls (self : access Inst; urls_P : SEQUENCE_QtAda6_QtCore_QUrl);
   procedure setSupportedSchemes (self : access Inst; schemes_P : SEQUENCE_str);
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   function sidebarUrls (self : access Inst) return LIST_QtAda6_QtCore_QUrl;
   function supportedSchemes (self : access Inst) return LIST_str;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return bool;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class;
end QtAda6.QtWidgets.QFileDialog;
