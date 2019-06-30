;; Start the scratch buffer in text mode (avoids the loading of elisp modes)
(setq initial-major-mode 'text-mode)

;; Add Imenu to the menu-bar
(defun try-to-add-imenu ()
  (condition-case nil (imenu-add-to-menubar "Index") (error nil)))
(add-hook 'font-lock-mode-hook 'try-to-add-imenu)
(set-default 'imenu-auto-rescan t)

;; Set basic preferences
(setq-default
 column-number-mode t      ; Enable the column number in the mode line
 fill-column 80            ; Set the fill-column to 80 characters
 indent-tabs-mode nil      ; Never indent with tabs
 tab-width 4               ; Set the tab width to 4 spaces
 make-backup-files nil     ; Disable the creation of backups (files ended in ~)
 )

;; Delete the selected text on keypress/yank
(delete-selection-mode 1)

;; Highlight matching parentheses
(show-paren-mode 1)

;; Prefer UTF-8 with Unix line endings
(prefer-coding-system 'utf-8-unix)

;; Global auto-revert (automatically reload files when they're changed on disk)
(global-auto-revert-mode t)

;; Auto-revert dired
(setq-default global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; Enable the mouse cursor in the terminal
(xterm-mouse-mode 1)

;; Enable the links in programming buffers
(add-hook 'prog-mode-hook 'goto-address-prog-mode)

;; Enable access to the system clipboard
(setq select-enable-clipboard t)

;; Answer questions with y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Increase the large file warning threshold to 250MB
(setq large-file-warning-threshold (* 250 1024 1024))

;; Enable async compilation
(async-bytecomp-package-mode 1)

;; When visiting two files with the same name, append the directory to their
;; buffers names
(setq uniquify-buffer-name-style 'forward)

(provide 'core-defaults)
