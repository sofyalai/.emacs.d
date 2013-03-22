(add-to-list 'custom-theme-load-path "~/.emacs.d/elisp/themes/")

(when (< emacs-major-version 24)
  (require-package 'color-theme))

(load-theme 'solarized-dark t)

(defun theme-blue ()
  (interactive)
  (load-theme 'solarized-dark t))

(defun theme-dark ()
  (interactive)
  (load-theme 'tomorrow-night t))

(provide 'init-themes)
