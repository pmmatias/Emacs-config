;; Enable elpy
(elpy-enable)

;; Use IPython 3
(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "-i --simple-prompt")

;; Disable the Virtual Envs menu
(pyvenv-mode -1)

;; Disable highlight-indentation-mode
(delete 'elpy-module-highlight-indentation elpy-modules)

;; Disable underlining
(delete 'elpy-module-flymake elpy-modules)

(provide 'pemacs-elpy)
