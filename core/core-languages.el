;; Set the default C offset to 4 spaces
(setq c-basic-offset 4)

;; Enable Haskell indentation
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

(provide 'core-languages)
