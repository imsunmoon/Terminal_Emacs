
(use-package company
  :ensure t
  :diminish company-mode
  :commands global-company-mode
  :init
  (add-hook 'after-init-hook #'global-company-mode)
  (setq company-minimum-prefix-length 2        
	company-idle-delay 0.2                 
	company-selection-wrap-around t
	company-show-numbers t                 
	company-tooltip-align-annotations t
	company-require-match nil
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case nil)
  :bind
  ("TAB" . company-complete))

(provide 'init-company)
