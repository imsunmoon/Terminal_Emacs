;; English Font 英文字体
(if (display-graphic-p)
    (set-face-attribute
     'default nil :font "Menlo 14"))
;; Chinese Font 中文字体
(if (display-graphic-p)
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "PingFang SC" :size 14))))

;; Size
(use-package default-text-scale :ensure t)
(global-set-key (kbd "C-M-=") 'default-text-scale-increase)
(global-set-key (kbd "C-M--") 'default-text-scale-decrease)

;; UTF-8
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(provide 'init-font)
