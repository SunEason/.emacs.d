;; setup
(setq make-backup-files nil)                 

(use-package exec-path-from-shell
  :ensure t
  :config
    (exec-path-from-shell-initialize))

(provide 'init-base)
