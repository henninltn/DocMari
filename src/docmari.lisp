(in-package :cl-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :docmari)
    (defpackage docmari
      (:use :cl)
      (:import-from :docmari.engine
                    :hello-engine)
      (:export :start))))
(in-package :docmari)

(defun start ()
  (format t "Hello, DocMari!~A" #\newline)
  (hello-engine))
