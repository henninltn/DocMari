(in-package :cl-user)
(defpackage docmari.graphics
  (:use cl)
  (:export :hello-graphics))
(in-package :docmari.graphics)

(defun hello-graphics ()
  (format t "Hello, Graphics!~a" #\newline))

