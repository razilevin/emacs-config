(require 'package)

(use-package subatomic256-theme  :ensure t)
(load-theme 'subatomic256 t)

(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-linum-mode t)
(windmove-default-keybindings)
(setq show-paren-delay 0)
(show-paren-mode 1)
(blink-cursor-mode 0)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'setup-ui)
