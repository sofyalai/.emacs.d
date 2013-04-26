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

;; key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\C-c L" 'org-insert-link-global)
(global-set-key "\C-c o" 'org-open-at-point-global)
(global-set-key (kbd "C-c j") 'org-remember)

(provide 'init-org)
