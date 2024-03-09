-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qwizard.adb
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
with QtAda6.QtWidgets.QWizardPage;
with QtAda6.QtWidgets.QWizard.WizardButton;
with QtAda6.QtWidgets.QAbstractButton;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QWizard.WizardOption;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QWizard.WizardPixmap;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.Qt.TextFormat;
with QtAda6.QtWidgets.QWizard.WizardStyle;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QWizard is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function currentIdChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentIdChanged"));
   end currentIdChanged;
   function customButtonClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "customButtonClicked"));
   end customButtonClicked;
   function helpRequested (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "helpRequested"));
   end helpRequested;
   function pageAdded (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "pageAdded"));
   end pageAdded;
   function pageRemoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "pageRemoved"));
   end pageRemoved;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function addPage (self : access Inst; page_P : access QtAda6.QtWidgets.QWizardPage.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if page_P /= null then page_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end addPage;
   procedure back (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "back");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end back;
   function button
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class)
      return access QtAda6.QtWidgets.QAbstractButton.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractButton.Class := new QtAda6.QtWidgets.QAbstractButton.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "button");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end button;
   function buttonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttonText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end buttonText;
   procedure cleanupPage (self : access Inst; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cleanupPage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cleanupPage;
   function currentId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentId;
   function currentPage (self : access Inst) return access QtAda6.QtWidgets.QWizardPage.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWizardPage.Class := new QtAda6.QtWidgets.QWizardPage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentPage");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentPage;
   procedure done (self : access Inst; result_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "done");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (result_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end done;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function field (self : access Inst; name_P : str) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "field");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end field;
   function hasVisitedPage (self : access Inst; id_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasVisitedPage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasVisitedPage;
   procedure initializePage (self : access Inst; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initializePage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initializePage;
   procedure next (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "next");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end next;
   function nextId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nextId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end nextId;
   function options (self : access Inst) return access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWizard.WizardOption.Class := new QtAda6.QtWidgets.QWizard.WizardOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   function page (self : access Inst; id_P : int) return access QtAda6.QtWidgets.QWizardPage.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWizardPage.Class := new QtAda6.QtWidgets.QWizardPage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "page");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end page;
   function pageIds (self : access Inst) return LIST_int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pageIds");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end pageIds;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   function pixmap
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   procedure removePage (self : access Inst; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removePage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removePage;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   procedure restart (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restart");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end restart;
   procedure setButton
     (self     : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class;
      button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setButton");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setButton;
   procedure setButtonLayout (self : access Inst; layout_P : SEQUENCE_QtAda6_QtWidgets_QWizard_WizardButton) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setButtonLayout");
      List   := List_New (layout_P'Length);
      for ind in layout_P'Range loop
         List_SetItem
           (List, ssize_t (ind - layout_P'First),
            (if layout_P (ind) /= null then layout_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setButtonLayout;
   procedure setButtonText
     (self : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardButton.Inst'Class; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setButtonText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setButtonText;
   procedure setCurrentId (self : access Inst; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentId;
   procedure setDefaultProperty (self : access Inst; className_P : bytes; property_P : bytes; changedSignal_P : bytes)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultProperty");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (className_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (property_P)));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (changedSignal_P)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDefaultProperty;
   procedure setField (self : access Inst; name_P : str; value_P : Any) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setField");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setField;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class; on_P : bool := False)
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
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptions;
   procedure setPage (self : access Inst; id_P : int; page_P : access QtAda6.QtWidgets.QWizardPage.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Tuple_SetItem (Args, 1, (if page_P /= null then page_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPage;
   procedure setPixmap
     (self     : access Inst; which_P : access QtAda6.QtWidgets.QWizard.WizardPixmap.Inst'Class;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixmap;
   procedure setSideWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSideWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSideWidget;
   procedure setStartId (self : access Inst; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStartId;
   procedure setSubTitleFormat (self : access Inst; format_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSubTitleFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSubTitleFormat;
   procedure setTitleFormat (self : access Inst; format_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTitleFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTitleFormat;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
   procedure setWizardStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QWizard.WizardStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWizardStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWizardStyle;
   function sideWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sideWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sideWidget;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function startId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end startId;
   function subTitleFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextFormat.Class := new QtAda6.QtCore.Qt.TextFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "subTitleFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subTitleFormat;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QWizard.WizardOption.Inst'Class) return bool
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
   function titleFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextFormat.Class := new QtAda6.QtCore.Qt.TextFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "titleFormat");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end titleFormat;
   function validateCurrentPage (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "validateCurrentPage");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end validateCurrentPage;
   function visitedIds (self : access Inst) return LIST_int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visitedIds");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end visitedIds;
   function wizardStyle_F (self : access Inst) return access QtAda6.QtWidgets.QWizard.WizardStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWizard.WizardStyle.Class := new QtAda6.QtWidgets.QWizard.WizardStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "wizardStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end wizardStyle_F;
end QtAda6.QtWidgets.QWizard;
