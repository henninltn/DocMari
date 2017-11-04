#|
  This file is a part of docmari project.
|#

(in-package :cl-user)
(defpackage docmari-test-asd
  (:use :cl :asdf))
(in-package :docmari-test-asd)

(defsystem docmari-test
  :version "0.1.0"
  :author "hennin"
  :license "MIT"
  :depends-on (:docmari
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "docmari"))))
  :description "Test system for docmari"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
