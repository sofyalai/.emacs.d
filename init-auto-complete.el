(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/ac-dict"))

(require 'auto-complete-config)

;(define-key ac-mode-map (kbd "§") 'auto-complete)
(ac-config-default)

(provide 'init-auto-complete)
