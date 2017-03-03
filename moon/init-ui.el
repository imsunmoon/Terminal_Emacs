;;-----------------------------------系统设置-----------------------------------

;; 默认 宽度 高度
;;(setq default-frame-alist '((width . 80) (height . 45)))
;; 禁止 启动屏幕 && 启动输出信息
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
;; 空白面板
(setq initial-scratch-message "")
;; 禁止 对话框儿
(setq use-file-dialog nil)
(setq use-dialog-box nil)
;; 禁止工具栏儿
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
;; 禁止滚动栏儿
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
;; 禁止菜单栏儿
(menu-bar-mode -1)
;; 使用无边框儿
(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))
;; 保存 窗口位置
;;(desktop-save-mode t) 
;;-------------------------------------风格-------------------------------------

;; 默认栏儿 字符数量 80
(setq-default fill-column 80)
;; 显示行号
(global-linum-mode 1)
;; 高亮括号匹配
(show-paren-mode 1)
;; 禁止闪动光标
(blink-cursor-mode -1)
;; 保存光标位置
(save-place-mode 1)
;; Nice Scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)


;;------------------------------------Buffer------------------------------------

;; 自动刷新 Buffer
(global-auto-revert-mode 1)
;; Buffer Tooltips 
(tooltip-mode -1)
;; 按键显示 --> 立刻
(setq echo-keystrokes 0.1)
;; Yes && No
(fset 'yes-or-no-p 'y-or-n-p)

;;-----------------------------------系统声音------------------------------------

;; 禁止铃声
(setq ring-bell-function 'ignore)

(provide 'init-ui)
