;;
;; ace jump mode major function
;; 
(add-to-list 'load-path "/.emacs.d/elisp/ace-jump-mode.el")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

;; 
;; enable a more powerful jump back function from ace jump mode
;;
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

(define-key evil-normal-state-map (kbd " p") 'ace-jump-mode-pop-mark)
(define-key evil-normal-state-map (kbd "  ") 'ace-jump-mode)

(provide 'init-ace-jump)
