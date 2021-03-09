;; Enable org-bullets (show org-mode bullets as UTF-8 characters)
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

;; Enable orgbox (allows scheduling for today/next week/etc., instead of a specific date)
(require 'orgbox)

(provide 'pemacs-org)
