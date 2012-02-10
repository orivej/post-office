(asdf:defsystem :post-office
  :serial t
  :depends-on (#:acl-compat #:cl+ssl)
  :components
  (#-allegro
   (:file "compat")
   (:file "imap")
   ;; (:file "smtp")
   ))
