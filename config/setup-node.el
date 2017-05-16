(require 'package)

(use-package js2-mode :ensure t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(use-package nodejs-repl :ensure t)
(add-hook 'js2-mode-hook
          (lambda ()
            (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-sexp)
            (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
            (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
            (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))

(setq js2-mode-show-parse-errors t)
(setq js2-highlight-level 3)

(use-package tern :ensure t)
(use-package company-tern :ensure t)
(eval-after-load 'company '(add-to-list 'company-backends 'company-tern))
(add-hook 'js2-mode-hook
          (lambda ()
            (tern-mode t)))

(provide 'setup-node)
