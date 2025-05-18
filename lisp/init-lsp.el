(use-package eglot
  :hook ((prog-mode . (lambda ()
  		    (unless (derived-mode-p
  			    'emacs-lisp-mode 'lisp-mode
  			    'makefile-mode 'snippet-mode
  			    'ron-mode)
  			(eglot-ensure))))
      ((markdown-mode yaml-mode yaml-ts-mode) . eglot-ensure))
  :init
  (setq read-process-output-max (* 1024 1024)) ; 1MB
  (setq eglot-autoshutdown t
      eglot-events-buffer-size 0
      eglot-send-changes-idle-time 0.5))

 (use-package consult-eglot
   :after consult eglot
   :bind (:map eglot-mode-map
          ("C-M-." . consult-eglot-symbols)))

;;(use-package lsp-mode
;;  :ensure t
;;  :commands (lsp lsp-deferred)
;;  :hook ((python-mode . lsp-deferred)
;;         (js-mode . lsp-deferred)
;;         (go-mode . lsp-deferred)
;;         (c++-mode . lsp-deferred))
;;  :init
;;  (setq lsp-keymap-prefix "C-c l")) ; 设置 LSP 前缀键
;;
;;(add-hook 'go-mode-hook #'lsp-deferred)
;;
;;(use-package lsp-ui
;;  :after lsp-mode
;;  :hook (lsp-mode . lsp-ui-mode)
;;  :config
;;  (setq lsp-ui-doc-position 'bottom) ; 悬浮文档显示位置
;;  (setq lsp-ui-sideline-show-hover t) ; 在侧边栏显示 hover 内容
;;  (setq lsp-ui-doc-enable t)) ; 启用文档悬浮窗

(provide 'init-lsp)
