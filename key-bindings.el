;; Wind Move
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; ace-jump
(define-key evil-normal-state-map "  " 'ace-jump-mode)

;;----Delete/Backspace settings----
;; Delete deleted char right of cursor
(global-set-key [delete] 'delete-char)
(global-set-key [(shift backspace)] 'delete-char)

;; Backspace deletes previous char
(global-set-key [backspace] 'delete-backward-char)
(global-set-key [(shift delete)] 'delete-backward-char)

;; Pressing backspace during an Isearch will delete the previous
;; character typed (or do a reverse isearch if something matches the
;; current word).  Without this, it will delete the highlighted text.
(define-key isearch-mode-map [backspace] 'isearch-delete-char)

(global-set-key (kbd "C-c C-r") 'revert-buffer)
(global-set-key (kbd "<f1>") 'linum-mode)
(global-set-key (kbd "<f2>") 'theme-blue)
(global-set-key (kbd "<f3>") 'theme-dark)
(global-set-key (kbd "<f4>") 'goto-line)
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "C-'") 'copy-line)

(global-set-key (kbd "<mouse-5>") 'sd-mousewheel-scroll-up)
(global-set-key (kbd "<mouse-4>") 'sd-mousewheel-scroll-down)

(global-set-key [pause] 'toggle-current-window-dedication)

(provide 'key-bindings)
