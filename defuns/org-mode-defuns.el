(defun org-screenshot ()
  ;; https://stackoverflow.com/questions/17435995/paste-an-image-on-clipboard-to-emacs-org-mode-file-without-saving-it
  "Take a screenshot into a time stamped unique-named file in the
   same directory as the org-buffer and insert a link to this file."  
   (interactive)
   (setq filename
     (concat
       (make-temp-name
         (concat (buffer-file-name)
              "_"
              (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
   (if (eq system-type 'windows-nt)
       ;; https://www.sastibe.de/2018/11/take-screenshots-straight-into-org-files-in-emacs-on-win10/
       (progn
         (sleep-for 2)
         (shell-command "snippingtool /clip")
         (sleep-for 0.5)
         (shell-command (concat "powershell -command \"Add-Type -AssemblyName System.Windows.Forms;if ($([System.Windows.Forms.Clipboard]::ContainsImage())) {$image = [System.Windows.Forms.Clipboard]::GetImage();[System.Drawing.Bitmap]$image.Save('" filename "',[System.Drawing.Imaging.ImageFormat]::Png); Write-Output 'clipboard content saved as file'} else {Write-Output 'clipboard does not contain image data'}\""))
         )
     (call-process "import" nil nil nil filename)
     )
   (insert (concat "[[file:" filename "]]"))
   (org-display-inline-images))
  
