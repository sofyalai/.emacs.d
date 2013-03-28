(autoload 'linum-mode "linum" "toggle line numbers on/off" t) 

(global-font-lock-mode t)
(global-undo-tree-mode)

(evil-mode 1)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)		  
(column-number-mode t)
(ido-mode t)
(show-paren-mode t)

(set-cursor-color "white")

(setq initial-scratch-message nil)
(setq inhibit-startup-message t)
(setq transient-mark-mode t)
(setq default-tab-width 8)
(setq require-final-newline 't)
(setq c-default-style "linux" c-basic-offset 8)

(provide 'emacs-settings)
