;; scheme programming settings

;;(setq geiser-mode-start-repl-p t)
;;(add-to-list 'exec-path "/usr/local/bin")
;;(setq geiser-active-implementations '(chez))

;; racket scheme programming settings

(require 'racket-mode)
(setq racket-racket-program "racket")
(setq racket-raco-program "raco")
(add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "F5") 'racket-run)))


;;plugin source
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) 

;;change c-x c-e
(global-set-key (kbd "C-,") 'eval-last-sexp)

;;copy&paste 
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)

;;
(org-babel-do-load-languages
 'org-babel-load-languages
 '((scheme . t)))

(add-hook 'scheme-mode-hook 'geiser-mode)
(setq geiser-default-implementation 'racket)

(require 'org-tempo)

;;beautify

(add-to-list 'load-path "C:/Users/lu/AppData/Roaming/.emacs.d/nano-emacs-master")
(require 'nano-base-colors)
(require 'nano-faces)
(require 'nano-theme-light)
(require 'nano-splash)
(require 'nano-modeline)
(require 'nano-colors)

(setq writeroom-fullscreen-effect nil)
(setq inhibit-splash-screen t)

(global-visual-line-mode 1)

(require 'powerline)
(powerline-vim-theme)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

(add-hook 'after-init-hook'global-company-mode)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


;; tao-theme settings
(setq tao-theme-use-boxes nil)
(setq tao-theme-use-sepia t)
(setq tao-theme-sepia-depth 1)

(require 'cnfonts)
;; 让 cnfonts 随着 Emacs 自动生效。
(cnfonts-enable)
;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
(cnfonts-set-spacemacs-fallback-fonts)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(dichromacy))
 '(custom-safe-themes
   '("9375315e4786e5cc84b739537102802c18650f3168cf7c29f7fbb00a54f9b8e0" "c3c39b9bf9824d4fa591fbf785a2cb507607f2f36fef05363d6f2dca5c6db82b" "43f03c7bf52ec64cdf9f2c5956852be18c69b41c38ab5525d0bedfbd73619b6a" "cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "543cfe06a1fa1ae56c275e07777c855e24600c3f73500209a05a7e4baecc7287" "a1d9db6618503eba622892fac341d54e76c5913c5c7867075735c13803c7d622" "fa70b8aaa3bf8251f4f1f4ab305c2b4556fa6b76f06c65378ded71997f385949" "3e27c4a8de1ea4e0e7195815ef9ddba53a7dd5cdd1279b0309e9f8e9553be3b7" "de1f10725856538a8c373b3a314d41b450b8eba21d653c4a4498d52bb801ecd2" "5ed25f51c2ed06fc63ada02d3af8ed860d62707e96efc826f4a88fd511f45a1d" "f4c8f0b999a6407211a899401315a628e1a5ae2f408c04a33b14d7aa3ed86187" "171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "a5d04a184d259f875e3aedbb6dbbe8cba82885d66cd3cf9482a5969f44f606c0" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" default))
 '(doom-modeline-bar-width 3)
 '(fci-rule-color "#FFFFF8")
 '(line-number-mode nil)
 '(package-selected-packages
   '(almost-mono-themes firecode-theme berrys-theme badger-theme markdown-preview-mode quelpa zmq simple-httpd websocket writeroom-mode racket-mode mpv pdf-view-restore markdown-mode+ powerline-evil w3m elfeed org-bullets brutalist-theme powershell dracula-theme company geiser doom-themes doom-modeline powerline cnfonts tao-yin-theme tao-theme))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(tool-bar-mode nil)
 '(vc-annotate-background "#FFFFFD")
 '(vc-annotate-color-map
   '((20 . "#D5D2C8")
     (40 . "#B0ADA2")
     (60 . "#B0ADA2")
     (80 . "#737063")
     (100 . "#737063")
     (120 . "#4E4B3D")
     (140 . "#4E4B3D")
     (160 . "#373426")
     (180 . "#373426")
     (200 . "#373426")
     (220 . "#292617")
     (240 . "#292617")
     (260 . "#292617")
     (280 . "#201D0E")
     (300 . "#201D0E")
     (320 . "#201D0E")
     (340 . "#1B1809")
     (360 . "#1B1809")))
 '(vc-annotate-very-old-color "#4E4B3D"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
