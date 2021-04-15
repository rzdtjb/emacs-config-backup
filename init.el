;;------------------------------------------------------------------
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/nano-emacs")
(require 'nano)
(require 'all-the-icons)
(require 'cnfonts)
(require 'company)

(cnfonts-enable)
(setq cnfonts-use-face-font-rescale t)

(setq url-proxy-services
      '(("http"  . "127.0.0.1:7890")
        ("https" . "127.0.0.1:7890")))

(global-visual-line-mode 1)
(menu-bar-mode 0)
;;(setq-default cursor-type '(bar . 4))
(setq make-backup-files nil)
(setq org-image-actual-width 500)

;; select window
(global-set-key "\C-x\C-n" 'other-window)

(defun other-window-backward (&optional n)
  "previous window"
  (interactive "p")
  (if n
      (other-window (- n))
    (other-window - 1)))

(global-set-key "\C-x\C-p" 'other-window-backward)

;; insert css code when editing org files
(defun org-style ()
  (interactive)
  (insert "#+HTML_HEAD: <link rel='stylesheet' type='text/css' href='/home/lu/.emacs.d/org.css'/>"))

(defun org-author ()
  (interactive)
  (insert "#+author:Lu ZhiYuan"))

(setq geiser-mode-start-repl-p t)

(add-hook 'lisp-interaction-mode-hook
          (lambda ()
            (company-mode 1)))

;; package source 
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;;(package-initialize) ;; You might already have this line

;;-----------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("81c3de64d684e23455236abde277cda4b66509ef2c28f66e059aa925b8b12534" default))
 '(package-selected-packages
   '(geiser-racket company unicode-emoticons unicode-math-input unicode-escape unicode-whitespace cnfonts all-the-icons markdown-mode unicode-fonts help-find-org-mode dracula-theme))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Mono" :foundry "CTDB" :slant normal :weight normal :height 139 :width normal)))))
;;-----------------------------------------------------------------------------

