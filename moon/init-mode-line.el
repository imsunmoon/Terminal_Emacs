;; nyan-mode
(use-package nyan-mode :ensure t
  :config
  (require 'nyan-mode)
  (nyan-mode 1))

;; MY Emacs Mode Line

(setq-default
 mode-line-format
 (list
  " ["
  '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
		      'face 'font-lock-preprocessor-face
		      'help-echo (concat "Buffer is in "
					 (if overwrite-mode
					     "overwrite"
					   "insert") " mode")))
  '(:eval (when (buffer-modified-p)
	    (concat ","  (propertize "Mod"
				     'face 'font-lock-warning-face
				     'help-echo "Buffer has been modified"))))
  '(:eval (when buffer-read-only
	    (concat ","  (propertize "RO"
				     'face 'font-lock-type-face
				     'help-echo "Buffer is read-only"))))
  "] "

  "("
  (propertize "%02l" 'face 'font-lock-type-face)
  ","
  (propertize "%02c" 'face 'font-lock-type-face)
  ") "
  
  '(:eval (propertize "%b "
		      'face
		      'font-lock-keyword-face
		      'help-echo (buffer-file-name)))
  
  
  "["
  (propertize "%p" 'face 'font-lock-constant-face)
  "/"
  (propertize "%I" 'face 'font-lock-constant-face)
  "] "

  '(:eval (propertize "%m" 'face 'font-lock-string-face
		      'help-echo buffer-file-coding-system))

  mode-line-misc-info
  "  "
  '(:eval (nyan-create))

  mode-line-end-spaces))


(provide 'init-mode-line)
