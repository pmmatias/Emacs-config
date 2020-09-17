(defun kill-all-buffers ()
  "Kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
          (buffer-list))
  (delete-other-windows))


(defun new-tmp-buffer ()
  "Create a new temporary buffer
When killed, it won't remind you to save it"
  (interactive)
  (switch-to-buffer (generate-new-buffer "tmp")))
