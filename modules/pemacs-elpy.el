;; Enable elpy
(elpy-enable)

;; Use Python 3
(elpy-use-cpython "/usr/bin/python3")
(setq elpy-rpc-python-command "python3")

;; Use IPython for REPL
(elpy-use-ipython "ipython3")

;; Disable the Virtual Envs menu
(pyvenv-mode -1)

;; Disable highlight-indentation-mode
(delete 'elpy-module-highlight-indentation elpy-modules)

;; Disable underlining
(delete 'elpy-module-flymake elpy-modules)

(provide 'pemacs-elpy)
