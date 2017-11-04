#|
  This file is a part of docmari project.
|#

(in-package :cl-user)
(defpackage docmari-asd
  (:use :cl :asdf))
(in-package :docmari-asd)

(defsystem docmari
  :version "0.1.0"
  :author "hennin"
  :license "MIT"
  :depends-on (:alexandria)
  :components ((:module "src"
                :components
                ((:file "docmari" :depends-on ("engine"))
                 (:file "engine" :depends-on ("graphics"))
                 (:file "graphics"))))
  :description "Puzzle game like Dr.MARIO"
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.org"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op docmari-test))))
