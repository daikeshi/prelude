
;; (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(95 70))
(add-to-list 'default-frame-alist '(alpha 95 70))

;; customize prelude plugins
(setq prelude-guru nil)
(setq prelude-whitespace nil)

;; scala mode
(add-to-list 'load-path "~/.emacs.d/scala-mode2/")
(require 'scala-mode2)

;; scala ensime
;; (add-to-list 'load-path "~/Lib/ensime/src/main/elisp/")
;; (require 'ensime)
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(setq default-directory "~/Project")

(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

(setq x-select-enable-clipboard t)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; write backups to ~/.emacs.d/.backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
    backup-by-copying      t  ; Don't de-link hard links
    version-control        t  ; Use version numbers on backups
    delete-old-versions    t  ; Automatically delete excess backups:
    kept-new-versions      20 ; how many of the newest versions to keep
    kept-old-versions      5) ; and how many of the old

(setq linum-format "%4d \u2502 ")

;; change the color of the current line highlight
(set-face-background 'default "#000000")
(global-hl-line-mode 1)
(set-face-background 'hl-line "#181b1c")
(set-face-foreground 'highlight nil) 

;; start linum mode
(global-linum-mode 1)
(set-face-attribute 'linum nil :background "#000000")
