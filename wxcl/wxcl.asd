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

; (defparameter *wxCL-clisp-directory*
;   (parse-namestring (concatenate 'string (directory-namestring *wxCL-directory*) "clisp-wrappers/")))

(print "Copyright (c) Surendra Singhi 2005")
(print "wxCL = wxWidgets + Common Lisp")




(defsystem wxCL
    :description "wxCL - Common Lisp bindings to wxWidgets Library."
    :version "1.1.2"
    :pathname (concatenate 'string (directory-namestring *wxCL-directory*) "src/")
    :pathname "src"
    :licence "wxWidgets 3.1"
    :properties (((#:albert #:output-dir) . "albert-docs/")
		 ((#:albert #:formats) . ("docbook"))
		 ((#:albert #:docbook #:template) . "book")
		 ((#:albert #:docbook #:bgcolor) . "white")
		 ((#:albert #:docbook #:textcolor) . "black"))
    :components ((:file "defpackage")
		 (:file "object" :depends-on ("defpackage"))
		 (:file "app" :depends-on ("object"))
 		 (:module "clipboard")
 		 (:module "controls"
 			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxControl")
							     (:file "wxButton") 
							     (:file "wxToggleButton")
							     (:file "wxListBox")
							     (:file "wxCheckBox")))
				       (:file "control" :depends-on ("clisp-ffi"))
				       (:file "button" :depends-on ("control"))
				       (:file "bitmap-button" :depends-on ("button"))
				       (:file "toggle-button" :depends-on ("control"))
				       (:file "check-box" :depends-on ("control"))
				       (:file "list-box" :depends-on ("control-with-items"))
				       (:file "control-with-items" :depends-on ("control"))))
 		 (:module "db")
 		 (:module "dc")
 		 (:module "dialogs")
 		 (:module "events"
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxEvtHandler")))
 				       (:file "evt-handler" :depends-on ("clisp-ffi"))))
 		 (:module "gdi"
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxColour")))
 				       (:file "colour" :depends-on ("clisp-ffi"))))
 		 (:module "help")
 		 (:module "layout"
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxSizer")))
 				       (:file "sizer" :depends-on ("clisp-ffi"))
 				       (:file "box-sizer" :depends-on ("sizer"))))
 		 (:module "menus"
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxMenu")
							     (:file "wxMenuBar")
							     (:file "wxMenuItem")))
 				       (:file "menu" :depends-on ("clisp-ffi"))
 				       (:file "menu-bar" :depends-on ("clisp-ffi"))
 				       (:file "menu-item" :depends-on ("clisp-ffi"))))
 		 (:module "misc")
 		 (:module "net")
 		 (:module "printing")
		 (:module "windows")
		 ))
