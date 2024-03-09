-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfiledialog.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Signal;
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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function currentChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentChanged"));
   end currentChanged;
   function currentUrlChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentUrlChanged"));
   end currentUrlChanged;
   function directoryEntered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "directoryEntered"));
   end directoryEntered;
   function directoryUrlEntered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "directoryUrlEntered"));
   end directoryUrlEntered;
   function fileSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "fileSelected"));
   end fileSelected;
   function filesSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "filesSelected"));
   end filesSelected;
   function filterSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "filterSelected"));
   end filterSelected;
   function urlSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "urlSelected"));
   end urlSelected;
   function urlsSelected (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "urlsSelected"));
   end urlsSelected;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; f_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; caption_P : str := ""; directory_P : str := "";
      filter_P : str                                        := "") return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if directory_P /= "" then
         Dict_SetItemString (Dict, "directory", Unicode_FromString (directory_P));
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure accept_K (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accept");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end accept_K;
   function acceptMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.AcceptMode.Class := new QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "acceptMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end acceptMode_F;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   function defaultSuffix (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultSuffix");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end defaultSuffix;
   function directory (self : access Inst) return access QtAda6.QtCore.QDir.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "directory");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end directory;
   function directoryUrl (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "directoryUrl");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end directoryUrl;
   procedure done (self : access Inst; result_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (result_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end done;
   function fileMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.FileMode.Class := new QtAda6.QtWidgets.QFileDialog.FileMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fileMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fileMode_F;
   function filter (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.Filter.Class := new QtAda6.QtCore.QDir.Filter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filter");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filter;
   function getExistingDirectory
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class := null; caption_P : str := ""; dir_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return str
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getExistingDirectory");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= "" then
         Dict_SetItemString (Dict, "dir", Unicode_FromString (dir_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end getExistingDirectory;
   function getExistingDirectoryUrl
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class            := null; caption_P : str := "";
      dir_P              : UNION_QtAda6_QtCore_QUrl_str                          := null;
      options_P          : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null;
      supportedSchemes_P : SEQUENCE_str := (2 .. 1 => <>)) return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                            : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getExistingDirectoryUrl");
      List   := List_New (supportedSchemes_P'Length);
      for ind in supportedSchemes_P'Range loop
         List_SetItem (List, ssize_t (ind - supportedSchemes_P'First), Unicode_FromString (supportedSchemes_P (ind)));
      end loop;
      Args := Tuple_New (0);
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= null then
         Dict_SetItemString (Dict, "dir", dir_P.Python_Proxy);
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      if supportedSchemes_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "supportedSchemes", List);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getExistingDirectoryUrl;
   function getOpenFileName
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= "" then
         Dict_SetItemString (Dict, "dir", Unicode_FromString (dir_P));
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      if selectedFilter_P /= "" then
         Dict_SetItemString (Dict, "selectedFilter", Unicode_FromString (selectedFilter_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getOpenFileName;
   function getOpenFileNames
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileNames");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= "" then
         Dict_SetItemString (Dict, "dir", Unicode_FromString (dir_P));
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      if selectedFilter_P /= "" then
         Dict_SetItemString (Dict, "selectedFilter", Unicode_FromString (selectedFilter_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getOpenFileNames;
   function getOpenFileUrl
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := "";
      dir_P              : UNION_QtAda6_QtCore_QUrl_str := null; filter_P : str := ""; selectedFilter_P : str := "";
      options_P          : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null;
      supportedSchemes_P : SEQUENCE_str                                          := (2 .. 1 => <>)) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileUrl");
      List   := List_New (supportedSchemes_P'Length);
      for ind in supportedSchemes_P'Range loop
         List_SetItem (List, ssize_t (ind - supportedSchemes_P'First), Unicode_FromString (supportedSchemes_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= null then
         Dict_SetItemString (Dict, "dir", dir_P.Python_Proxy);
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      if selectedFilter_P /= "" then
         Dict_SetItemString (Dict, "selectedFilter", Unicode_FromString (selectedFilter_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      if supportedSchemes_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "supportedSchemes", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getOpenFileUrl;
   function getOpenFileUrls
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := "";
      dir_P              : UNION_QtAda6_QtCore_QUrl_str := null; filter_P : str := ""; selectedFilter_P : str := "";
      options_P          : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null;
      supportedSchemes_P : SEQUENCE_str                                          := (2 .. 1 => <>)) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getOpenFileUrls");
      List   := List_New (supportedSchemes_P'Length);
      for ind in supportedSchemes_P'Range loop
         List_SetItem (List, ssize_t (ind - supportedSchemes_P'First), Unicode_FromString (supportedSchemes_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= null then
         Dict_SetItemString (Dict, "dir", dir_P.Python_Proxy);
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      if selectedFilter_P /= "" then
         Dict_SetItemString (Dict, "selectedFilter", Unicode_FromString (selectedFilter_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      if supportedSchemes_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "supportedSchemes", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getOpenFileUrls;
   function getSaveFileName
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := ""; dir_P : str := "";
      filter_P  : str                                                   := ""; selectedFilter_P : str := "";
      options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getSaveFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= "" then
         Dict_SetItemString (Dict, "dir", Unicode_FromString (dir_P));
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      if selectedFilter_P /= "" then
         Dict_SetItemString (Dict, "selectedFilter", Unicode_FromString (selectedFilter_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getSaveFileName;
   function getSaveFileUrl
     (parent_P           : access QtAda6.QtWidgets.QWidget.Inst'Class; caption_P : str := "";
      dir_P              : UNION_QtAda6_QtCore_QUrl_str := null; filter_P : str := ""; selectedFilter_P : str := "";
      options_P          : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class := null;
      supportedSchemes_P : SEQUENCE_str                                          := (2 .. 1 => <>)) return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "getSaveFileUrl");
      List   := List_New (supportedSchemes_P'Length);
      for ind in supportedSchemes_P'Range loop
         List_SetItem (List, ssize_t (ind - supportedSchemes_P'First), Unicode_FromString (supportedSchemes_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if caption_P /= "" then
         Dict_SetItemString (Dict, "caption", Unicode_FromString (caption_P));
      end if;
      if dir_P /= null then
         Dict_SetItemString (Dict, "dir", dir_P.Python_Proxy);
      end if;
      if filter_P /= "" then
         Dict_SetItemString (Dict, "filter", Unicode_FromString (filter_P));
      end if;
      if selectedFilter_P /= "" then
         Dict_SetItemString (Dict, "selectedFilter", Unicode_FromString (selectedFilter_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      if supportedSchemes_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "supportedSchemes", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end getSaveFileUrl;
   function history (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "history");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end history;
   function iconProvider (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAbstractFileIconProvider.Class := new QtAda6.QtGui.QAbstractFileIconProvider.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iconProvider");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iconProvider;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemDelegate");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegate;
   function labelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "labelText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if label_P /= null then label_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end labelText;
   function mimeTypeFilters (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeFilters");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end mimeTypeFilters;
   function nameFilters (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nameFilters");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end nameFilters;
   procedure open (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end open;
   function options (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.Option.Class := new QtAda6.QtWidgets.QFileDialog.Option.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   function proxyModel (self : access Inst) return access QtAda6.QtCore.QAbstractProxyModel.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractProxyModel.Class := new QtAda6.QtCore.QAbstractProxyModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "proxyModel");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end proxyModel;
   function restoreState (self : access Inst; state_P : UNION_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restoreState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end restoreState;
   procedure saveFileContent (fileContent_P : UNION_QtAda6_QtCore_QByteArray_bytes; fileNameHint_P : str := "") is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFileDialog");
      Method := Object_GetAttrString (Class, "saveFileContent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fileContent_P /= null then fileContent_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if fileNameHint_P /= "" then
         Dict_SetItemString (Dict, "fileNameHint", Unicode_FromString (fileNameHint_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end saveFileContent;
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "saveState");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end saveState;
   procedure selectFile (self : access Inst; filename_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filename_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectFile;
   procedure selectMimeTypeFilter (self : access Inst; filter_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectMimeTypeFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectMimeTypeFilter;
   procedure selectNameFilter (self : access Inst; filter_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectNameFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectNameFilter;
   procedure selectUrl (self : access Inst; url_P : UNION_QtAda6_QtCore_QUrl_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectUrl;
   function selectedFiles (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedFiles");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end selectedFiles;
   function selectedMimeTypeFilter (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedMimeTypeFilter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end selectedMimeTypeFilter;
   function selectedNameFilter (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedNameFilter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end selectedNameFilter;
   function selectedUrls (self : access Inst) return LIST_QtAda6_QtCore_QUrl is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedUrls");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end selectedUrls;
   procedure setAcceptMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.AcceptMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAcceptMode;
   procedure setDefaultSuffix (self : access Inst; suffix_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultSuffix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (suffix_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDefaultSuffix;
   procedure setDirectory (self : access Inst; directory_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (directory_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDirectory;
   procedure setDirectory (self : access Inst; directory_P : UNION_QtAda6_QtCore_QDir_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if directory_P /= null then directory_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDirectory;
   procedure setDirectoryUrl (self : access Inst; directory_P : UNION_QtAda6_QtCore_QUrl_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectoryUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if directory_P /= null then directory_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDirectoryUrl;
   procedure setFileMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.FileMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFileMode;
   procedure setFilter (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if filters_P /= null then filters_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilter;
   procedure setHistory (self : access Inst; paths_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHistory");
      List   := List_New (paths_P'Length);
      for ind in paths_P'Range loop
         List_SetItem (List, ssize_t (ind - paths_P'First), Unicode_FromString (paths_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHistory;
   procedure setIconProvider (self : access Inst; provider_P : access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconProvider");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if provider_P /= null then provider_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIconProvider;
   procedure setItemDelegate (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if delegate_P /= null then delegate_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemDelegate;
   procedure setLabelText
     (self : access Inst; label_P : access QtAda6.QtWidgets.QFileDialog.DialogLabel.Inst'Class; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLabelText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if label_P /= null then label_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLabelText;
   procedure setMimeTypeFilters (self : access Inst; filters_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMimeTypeFilters");
      List   := List_New (filters_P'Length);
      for ind in filters_P'Range loop
         List_SetItem (List, ssize_t (ind - filters_P'First), Unicode_FromString (filters_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMimeTypeFilters;
   procedure setNameFilter (self : access Inst; filter_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNameFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setNameFilter;
   procedure setNameFilters (self : access Inst; filters_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNameFilters");
      List   := List_New (filters_P'Length);
      for ind in filters_P'Range loop
         List_SetItem (List, ssize_t (ind - filters_P'First), Unicode_FromString (filters_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setNameFilters;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class; on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setOption;
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptions;
   procedure setProxyModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractProxyModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProxyModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setProxyModel;
   procedure setSidebarUrls (self : access Inst; urls_P : SEQUENCE_QtAda6_QtCore_QUrl) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSidebarUrls");
      List   := List_New (urls_P'Length);
      for ind in urls_P'Range loop
         List_SetItem
           (List, ssize_t (ind - urls_P'First), (if urls_P (ind) /= null then urls_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSidebarUrls;
   procedure setSupportedSchemes (self : access Inst; schemes_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSupportedSchemes");
      List   := List_New (schemes_P'Length);
      for ind in schemes_P'Range loop
         List_SetItem (List, ssize_t (ind - schemes_P'First), Unicode_FromString (schemes_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSupportedSchemes;
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setViewMode;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
   function sidebarUrls (self : access Inst) return LIST_QtAda6_QtCore_QUrl is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sidebarUrls");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end sidebarUrls;
   function supportedSchemes (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportedSchemes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end supportedSchemes;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileDialog.Option.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end testOption;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QFileDialog.ViewMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QFileDialog.ViewMode.Class := new QtAda6.QtWidgets.QFileDialog.ViewMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewMode_F;
end QtAda6.QtWidgets.QFileDialog;
