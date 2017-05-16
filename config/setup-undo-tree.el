(require 'package)

(use-package undo-tree :diminish undo-tree-mode :config (global-undo-tree-mode) :bind ("s-/" . undo-tree-visualize)) 

(provide 'setup-undo-tree)
