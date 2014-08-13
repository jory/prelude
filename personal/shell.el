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


(defun services ()
    (interactive)
    (async-shell-command "cd ~/src/lapetus/services && rm -rf ./fetch.log && FETCH_DEBUG_FILE=./fetch.log ./start" ":SERVICES"))

(defun debug-services ()
    (interactive)
    (async-shell-command "cd ~/src/lapetus/services && rm -rf ./fetch.log && FETCH_DEBUG_FILE=./fetch.log node-debug -p 9292 ./server.js" ":SERVICES"))

(defun catalina ()
    (interactive)
    (async-shell-command "catalina run" ":CATALINA"))

(global-set-key (kbd "\C-cqws") 'services)
(global-set-key (kbd "\C-cqwd") 'debug-services)
(global-set-key (kbd "\C-cqwc") 'catalina)

(provide 'shell)
