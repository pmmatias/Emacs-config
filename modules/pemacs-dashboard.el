;; Enable the dashboard and add it to the startup-hook
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Show the Emacs' icon
(setq dashboard-startup-banner 'logo)

;; Show this config.'s version
(setq dashboard-banner-logo-title (format "pEmacs %s" pemacs-version))

;; Enable the icons next to the headings and recent files
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

;; Show the recents, projects, and the agenda widgets
(setq dashboard-items '((recents  . 10)
                        (projects . 5)
                        (agenda . 5)))

;; Disable the footnote
(setq dashboard-footer-messages (list ()))

;; Hide the modeline
(add-hook 'dashboard-mode-hook (lambda () (setq-local mode-line-format nil)))

(provide 'pemacs-dashboard)
