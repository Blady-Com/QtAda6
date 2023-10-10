-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpdfwriter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtGui.QPagedPaintDevice.PdfVersion;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPagedPaintDevice;
package QtAda6.QtGui.QPdfWriter is
type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtGui.QPagedPaintDevice.Inst
 with null record;
procedure Finalize (Self : in out Class);
function Create(device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
function Create(filename_P : str) return Class;
procedure addFileAttachment(self : access Inst;fileName_P : str;data_P : Union_QtAda6_QtCore_QByteArray_bytes;mimeType_P : str);
function creator(self : access Inst) return str;
function documentXmpMetadata(self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
function metric(self : access Inst;id_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
function newPage(self : access Inst) return bool;
function paintEngine(self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
function pdfVersion(self : access Inst) return access QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst'Class;
function resolution(self : access Inst) return int;
procedure setCreator(self : access Inst;creator_P : str);
procedure setDocumentXmpMetadata(self : access Inst;xmpMetadata_P : Union_QtAda6_QtCore_QByteArray_bytes);
procedure setPdfVersion(self : access Inst;version_P : access QtAda6.QtGui.QPagedPaintDevice.PdfVersion.Inst'Class);
procedure setResolution(self : access Inst;resolution_P : int);
procedure setTitle(self : access Inst;title_P : str);
function title(self : access Inst) return str;
end QtAda6.QtGui.QPdfWriter;
