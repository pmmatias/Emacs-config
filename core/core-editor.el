;; Enable the commands for upcasing and downcasing a region
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Enable highlight-parentheses-mode on programming buffers
(add-hook 'prog-mode-hook (lambda ()
                            (highlight-parentheses-mode)
                            (diminish 'highlight-parentheses-mode)))

;; Highlight FIXME: and other comment annotations
(add-hook 'prog-mode-hook
          (lambda ()
            (font-lock-add-keywords nil
                                    '(("\\<\\(\\(FIX\\(ME\\)?\\|TODO\\|BUG\\|HACK\\):\\)"
                                       1 font-lock-warning-face t)))))

;; Enable electric-pair-mode (close parentheses and quotes automatically)
(electric-pair-mode 1)

;; Enable auto-complete
(require 'pemacs-auto-complete)

;; Enable YASnippet (template system) for programming modes
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; Enable flycheck (syntax checking)
(require 'pemacs-flycheck)

;; Enable which-key (displays a popup with the available key bindings following
;; an incomplete command (prefix))
(require 'pemacs-which-key)

;; Enable Ido (smarter completion)
(require 'pemacs-ido)

;; Enable anzu (enhances isearch by displaying current match and total matches
;; information in the mode-line)
(global-anzu-mode +1)
(diminish 'anzu-mode)

;; Enable dumb-jump (jump to definition)
(dumb-jump-mode)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)

;; Enable iedit (interactive, multi-occurrence editing)
(require 'iedit)

;; Enable multiple-cursors
(require 'pemacs-multiple-cursors)

;; Enable projectile
(projectile-mode)
(diminish 'projectile-mode)

;; Enable evil
(require 'evil)

(provide 'core-editor)
