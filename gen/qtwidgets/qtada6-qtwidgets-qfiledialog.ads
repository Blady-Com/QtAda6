-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfiledialog.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
package QtAda6.QtWidgets.QFileDialog is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtCore_QUrl_str is access Any;
   type Sequence_str is access Any;
   type Optional_str is access Any;
   type List_str is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type List_QtAda6_QtCore_QUrl is access Any;
   type Union_QtAda6_QtCore_QDir_str is access Any;
   type Sequence_QtAda6_QtCore_QUrl is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   procedure Finalize (Self : in out Class);
   currentChanged      : ClassVar_Signal;-- currentChanged(QString)
   currentUrlChanged   : ClassVar_Signal;-- currentUrlChanged(QUrl)
   directoryEntered    : ClassVar_Signal;-- directoryEntered(QString)
   directoryUrlEntered : ClassVar_Signal;-- directoryUrlEntered(QUrl)
   fileSelected        : ClassVar_Signal;-- fileSelected(QString)
   filesSelected       : ClassVar_Signal;-- filesSelected(QStringList)
   filterSelected      : ClassVar_Signal;-- filterSelected(QString)
   urlSelected         : ClassVar_Signal;-- urlSelected(QUrl)
   urlsSelected        : ClassVar_Signal;-- urlsSelected(QList<QUrl>)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; f_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Class;
   function Create
     (parent_P : Optional_QtAda6_QtWidgets_QWidget; caption_P : str; directory_P : str; filter_P : str) return Class;
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
     (parent_P  : Optional_QtAda6_QtWidgets_QWidget; caption_P : str; dir_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return str;
   function getExistingDirectoryUrl
     (parent_P  : Optional_QtAda6_QtWidgets_QWidget; caption_P : str; dir_P : Union_QtAda6_QtCore_QUrl_str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function getOpenFileName
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str; dir_P : str; filter_P : str;
      selectedFilter_P : str; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return Tuple;
   function getOpenFileNames
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str; dir_P : str; filter_P : str;
      selectedFilter_P : str; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return Tuple;
   function getOpenFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str;
      dir_P     : Union_QtAda6_QtCore_QUrl_str; filter_P : str; selectedFilter_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str)
      return Tuple;
   function getOpenFileUrls
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str;
      dir_P     : Union_QtAda6_QtCore_QUrl_str; filter_P : str; selectedFilter_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str)
      return Tuple;
   function getSaveFileName
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str; dir_P : str; filter_P : str;
      selectedFilter_P : str; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return Tuple;
   function getSaveFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str;
      dir_P     : Union_QtAda6_QtCore_QUrl_str; filter_P : str; selectedFilter_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str)
      return Tuple;
   function history (self : access Inst) return List_str;
   function iconProvider (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function labelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class) return str;
   function mimeTypeFilters (self : access Inst) return List_str;
   function nameFilters (self : access Inst) return List_str;
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   function options (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class;
   function proxyModel (self : access Inst) return access QtAda6.QtCore.QAbstractProxyModel.Inst'Class;
   function restoreState (self : access Inst; state_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool;
   procedure saveFileContent (fileContent_P : Union_QtAda6_QtCore_QByteArray_bytes; fileNameHint_P : str);
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure selectFile (self : access Inst; filename_P : str);
   procedure selectMimeTypeFilter (self : access Inst; filter_P : str);
   procedure selectNameFilter (self : access Inst; filter_P : str);
   procedure selectUrl (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str);
   function selectedFiles (self : access Inst) return List_str;
   function selectedMimeTypeFilter (self : access Inst) return str;
   function selectedNameFilter (self : access Inst) return str;
   function selectedUrls (self : access Inst) return List_QtAda6_QtCore_QUrl;
   procedure setAcceptMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class);
   procedure setDefaultSuffix (self : access Inst; suffix_P : str);
   procedure setDirectory (self : access Inst; directory_P : str);
   procedure setDirectory (self : access Inst; directory_P : Union_QtAda6_QtCore_QDir_str);
   procedure setDirectoryUrl (self : access Inst; directory_P : Union_QtAda6_QtCore_QUrl_str);
   procedure setFileMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class);
   procedure setFilter (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class);
   procedure setHistory (self : access Inst; paths_P : Sequence_str);
   procedure setIconProvider
     (self : access Inst; provider_P : access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class);
   procedure setItemDelegate
     (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setLabelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class; text_P : str);
   procedure setMimeTypeFilters (self : access Inst; filters_P : Sequence_str);
   procedure setNameFilter (self : access Inst; filter_P : str);
   procedure setNameFilters (self : access Inst; filters_P : Sequence_str);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; on_P : bool);
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class);
   procedure setProxyModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractProxyModel.Inst'Class);
   procedure setSidebarUrls (self : access Inst; urls_P : Sequence_QtAda6_QtCore_QUrl);
   procedure setSupportedSchemes (self : access Inst; schemes_P : Sequence_str);
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   function sidebarUrls (self : access Inst) return List_QtAda6_QtCore_QUrl;
   function supportedSchemes (self : access Inst) return List_str;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return bool;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class;
end QtAda6.QtWidgets.QFileDialog;
