(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet")

(require 'yasnippet)

(yas--initialize)
(yas/load-directory "~/.emacs.d/elisp/yasnippet/snippets")

(define-key yas/keymap (kbd "<return>") 'yas/exit-all-snippets)
(global-set-key (kbd "<backtab>") 'yas/expand) 

(yas/global-mode 1)

(provide 'init-yasnippet)
