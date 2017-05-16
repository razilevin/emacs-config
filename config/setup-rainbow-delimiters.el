(require 'package)

(use-package rainbow-delimiters :ensure t :pin melpa-stable)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'setup-rainbow-delimiters)
