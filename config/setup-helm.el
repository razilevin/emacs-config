(require 'package)

(use-package helm :ensure t)
(require 'helm-config)
(helm-mode 1)

(use-package helm-projectile :ensure t)
(helm-projectile-on)

(use-package helm-ag :ensure t)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(setq ensime-startup-notification nil)
(setq ensime-startup-snapshot-notification nil)

(provide 'setup-helm)
