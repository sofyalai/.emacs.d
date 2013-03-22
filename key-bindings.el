;; multiple cursors
(global-set-key (kbd "M-l") 'mc/mark-next-like-this)
(global-set-key (kbd "M-L") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-M-z") 'mc/edit-lines)
;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "M-n") 'mc/insert-numbers)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; (define-key evil-normal-state-map "b" 'ido-switch-buffer)
;; (define-key evil-normal-state-map "E" 'ido-find-file)

;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\C-c L" 'org-insert-link-global)
(global-set-key "\C-c o" 'org-open-at-point-global)
(global-set-key (kbd "C-c j") 'org-remember)

;; Wind Move
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Clone line
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y\C-p")

;; ace-jump
;(define-key evil-normal-state-map "  " 'ace-jump-mode)

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
(global-set-key (kbd "C-x c o") 'clearcase-checkout-current-buffer)
(global-set-key (kbd "C-x v c") 'clearcase-uncheckout-current-buffer)
(global-set-key (kbd "C-x c u") 'clearcase-checkout-current-buffer-unreserved)
(global-set-key (kbd "C-x c i") 'clearcase-checkin-current-buffer)
(global-set-key (kbd "<f1>") 'linum-mode)
(global-set-key (kbd "<f2>") 'theme-solarized)
(global-set-key (kbd "<f3>") 'theme-zenburn)
(global-set-key (kbd "<f4>") 'goto-line)
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)
(global-set-key (kbd "<f6>") 'vhdl-align-group)
(global-set-key (kbd "<f7>") 'sr-speedbar-toggle)
(global-set-key (kbd "<f8>") 'output-file-highlight)
(global-set-key (kbd "<f9>") 'output-file-unhighlight)
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "C-'") 'copy-line)

(global-set-key (kbd "<mouse-5>") 'sd-mousewheel-scroll-up)
(global-set-key (kbd "<mouse-4>") 'sd-mousewheel-scroll-down)

(global-set-key [pause] 'toggle-current-window-dedication)

;; esc quits
;; (define-key evil-normal-state-map [escape] 'keyboard-quit)
;; (define-key evil-visual-state-map [escape] 'keyboard-quit)
;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(provide 'key-bindings)
