(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/evil/"))

(require 'evil)

(define-key evil-normal-state-map "gb" 'ido-switch-buffer)

(provide 'init-evil)
