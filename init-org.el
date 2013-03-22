(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.txt$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(setq org-todo-keywords
      '((sequence "TODO" "|" "STARTED" "DONE")
	(sequence "REPORT" "BUG" "KNOWCAUSE" "|" "FIXED")
	(sequence "|" "CANCELED")))

(setq org-keyword-faces
      '(("TODO" . org-warning) ("STARTED" . (:foreground "yellow" :weight bold))
	("CANCELED" . (:foreground "blue" :weight bold))))

(setq org-log-done t)

;;Journal
(org-remember-insinuate)
(setq org-remember-templates
      '(("Journal"
	 ?j
	 "* %U %? %^g\n\n   %x"
	 "~/Archive/journal.org"
	 'top)))

(provide 'init-org)
