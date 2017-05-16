(require 'package)

(use-package ensime :ensure t :pin melpa)
(use-package sbt-mode :pin melpa)
(use-package scala-mode :pin melpa)

(setq ensime-use-helm t)

(provide 'setup-ensime)
