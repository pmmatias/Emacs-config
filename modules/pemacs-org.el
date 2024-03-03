;; Indent the content accross different levels
(setq org-startup-indented t)

;; Open documents folded by default
(setq org-startup-folded t)

;; Load org Babel languages to enable their execution at code blocks
(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (java . t)
   (python . t)
   (shell . t)))

;; Don't ask for confirmation before executing code blocks
(setq org-confirm-babel-evaluate nil)

;; Enable org-bullets (show org-mode bullets as UTF-8 characters)
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

;; Enable orgbox (allows scheduling for today/next week/etc., instead of a specific date)
(require 'orgbox)

(provide 'pemacs-org)
