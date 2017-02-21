;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH")))

(setq comint-prompt-read-only t)

;; win32 auto configuration
(if (eq system-type 'windows-nt)
    (progn
      (setq cygwin-mount-cygwin-bin-directory "c:/cygwin64/bin")
      (setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
      (require 'setup-cygwin)))
