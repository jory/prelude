;;; jory.el --- Jory's Emacs Customizations
;;; Commentary:
;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'mouse)
(xterm-mouse-mode)
(defun track-mouse (e))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (eq system-type 'darwin)
  (require 'pbcopy)
  (turn-on-pbcopy)
  (setq ls-lisp-use-insert-directory-program nil)
  (require 'ls-lisp))

(setq enable-recursive-minibuffers t
      visible-bell t
      abbrev-mode t)

(global-rainbow-delimiters-mode)
(setq js-indent-level '2)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "\C-xm") 'smex)
(global-set-key (kbd "\C-x\C-m") 'smex)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

(global-set-key (kbd "\C-cqs") 'sort-lines)

(add-to-list 'auto-mode-alist '("\\.hbs$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.styl$" . css-mode))

(setq magit-default-tracking-name-function 'magit-default-tracking-name-branch-only)
(global-set-key (kbd "C-c m b") 'magit-blame-mode)
(global-set-key (kbd "C-c m f") 'magit-file-log)

(provide 'jory)
;;; jory.el ends here
