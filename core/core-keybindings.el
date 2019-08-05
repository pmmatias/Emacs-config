;; Increase and decrease the size of the text
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(if (eq system-type 'gnu/linux)
    (progn
      (global-set-key [C-mouse-4] 'text-scale-increase)
      (global-set-key [C-mouse-5] 'text-scale-decrease))
    (progn
      (global-set-key [C-wheel-up] 'text-scale-increase)
      (global-set-key [C-wheel-down] 'text-scale-decrease)))

;; Smex (M-x enhancement built on top of Ido)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Bind F6 to ibuffer
(global-set-key (kbd "<f6>") 'ibuffer)

;; Swap C-s and C-r with the regex-aware incremental search functions
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Enable MoveText default keybindings
;; (M-Up and M-Down to move text up or down, respectively)
(move-text-default-bindings)

;; Avy (jump to things in tree-style)
(global-set-key (kbd "C-'") 'avy-goto-char-2)

;; Bind F8 to neotree
(global-set-key [f8] 'neotree-toggle)

;; Bind F9 to evil
(global-set-key [f9] 'evil-mode)

(provide 'core-keybindings)
