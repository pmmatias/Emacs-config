;; Disable the startup screen
(setq inhibit-startup-screen t)

;; Shorten the message of the scratch buffer
(setq initial-scratch-message
      ";; This buffer is for notes you don't want to save, and for Lisp evaluation.\n\n")

;; Maximize the window
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Show the complete file location on the title bar
(setq frame-title-format
      (list '((:eval (if (buffer-file-name)
                         (abbreviate-file-name (buffer-file-name))
                       "%b")))
            (format " - emacs%s@%s" emacs-version (system-name))
            ))

;; Disable the tool-bar
(tool-bar-mode -1)

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

;; Enable neotree
(require 'pemacs-neotree)

;; Show icons on Dired
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(provide 'core-ui)
