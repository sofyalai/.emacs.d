(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)(revert-buffer t t))

(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(defun reload-file ()
  (interactive)
  (find-file (buffer-name)))

(defun editemacs ()
  (interactive)
  (find-file "~/.emacs"))

(defvar user-temporary-file-directory
  "~/.emacs-autosaves/")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))

(defun move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)
    (move-to-column col)))

(defun move-line-up ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines -1))
    (move-to-column col)))

;; Mousewheel
(defun sd-mousewheel-scroll-up (event)
  "Scroll window under mouse up by five lines."
  (interactive "e")
  (let ((current-window (selected-window)))
    (unwind-protect
        (progn 
          (select-window (posn-window (event-start event)))
          (scroll-up 5))
      (select-window current-window))))

(defun sd-mousewheel-scroll-down (event)
  "Scroll window under mouse down by five lines."
  (interactive "e")
  (let ((current-window (selected-window)))
    (unwind-protect
        (progn 
          (select-window (posn-window (event-start event)))
          (scroll-down 5))
      (select-window current-window))))

(provide 'init-misc)
