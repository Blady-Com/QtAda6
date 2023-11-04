-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfiledialog.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtWidgets.QFileDialog.AcceptMode;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QDir;
with QtAda6.QtCore.QUrl;
with QtAda6.QtWidgets.QFileDialog.FileMode;
with QtAda6.QtCore.QDir.Filter;
with QtAda6.QtWidgets.QFileDialog.Option;
with QtAda6.QtGui.QAbstractFileIconProvider;
with QtAda6.QtWidgets.QAbstractItemDelegate;
with QtAda6.QtWidgets.QFileDialog.DialogLabel;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QAbstractProxyModel;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtWidgets.QFileDialog.ViewMode;
package body QtAda6.QtWidgets.QFileDialog is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; f_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, f_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (parent_P : Optional_QtAda6_QtWidgets_QWidget; caption_P : str; directory_P : str; filter_P : str) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (caption_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (directory_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure accept_K (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accept");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end accept_K;
   function acceptMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.AcceptMode.Class := new QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "acceptMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end acceptMode_F;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, e_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end changeEvent;
   function defaultSuffix (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultSuffix");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end defaultSuffix;
   function directory (self : access Inst) return access QtAda6.QtCore.QDir.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "directory");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end directory;
   function directoryUrl (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "directoryUrl");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end directoryUrl;
   procedure done (self : access Inst; result_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (result_P));
      Result := Object_CallObject (Method, Args, True);
   end done;
   function fileMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.FileMode.Class := new QtAda6.QtWidgets.QFileDialog.FileMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fileMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fileMode_F;
   function filter (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDir.Filter.Class := new QtAda6.QtCore.QDir.Filter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filter");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filter;
   function getExistingDirectory
     (parent_P  : Optional_QtAda6_QtWidgets_QWidget; caption_P : str; dir_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return str
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getExistingDirectory");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (caption_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (dir_P));
      Tuple_SetItem (Args, 3, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end getExistingDirectory;
   function getExistingDirectoryUrl
     (parent_P  : Optional_QtAda6_QtWidgets_QWidget; caption_P : str; dir_P : Union_QtAda6_QtCore_QUrl_str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getExistingDirectoryUrl");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (caption_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, options_P.Python_Proxy);
      Tuple_SetItem (Args, 4, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getExistingDirectoryUrl;
   function getOpenFileName
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str; dir_P : str; filter_P : str;
      selectedFilter_P : str; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return Tuple
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileName");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Unicode_FromString (dir_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (selectedFilter_P));
      Tuple_SetItem (Args, 5, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getOpenFileName;
   function getOpenFileNames
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str; dir_P : str; filter_P : str;
      selectedFilter_P : str; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return Tuple
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileNames");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Unicode_FromString (dir_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (selectedFilter_P));
      Tuple_SetItem (Args, 5, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getOpenFileNames;
   function getOpenFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str;
      dir_P     : Union_QtAda6_QtCore_QUrl_str; filter_P : str; selectedFilter_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str) return Tuple
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileUrl");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (selectedFilter_P));
      Tuple_SetItem (Args, 5, options_P.Python_Proxy);
      Tuple_SetItem (Args, 6, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getOpenFileUrl;
   function getOpenFileUrls
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str;
      dir_P     : Union_QtAda6_QtCore_QUrl_str; filter_P : str; selectedFilter_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str) return Tuple
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileUrls");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (selectedFilter_P));
      Tuple_SetItem (Args, 5, options_P.Python_Proxy);
      Tuple_SetItem (Args, 6, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getOpenFileUrls;
   function getSaveFileName
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str; dir_P : str; filter_P : str;
      selectedFilter_P : str; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return Tuple
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getSaveFileName");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Unicode_FromString (dir_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (selectedFilter_P));
      Tuple_SetItem (Args, 5, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getSaveFileName;
   function getSaveFileUrl
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : Optional_str;
      dir_P     : Union_QtAda6_QtCore_QUrl_str; filter_P : str; selectedFilter_P : str;
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; supportedSchemes_P : Sequence_str) return Tuple
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getSaveFileUrl");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (selectedFilter_P));
      Tuple_SetItem (Args, 5, options_P.Python_Proxy);
      Tuple_SetItem (Args, 6, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getSaveFileUrl;
   function history (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "history");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end history;
   function iconProvider (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QAbstractFileIconProvider.Class := new QtAda6.QtGui.QAbstractFileIconProvider.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iconProvider");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iconProvider;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemDelegate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegate;
   function labelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "labelText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, label_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end labelText;
   function mimeTypeFilters (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeFilters");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end mimeTypeFilters;
   function nameFilters (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nameFilters");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end nameFilters;
   procedure open (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end open;
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Result := Object_CallObject (Method, Args, True);
   end open;
   function options (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.Option.Class := new QtAda6.QtWidgets.QFileDialog.Option.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   function proxyModel (self : access Inst) return access QtAda6.QtCore.QAbstractProxyModel.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractProxyModel.Class := new QtAda6.QtCore.QAbstractProxyModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "proxyModel");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end proxyModel;
   function restoreState (self : access Inst; state_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restoreState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end restoreState;
   procedure saveFileContent (fileContent_P : Union_QtAda6_QtCore_QByteArray_bytes; fileNameHint_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "saveFileContent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (fileNameHint_P));
      Result := Object_CallObject (Method, Args, True);
   end saveFileContent;
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "saveState");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end saveState;
   procedure selectFile (self : access Inst; filename_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filename_P));
      Result := Object_CallObject (Method, Args, True);
   end selectFile;
   procedure selectMimeTypeFilter (self : access Inst; filter_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectMimeTypeFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Result := Object_CallObject (Method, Args, True);
   end selectMimeTypeFilter;
   procedure selectNameFilter (self : access Inst; filter_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectNameFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Result := Object_CallObject (Method, Args, True);
   end selectNameFilter;
   procedure selectUrl (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end selectUrl;
   function selectedFiles (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedFiles");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end selectedFiles;
   function selectedMimeTypeFilter (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedMimeTypeFilter");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end selectedMimeTypeFilter;
   function selectedNameFilter (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedNameFilter");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end selectedNameFilter;
   function selectedUrls (self : access Inst) return List_QtAda6_QtCore_QUrl is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedUrls");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end selectedUrls;
   procedure setAcceptMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAcceptMode;
   procedure setDefaultSuffix (self : access Inst; suffix_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultSuffix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (suffix_P));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultSuffix;
   procedure setDirectory (self : access Inst; directory_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (directory_P));
      Result := Object_CallObject (Method, Args, True);
   end setDirectory;
   procedure setDirectory (self : access Inst; directory_P : Union_QtAda6_QtCore_QDir_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setDirectory;
   procedure setDirectoryUrl (self : access Inst; directory_P : Union_QtAda6_QtCore_QUrl_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectoryUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setDirectoryUrl;
   procedure setFileMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFileMode;
   procedure setFilter (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filters_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFilter;
   procedure setHistory (self : access Inst; paths_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHistory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setHistory;
   procedure setIconProvider (self : access Inst; provider_P : access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconProvider");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, provider_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setIconProvider;
   procedure setItemDelegate (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, delegate_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setItemDelegate;
   procedure setLabelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class; text_P : str)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLabelText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, label_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setLabelText;
   procedure setMimeTypeFilters (self : access Inst; filters_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMimeTypeFilters");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setMimeTypeFilters;
   procedure setNameFilter (self : access Inst; filter_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNameFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Result := Object_CallObject (Method, Args, True);
   end setNameFilter;
   procedure setNameFilters (self : access Inst; filters_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNameFilters");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setNameFilters;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; on_P : bool)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setOption;
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOptions;
   procedure setProxyModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractProxyModel.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProxyModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, model_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setProxyModel;
   procedure setSidebarUrls (self : access Inst; urls_P : Sequence_QtAda6_QtCore_QUrl) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSidebarUrls");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setSidebarUrls;
   procedure setSupportedSchemes (self : access Inst; schemes_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSupportedSchemes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setSupportedSchemes;
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setViewMode;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   function sidebarUrls (self : access Inst) return List_QtAda6_QtCore_QUrl is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sidebarUrls");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end sidebarUrls;
   function supportedSchemes (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportedSchemes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end supportedSchemes;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, option_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testOption;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.ViewMode.Class := new QtAda6.QtWidgets.QFileDialog.ViewMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewMode_F;
end QtAda6.QtWidgets.QFileDialog;
