;;;wxcl.asd
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$

(defparameter *wxCL-directory*
  (make-pathname :name nil :type nil :version nil
                 :defaults (parse-namestring *load-truename*)))

(defparameter *wxCL-clisp-directory*
  (parse-namestring (concatenate 'string (directory-namestring *wxCL-directory*) "clisp-wrappers/")))

(print "Copyright (c) Surendra Singhi 2005")
(print "wxCL = wxWidgets + Common Lisp")

(defsystem wxCL
    :description "wxCL - Common Lisp bindings to wxWidgets Library."
    :version "1.0"
    :pathname *wxCL-clisp-directory*
    :licence "GPL"
    :properties (((#:albert #:output-dir) . "albert-docs/")
		 ((#:albert #:formats) . ("docbook"))
		 ((#:albert #:docbook #:template) . "book")
		 ((#:albert #:docbook #:bgcolor) . "white")
		 ((#:albert #:docbook #:textcolor) . "black"))
    :components ((:file "constants" :depends-on ("wxCL"))
		 (:file "wx_wrapper" :depends-on ("wxCL"))
		 (:file "wx_main" :depends-on ("wxCL" "wx_wrapper"))
		 (:file "wx_scintilla" :depends-on ("wxCL"))
		 (:file "wxAcceleratorEntry" :depends-on ("wxCL" "wxWindow"))
		 (:file "wxArtProvider" :depends-on ("wxCL"))
		 (:file "wxBitmap" :depends-on ("wxCL"))
		 (:file "wxBrush" :depends-on ("wxCL"))
		 (:file "wxBusyInfo" :depends-on ("wxCL"))
		 (:file "wxButton" :depends-on ("wxCL"))
		 (:file "wxCalendarCtrl" :depends-on ("wxCL" "wxDateTime"))
		 (:file "wxCaret" :depends-on ("wxCL"))
		 (:file "wxCheckBox" :depends-on ("wxCL"))
		 (:file "wxCheckListBox" :depends-on ("wxCL"))
		 (:file "wxChoice" :depends-on ("wxCL"))
		 (:file "wxCL")
		 (:file "wxClipboard" :depends-on ("wxCL"))
		 (:file "wxColour" :depends-on ("wxCL"))
		 (:file "wxColourData" :depends-on ("wxCL"))
		 (:file "wxColourDialog" :depends-on ("wxCL" "wxWindow" "wxDialog" "wxColourData"))
		 (:file "wxComboBox" :depends-on ("wxCL"))
		 (:file "wxCommand" :depends-on ("wxCL"))
		 (:file "wxConfigBase" :depends-on ("wxCL"))
		 (:file "wxContextHelp" :depends-on ("wxCL"))
		 (:file "wxControl" :depends-on ("wxCL"))
		 (:file "wxCursor" :depends-on ("wxCL"))
		 (:file "wxDataFormat" :depends-on ("wxCL"))
		 (:file "wxDateTime" :depends-on ("wxCL"))
		 (:file "wxDC" :depends-on ("wxCL"))
		 (:file "wxDCSVG" :depends-on ("wxCL"))
		 (:file "wxDialog" :depends-on ("wxCL" "wxWindow"))
		 (:file "wxDialup" :depends-on ("wxCL"))
		 (:file "wxDirDialog" :depends-on ("wxCL" "wxWindow" "wxDialog"))
		 (:file "wxDND" :depends-on ("wxCL"))
		 (:file "wxDrawing" :depends-on ("wxCL"))
		 (:file "wxEvent" :depends-on ("wxCL"))
		 (:file "wxEvtHandler" :depends-on ("wxCL"))
		 (:file "wxFileDialog" :depends-on ("wxCL" "wxWindow" "wxDialog"))
		 (:file "wxFileHist" :depends-on ("wxCL"))
		 (:file "wxFindReplaceDialog" :depends-on ("wxCL" "wxWindow" "wxDialog"))
		 (:file "wxFL" :depends-on ("wxCL"))
		 (:file "wxFont" :depends-on ("wxCL"))
		 (:file "wxFontData" :depends-on ("wxCL"))
		 (:file "wxFontDialog" :depends-on ("wxCL" "wxWindow" "wxDialog" "wxFontData"))
		 (:file "wxFrame" :depends-on ("wxCL"))
		 (:file "wxGLCanvas" :depends-on ("wxCL"))
		 (:file "wxGauge" :depends-on ("wxCL"))
		 (:file "wxGizmos" :depends-on ("wxCL"))
		 (:file "wxGrid" :depends-on ("wxCL"))
		 (:file "wxHelpController" :depends-on ("wxCL"))
		 (:file "wxHtmlWindow" :depends-on ("wxCL"))
		 (:file "wxIcon" :depends-on ("wxCL"))
		 (:file "wxIconBundle" :depends-on ("wxCL"))
		 (:file "wxImage" :depends-on ("wxCL"))
		 (:file "wxImageList" :depends-on ("wxCL"))
		 (:file "wxIPC" :depends-on ("wxCL"))
		 (:file "wxJoystick" :depends-on ("wxCL"))
		 (:file "wxLayoutConstraints" :depends-on ("wxCL"))
		 (:file "wxListBox" :depends-on ("wxCL"))
		 (:file "wxListCtrl" :depends-on ("wxCL"))
		 (:file "wxLocale" :depends-on ("wxCL"))
		 (:file "wxLog" :depends-on ("wxCL"))
		 (:file "wxMask" :depends-on ("wxCL"))
		 (:file "wxMDI" :depends-on ("wxCL"))
		 (:file "wxMenu" :depends-on ("wxCL" "wxMenuItem"))
		 (:file "wxMenuBar" :depends-on ("wxCL"))
		 (:file "wxMenuItem" :depends-on ("wxCL"))
		 (:file "wxMessageDialog" :depends-on ("wxCL" "wxWindow" "wxDialog"))
		 (:file "wxMime" :depends-on ("wxCL"))
		 (:file "wxMiniFrame" :depends-on ("wxCL"))
		 (:file "wxNotebook" :depends-on ("wxCL"))
		 (:file "wxPalette" :depends-on ("wxCL"))
		 (:file "wxPanel" :depends-on ("wxCL"))
		 (:file "wxPen" :depends-on ("wxCL"))
		 (:file "wxPlot" :depends-on ("wxCL"))
		 (:file "wxPreviewFrame" :depends-on ("wxCL"))
		 (:file "wxPrintDialog" :depends-on ("wxCL" "wxWindow" "wxDialog"))
		 (:file "wxPrintout" :depends-on ("wxCL"))
		 (:file "wxProcess" :depends-on ("wxCL"))
		 (:file "wxProgressDialog" :depends-on ("wxCL" "wxWindow" "wxDialog"))
		 (:file "wxRadioBox" :depends-on ("wxCL"))
		 (:file "wxRadioButton" :depends-on ("wxCL"))
		 (:file "wxRC" :depends-on ("wxCL"))
		 (:file "wxRegion" :depends-on ("wxCL"))
		 (:file "wxRegionIterator" :depends-on ("wxCL"))
		 (:file "wxSash" :depends-on ("wxCL"))
		 (:file "wxScintilla" :depends-on ("wxCL"))
		 (:file "wxScrollBar" :depends-on ("wxCL"))
		 (:file "wxScrolledWindow" :depends-on ("wxCL"))
		 (:file "wxSingleInstanceChecker" :depends-on ("wxCL"))
		 (:file "wxSizer" :depends-on ("wxCL"))
		 (:file "wxSlider" :depends-on ("wxCL"))
		 (:file "wxSpinCtrl" :depends-on ("wxCL" "wxWindow"))
		 (:file "wxSplitterWindow" :depends-on ("wxCL"))
		 (:file "wxStaticBox" :depends-on ("wxCL"))
		 (:file "wxStaticLine" :depends-on ("wxCL"))
		 (:file "wxStaticText" :depends-on ("wxCL"))
		 (:file "wxStatusBar" :depends-on ("wxCL"))
		 (:file "wxSystemSettings" :depends-on ("wxCL"))
		 (:file "wxTextAttr" :depends-on ("wxCL"))
		 (:file "wxTextCtrl" :depends-on ("wxCL" "wxWindow"))
		 (:file "wxThread" :depends-on ("wxCL"))
		 (:file "wxTimer" :depends-on ("wxCL"))
		 (:file "wxTipWindow" :depends-on ("wxCL" "wxWindow"))
		 (:file "wxToggleButton" :depends-on ("wxCL"))
		 (:file "wxToolBar" :depends-on ("wxCL"))
		 (:file "wxTreeCtrl" :depends-on ("wxCL"))
		 (:file "wxValidator" :depends-on ("wxCL"))
		 (:file "wxWave" :depends-on ("wxCL"))
		 (:file "wxWindow" :depends-on ("wxCL"))
		 (:file "wxWizard" :depends-on ("wxCL"))))
