(require 'package)

(use-package eldoc :ensure nil :diminish eldoc-mode :commands eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

(provide 'setup-eldoc)
