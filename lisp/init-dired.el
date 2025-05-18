;;(setq dired-omit-files-p t) ; 自动隐藏某些文件
;;(setq dired-omit-regexp "\\(^\\.[^.]\\|\\(~$\\|\\ .orig$\\|.rej$\\)")

  ;; Always delete and copy recursively
(setq dired-recursive-deletes 'always
    dired-recursive-copies 'always)

;; Quick sort dired buffers via hydra
(use-package dired-quick-sort
  :ensure t
  :bind (:map dired-mode-map
	 ("S" . hydra-dired-quick-sort/body)))

;; Show git info in dired
(use-package dired-git-info
  :ensure t
  :bind (:map dired-mode-map
	  (")" . dired-git-info-mode)))

;; Allow rsync from dired buffers
(use-package dired-rsync
  :ensure t
  :bind (:map dired-mode-map
	  ("C-c C-r" . dired-rsync)))

;; Colorful dired
(use-package diredfl
  :ensure t
  :hook (dired-mode . diredfl-mode))

;; 折叠子目录（类似 ranger）
(use-package dired-subtree
  :ensure t
  :bind (:map dired-mode-map
              ("<tab>" . dired-subtree-toggle)))

(use-package nerd-icons-dired
  :ensure t
  :hook
  (dired-mode . nerd-icons-dired-mode))

(when (executable-find "fd")
  (use-package fd-dired
    :ensure t))

(provide 'init-dired)
