;; Disable the menu-bar
;; (use C-mouse-3 for easy access)
(menu-bar-mode -1)

;; Disable the tool-bar
(tool-bar-mode -1)

;; Disable the scroll bars
(scroll-bar-mode -1)

;; Decrease scrolling speed
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)))

;; Use the Kaolin Ocean theme
(require 'kaolin-themes)
(load-theme 'kaolin-ocean t)

;; Disable the startup screen
(setq inhibit-startup-screen t)

;; Shorten the message of the scratch buffer
(setq initial-scratch-message
      ";; This buffer is for notes you don't want to save, and for Lisp evaluation\n\n")

;; Show the complete file location on the title bar
(setq frame-title-format
      (list '((:eval (if (buffer-file-name)
                         (abbreviate-file-name (buffer-file-name))
                       "%b")))
            (format " - emacs%s@%s" emacs-version (system-name))
            ))

;; Change to cursor type to a bar
(setq-default cursor-type 'bar)

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
(set-face-underline 'highlight nil)

;; Show the dashboard
(require 'pemacs-dashboard)

;; Enable Telephone Line
(require 'telephone-line)
(telephone-line-mode 1)

;; Enable neotree
(require 'pemacs-neotree)

;; If runnning with a GUI, enable Centaur Tabs
(if (display-graphic-p)
    (require 'pemacs-centaur-tabs))

;; Show icons on Dired
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; Maximize the window
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(provide 'core-ui)
