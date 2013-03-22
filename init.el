(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/ac-dict"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auctex-11.86"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/eshell"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/undo-tree"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/multiple-cursors"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/evil/"))

(require 'init-auto-complete)
(require 'init-org)
(require 'init-themes)
(require 'init-auctex)
(require 'init-misc)

(require 'evil)
(require 'undo-tree)
(require 'multiple-cursors)

(require 'emacs-settings)
(require 'key-bindings)
