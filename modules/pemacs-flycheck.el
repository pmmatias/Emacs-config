(global-flycheck-mode)

(diminish 'flycheck-mode)

;; Disable error reporting in the minibuffer
(setq flycheck-display-errors-function nil)

;; Disable the underlining
(set-face-attribute 'flycheck-error nil :underline nil)
(set-face-attribute 'flycheck-warning nil :underline nil)
(set-face-attribute 'flycheck-info nil :underline nil)

;; Disable checking for Emacs Lisp documentation conventions
(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

;; Use Python 3
(setq flycheck-python-pycompile-executable "/usr/bin/python3")

;; Configure Haskell support
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(provide 'pemacs-flycheck)
