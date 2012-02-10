(asdf:defsystem :post-office
  :serial t
  :depends-on (#:acl-compat #:cl+ssl)
  :components
  ((:file "compat")
   (:file "imap")
   ;; (:file "smtp")
   ))
