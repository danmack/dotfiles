;; mack's emacs


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(add-to-list 'load-path "/Users/mack/src/conf/emacs/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(autoload 'adoc-mode "adoc-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'auto-mode-alist '("\\.adoc\\'" . adoc-mode))

;; version control settings for magit
(setq vc-handled-backends nil) ;; disable base vc-
(global-set-key (kbd "C-x g") 'magit-status)

(setq auto-fill-mode 1)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)

;; we rust by default
(setq compile-command "cargo build")
(setq compilation-scroll-output t)

;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))

;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; by default, show bad whitespace
(setq-default show-trailing-whitespace t)

(defun window-down1 (arg) "A function to scroll the window down 1 line."
(interactive "P")
(scroll-down 1))

(defun window-up1 (arg) "A function to scroll the window up 1 line."
(interactive "P")
(scroll-up 1))

(defun window-down2 (arg) "A function to scroll the window down 2 lines."
(interactive "P")
(scroll-down 2))

(defun window-up2 (arg) "A function to scroll the window up 2 lines."
(interactive "P")
(scroll-up 2))

(global-set-key "\M-e" 'call-last-kbd-macro)
(global-set-key "\M-c" 'compile)

(global-set-key "\M-l" 'goto-line)
(global-set-key "\M-n" 'window-up1)
(global-set-key "\M-p" 'window-down1)

;; i forgot why i did this
;; (put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit adoc-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
