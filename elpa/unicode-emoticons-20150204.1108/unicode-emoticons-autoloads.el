;;; unicode-emoticons-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "unicode-emoticons" "unicode-emoticons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from unicode-emoticons.el

(autoload 'unicode-emoticons-mode "unicode-emoticons" "\
Unicode-emoticons-mode enables expansion of certain keywords to
unicode emoticons. It is built as an abbrev table, and therefore also
needs the abbrev-mode to be enabled for it to take affect.

If called interactively, enable Unicode-Emoticons mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "unicode-emoticons" '("unicode-emoticons-mode-abbrev-table")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; unicode-emoticons-autoloads.el ends here
