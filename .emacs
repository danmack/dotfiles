;; mack's emacs config

(add-to-list 'load-path "/Users/mack/src/conf/emacs/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(setq auto-fill-mode 1)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil) 

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
(setq compile-command "cargo build --release")

(global-set-key "\M-l" 'goto-line)
(global-set-key "\M-n" 'window-up1)
(global-set-key "\M-p" 'window-down1)

(put 'upcase-region 'disabled nil)
