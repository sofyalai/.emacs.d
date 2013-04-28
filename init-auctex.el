(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/auctex-11.87"))

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(setq font-latex-do-multi-line t)
(setq font-latex-fontify-script nil)

(setq TeX-PDF-mode t)
(defun pdfevince ()
  (add-to-list 'TeX-output-view-style
	       (quote ("^pdf$" "." "evince %o (outpage)"))))

(add-hook 'lateX-mode-hook 'pdfevince t) ; AUCTeX LaTeX mode

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(provide 'init-auctex)
