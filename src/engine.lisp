(in-package :cl-user)
(defpackage docmari.engine
  (:use cl)
  (:import-from :docmari.graphics
                :hello-graphics)
  (:export :hello-engine))
(in-package :docmari.engine)

(defun hello-engine ()
  (hello-graphics)
  (format t "Hello, Engine!~a" #\newline))
