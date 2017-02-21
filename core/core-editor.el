;; Enable highlight-parentheses-mode on programming buffers
(add-hook 'prog-mode-hook (lambda ()
                            (highlight-parentheses-mode)
                            (diminish 'highlight-parentheses-mode)))

;; Highlight current line
(global-hl-line-mode 1)
(set-face-background
 'hl-line
 (concat
  "#"
  (format "%x" (+ (string-to-number (substring (face-attribute 'default :background) 1 3) 16) 10))
  (format "%x" (+ (string-to-number (substring (face-attribute 'default :background) 3 5) 16) 10))
  (format "%x" (+ (string-to-number (substring (face-attribute 'default :background) 5 7) 16) 10))
  )) ;; HACK: There's probably a better way of doing this...
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight nil)

;; Highlight FIXME: and other comment annotations
(add-hook 'prog-mode-hook
          (lambda ()
            (font-lock-add-keywords nil
                                    '(("\\<\\(\\(FIX\\(ME\\)?\\|TODO\\|BUG\\|HACK\\):\\)"
                                       1 font-lock-warning-face t)))))

;; Enable autopair (close parentheses and quotes automatically)
(autopair-global-mode t)
(diminish 'autopair-mode)

;; Enable auto-complete
(require 'pemacs-auto-complete)

;; Enable Ido (smarter completion)
(require 'pemacs-ido)

;; Enable anzu (enhances isearch by displaying current match and total matches
;; information in the mode-line)
(global-anzu-mode +1)
(diminish 'anzu-mode)

;; Enable iedit (interactive, multi-occurrence editing)
(require 'iedit)

;; Enable multiple-cursors
(require 'pemacs-multiple-cursors)

;; Enable Projectile
(projectile-mode)
(diminish 'projectile-mode)

;; Enable Evil
(require 'evil)

(provide 'core-editor)
