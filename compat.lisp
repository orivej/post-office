#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (require '#:sb-simple-streams))

(rename-package 'acl-compat.mp 'acl-compat.mp
                (union '(mp) (package-nicknames 'acl-compat.mp)))
(rename-package 'acl-compat.excl 'acl-compat.excl
                (union '(excl) (package-nicknames 'acl-compat.excl)))

(in-package #:socket)
(import 'cl+ssl)
(export 'make-ssl-client-stream)
(export 'make-ssl-server-stream)

(in-package #:cl-user)
#+sbcl
(unintern 'read-sequence)
#+sbcl
(import 'sb-simple-streams:read-sequence)

(in-package #:acl-compat.excl)
;; From PJB's cesarum.utility
(defmacro while (condition &body body)
  "While loop."
  `(do () ((not ,condition))  ,@body))
(defmacro until (condition &body body)
  "Until loop."
  `(do () (,condition)        ,@body))
(defvar match-re)
(setf (symbol-function 'match-re) (symbol-function 'match-regexp))
(export '(while until match-re))
