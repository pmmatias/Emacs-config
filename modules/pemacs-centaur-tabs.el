;; Enable the default key bindings
;; This must come before the package is loaded
(setq centaur-tabs-enable-key-bindings t)

;; Load the package
(require 'centaur-tabs)

;; Enable Centaur Tabs
(centaur-tabs-mode t)

;; Don't display the tabs for some buffers
(defun centaur-tabs-hide-tab (x)
  "Do no to show buffer X in tabs."
  (let ((name (format "%s" x)))
    (or
     ;; Current window is not dedicated window.
     (window-dedicated-p (selected-window))

     ;; Buffer name not match below blacklist.
     (string-prefix-p "*Calc" name)
     (string-prefix-p "*Calendar" name)
     (string-prefix-p "*Messages" name)

     )))

;; Set tab style to box
(setq centaur-tabs-style "box")

;; Display icons on the tabs
(setq centaur-tabs-set-icons t)

;; Display a colored bar at the left of the selected tab
(setq centaur-tabs-set-bar 'left)

;; Show a '*' on the tab if the buffer is modified
(setq centaur-tabs-set-modified-marker t)
(setq centaur-tabs-modified-marker "*")

;; Disable tabs on certain buffers
(add-hook 'shell-mode-hook 'centaur-tabs-local-mode)
(add-hook 'ediff-prepare-buffer-hook 'centaur-tabs-local-mode)

(provide 'pemacs-centaur-tabs)

