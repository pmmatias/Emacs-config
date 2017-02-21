;; Increase and decrease the size of the text
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Smex (M-x enhancement built on top of Ido)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Bind F6 to ibuffer
(global-set-key (kbd "<f6>") 'ibuffer)

;; Swap C-s and C-r with the regex-aware incremental search functions
;; TODO: Replace with search-default-regexp-mode for Emacs 25+
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Avy (jump to things in tree-style)
(global-set-key (kbd "C-'") 'avy-goto-char-2)

(provide 'core-keybindings)
