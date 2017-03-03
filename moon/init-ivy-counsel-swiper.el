;; ivy
(use-package ivy
  :ensure t
  :diminish ivy-mode
  :bind
  (:map ivy-mode-map)
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t
	ivy-height 20
	ivy-count-format "(%d|%d ) "))

;; counsel
(use-package counsel
  :ensure t
  :bind
  (("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("s-o" . counsel-find-file)
   ("M-y" . counsel-yank-pop))
  :diminish counsel-mode
  :init
  (counsel-mode 1)
  :config
  (setq counsel-find-file-ignore-regexp "\\.DS_Store\\|.git"))

;; swiper
(use-package swiper
  :ensure t
  :bind
  ("C-s" . swiper)
  ("C-r" . swiper))

(provide 'init-ivy-counsel-swiper)
