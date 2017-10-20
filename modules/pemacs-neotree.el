(require 'neotree)

;; Enable the icons
;; In order for this to work you need to install the fonts by running
;; M-x all-the-icons-install-fonts followed by fc-cache -f -v (on Linux/macOS)
(require 'all-the-icons)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(provide 'pemacs-neotree)
