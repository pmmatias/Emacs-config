;; Enable which-key mode
(which-key-mode)
(diminish 'which-key-mode)

;; Increase the time delay (to 4s.) for the which-key popup to appear
;; A value of zero might cause issues so a non-zero value is recommended
(setq which-key-idle-delay 4.0)

(provide 'pemacs-which-key)
