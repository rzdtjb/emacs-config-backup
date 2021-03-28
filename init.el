;; insert css code when editing org files
(defun org-style ()
  (interactive)
  (insert "#+HTML_HEAD: <link rel='stylesheet' type='text/css' href='C:/Users/lu/AppData/Roaming/.emacs.d/org.css'/>"))

;; org-mode scale
(setq cnfonts-use-face-font-rescale t)

;; line space
(setq-default line-spacing 0.15) 

;; scheme company 
(require 'company)
(add-hook 'scheme-mode-hook
          (lambda ()
            (company-mode 1)))

;; fullscreen window
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; nano-emacs settings
(add-to-list 'load-path "C:/Users/lu/AppData/Roaming/.emacs.d/nano-emacs")
(require 'nano)

;; writeroom settings
(setq writeroom-fullscreen-effect nil)
(add-hook 'writer-mode-hook
          (lambda ()
            (writeroom-mode 1)))

;; scheme programming
(setq geiser-mode-start-repl-p t)
(add-to-list 'exec-path "/usr/local/bin")
(setq geiser-active-implementations '(chez))

;;org-mode settings
(require 'org-bullets)
(add-hook 'org-mode-hook
          (lambda ()
            (org-bullets-mode 1)))

;; plugin source
(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
;;(package-initialize) ;; You might already have this line

;; close tool-bar
(tool-bar-mode -1)
;; close scroll-bar
(scroll-bar-mode -1)
;; cursor 
(setq-default cursor-type '(bar . 4))

;; font settings
(require 'cnfonts)
(cnfonts-enable)

(setq inhibit-splash-screen t)
(global-visual-line-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#689d6a")
 '(cua-normal-cursor-color "#a89984")
 '(cua-overwrite-cursor-color "#d79921")
 '(cua-read-only-cursor-color "#98971a")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "db7f422324a763cfdea47abf0f931461d1493f2ecf8b42be87bbbbbabf287bfe" "c3c39b9bf9824d4fa591fbf785a2cb507607f2f36fef05363d6f2dca5c6db82b" default))
 '(fci-rule-color "#32302f")
 '(highlight-changes-colors '("#d3869b" "#b16286"))
 '(highlight-symbol-colors
   '("#522b41fa2b3b" "#3822432737ec" "#5bbf348b2bf5" "#483e36c83def" "#43c0418329b9" "#538f3624267a" "#317a3ddc3e5e"))
 '(highlight-symbol-foreground-color "#bdae93")
 '(highlight-tail-colors
   '(("#32302f" . 0)
     ("#747400" . 20)
     ("#2e7d33" . 30)
     ("#14676b" . 50)
     ("#a76e00" . 60)
     ("#a53600" . 70)
     ("#9f4d64" . 85)
     ("#32302f" . 100)))
 '(hl-bg-colors
   '("#a76e00" "#a53600" "#b21b0a" "#9f4d64" "#8b2a58" "#14676b" "#2e7d33" "#747400"))
 '(hl-fg-colors
   '("#282828" "#282828" "#282828" "#282828" "#282828" "#282828" "#282828" "#282828"))
 '(hl-paren-colors '("#689d6a" "#d79921" "#458588" "#b16286" "#98971a"))
 '(lsp-ui-doc-border "#bdae93")
 '(markdown-command
   "pandoc -f markdown -t html --ascii --highlight-style pygments --mathjax ")
 '(nrepl-message-colors
   '("#fb4933" "#d65d0e" "#d79921" "#747400" "#b9b340" "#14676b" "#689d6a" "#d3869b" "#b16286"))
 '(package-selected-packages
   '(counsel markdown-preview-mode powershell company ac-geiser auto-complete geiser afternoon-theme solarized-theme underwater-theme markdown-mode berrys-theme writeroom-mode))
 '(pos-tip-background-color "#32302f")
 '(pos-tip-foreground-color "#bdae93")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#98971a" "#32302f" 0.2))
 '(term-default-bg-color "#282828")
 '(term-default-fg-color "#a89984")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#fb4933")
     (40 . "#eb7b77d92bd4")
     (60 . "#e21f8997270c")
     (80 . "#d79921")
     (100 . "#c322997b1eac")
     (120 . "#b8ad99351d7c")
     (140 . "#ae1f98cc1c53")
     (160 . "#a37098421b33")
     (180 . "#98971a")
     (200 . "#8bd799a13aed")
     (220 . "#84859aa247c0")
     (240 . "#7c5c9ba253bb")
     (260 . "#731d9ca05f39")
     (280 . "#689d6a")
     (300 . "#5cb893d076ee")
     (320 . "#55e98efd7ced")
     (340 . "#4e358a3982c9")
     (360 . "#458588")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#282828" "#32302f" "#b21b0a" "#fb4933" "#747400" "#98971a" "#a76e00" "#d79921" "#14676b" "#458588" "#9f4d64" "#d3869b" "#2e7d33" "#689d6a" "#a89984" "#282828"))
 '(writeroom-mode-line t)
 '(xterm-color-names
   ["#32302f" "#fb4933" "#98971a" "#d79921" "#458588" "#d3869b" "#689d6a" "#a89984"])
 '(xterm-color-names-bright
   ["#282828" "#d65d0e" "#7c6f64" "#282828" "#a89984" "#b16286" "#bdae93" "#fbf1c7"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
