(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet")

(require 'yasnippet)

(yas--initialize)
(yas/load-directory "~/.emacs.d/elisp/yasnippet/snippets")

(yas/global-mode 1)

(provide 'init-yasnippet)
