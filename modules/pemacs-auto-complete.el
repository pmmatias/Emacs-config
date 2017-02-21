(global-auto-complete-mode t)
(setq ac-auto-show-menu t)
(diminish 'auto-complete-mode)

(set-default 'ac-sources
             '(ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer))

(require 'ac-c-headers)
(add-hook 'c-mode-hook
            (lambda ()
              (add-to-list 'ac-sources 'ac-source-c-headers)
              (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))

(require 'auto-complete-auctex)

(provide 'pemacs-auto-complete)

