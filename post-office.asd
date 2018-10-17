(defsystem :post-office
  :serial t
  :depends-on (#:acl-compat
               #:cl+ssl
               #:local-time
               #:cl-ppcre)
  :components
  (#-allegro
   (:file "compat")
   (:file "imap")
   ;; (:file "smtp")
   ))
