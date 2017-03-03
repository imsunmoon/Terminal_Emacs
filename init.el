;;     +++++-----S-u-n-m-o-o-n----------------------------+++++
;;     +++++     ┏━━┓    ┏┓┏┓    ┏━━┓    ┏━━┓    ┏━━┓     +++++
;;     +++++     ┃┃━┫┏━━┓┃┗┛┃┏━━┓┃┏┓┃┏━━┓┃┏━┛┏━━┓┃━━┫     +++++
;;     +++++     ┃┃━┫┗━━┛┃┃┃┃┗━━┛┃┏┓┃┗━━┛┃┗━┓┗━━┛┣━━┃     +++++
;;     +++++     ┗━━┛    ┗┻┻┛    ┗┛┗┛    ┗━━┛    ┗━━┛     +++++
;;     +++++----------------------------------------------+++++

;; Lisp
(package-initialize)
(add-to-list 'load-path (expand-file-name "moon" user-emacs-directory))
;; custom.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Melpa Stable && Install PKGS && Use Package
(require 'init-use-package)

;; Emacs's Configuration
(require 'init-ui)
(require 'init-theme)
(require 'init-font)
(require 'init-mode-line)
(require 'init-backup)
(require 'init-keyboard)

;; PKGS's Configuration
(require 'init-company)
(require 'init-ivy-counsel-swiper)

;; Server
(require 'server)
(unless (server-running-p)
  (server-start))

(provide 'init)
