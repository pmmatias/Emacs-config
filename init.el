;; pmmatias' GNU Emacs config

;; Without this comment Emacs 25+ adds (package-initialize) here
;; (package-initialize)

(defconst pemacs-version "1.3.2" "pEmacs version.")
(defconst pemacs-min-emacs-ver "24.4" "Minimal version of GNU Emacs.")
(defvar pemacs-dir (file-name-directory load-file-name)
  "Root directory of this config.")
(defvar pemacs-core-dir (expand-file-name "core" pemacs-dir)
  "Directory of the core functionality of this config.")
(defvar pemacs-modules-dir (expand-file-name "modules" pemacs-dir)
  "Directory for the modules of this config.")
(defvar pemacs-defuns-dir (expand-file-name "defuns" pemacs-dir)
  "Directory that contains useful functions.")
(defvar pemacs-keybindings-dir (expand-file-name "keybindings" pemacs-dir)
  "Directory for keybinding definitions.")
(defvar pemacs-themes-dir (expand-file-name "themes" pemacs-dir)
  "Directory for themes.")

;; Ensure that the Emacs version is at least the required one
(when (version< emacs-version pemacs-min-emacs-ver)
  (error "This config requires at least GNU Emacs %s, but you're running %s"
         pemacs-min-emacs-ver emacs-version))

;; During the initialization increase the GC thresold to 256MB
(setq gc-cons-threshold (* 256 1024 1024))

;; After the initialization, set the GC threshold to 64MB
;; and print this config's version
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold (* 64 1024 1024))
            (message "pEmacs %s" pemacs-version)))

;; Increase the maximum size of the message log buffer to 5000 lines
(setq message-log-max 5000)

;; Add the config's directories to the load-path
(add-to-list 'load-path pemacs-core-dir)
(add-to-list 'load-path pemacs-modules-dir)
(add-to-list 'load-path pemacs-defuns-dir)
(add-to-list 'custom-theme-load-path pemacs-themes-dir)

;; Load the theme
(load-theme 'noctilux t)

;; Load the core
(require 'core-packages)
(require 'core-defaults)
(require 'core-editor)
(require 'core-keybindings)
(require 'core-languages)

;; Load the defuns
(dolist (file (directory-files pemacs-defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; Load the keybindings
(dolist (file (directory-files pemacs-keybindings-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; Hotfix for CVE-2017-14482
(when (version< emacs-version "25.3")
  (eval-after-load "enriched"
    '(defun enriched-decode-display-prop (start end &optional param)
       (list start end))))

;; If there's no Emacs server running, start it
(require 'server)
(unless (server-running-p) (server-start))

;; Suppress the message "For information about GNU..."
(defun display-startup-echo-area-message () "" (message ""))

;; Use a separated custom-file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(unless (file-exists-p custom-file) (write-region "" nil custom-file))
(load custom-file)
