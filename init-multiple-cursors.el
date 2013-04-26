(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/multiple-cursors"))

(require 'multiple-cursors)

;; multiple cursors
(global-set-key (kbd "M-l") 'mc/mark-next-like-this)
(global-set-key (kbd "M-L") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-z") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-n") 'mc/insert-numbers)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'init-multiple-cursors)
