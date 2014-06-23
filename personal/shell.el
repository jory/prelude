;;; shell.el
;;; Commentary:
;;; Code:

(defun compass ()
  (interactive)
  (async-shell-command "compass watch" ":COMPASS"))

(defun grunt-server ()
  (interactive)
  (async-shell-command "grunt server" ":GRUNT"))

(defun mongod ()
  (interactive)
  (async-shell-command "mongod" ":MONGOD"))

(defun update-sh ()
  (interactive)
  (async-shell-command "./update.sh" ":UPDATE"))

(global-set-key (kbd "\C-cqm") 'mongod)
(global-set-key (kbd "\C-cqc") 'compass)
(global-set-key (kbd "\C-cqg") 'grunt-server)
(global-set-key (kbd "\C-cqu") 'update-sh)

(provide 'shell)
