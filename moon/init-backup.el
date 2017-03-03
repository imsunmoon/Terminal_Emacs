;; Backup Settings

(setq vc-make-backup-files t)

(setq version-control t
      kept-new-versions 10
      kept-old-versions 0
      delete-old-versions t
      backup-by-copying t)

(setq backup-directory-alist `((".*" . ,temporary-file-directory)))

(setq backup-directory-alist '
      (("" . "~/.emacs.d/backup/pre-save")))

(defun force-backup-of-buffer ()
  (when (not buffer-backed-up)
    (let ((backup-directory-alist '(("" . "~/.emacs.d/backup/pre-session")))
	  (kept-new-versions 5))
      (backup-buffer)))
  (let ((buffer-backed-up nil))
    (backup-buffer)))

(add-hook 'before-save-hook 'force-backup-of-buffer)

(provide 'init-backup)
