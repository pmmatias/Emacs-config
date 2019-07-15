(require 'multiple-cursors)

;; Set the key binding
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; Set the mouse binding
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'pemacs-multiple-cursors)
