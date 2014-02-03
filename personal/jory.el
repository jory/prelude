;;; jory.el --- Jory's Emacs Customizations
;;; Commentary:
;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Ugh, this isn't working since I updated prelude
;;
;; (require 'mouse)
;; (xterm-mouse-mode)
;; (defun track-mouse (e))

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

(defun builder ()
  (interactive)
  (async-shell-command "cd ~/Code/Pressly/app-builder/ && bundle install && bundle exec ./bin/builder start" ":BUILDER"))

(defun feeder ()
  (interactive)
  (async-shell-command "cd ~/Code/Pressly/pressly-feeder/ && bundle install && bundle exec ./bin/feeder start" ":FEEDER"))

(defun dashboard ()
  (interactive)
  (async-shell-command "cd ~/Code/Pressly/pressly-dashboard/ && bundle install && bundle exec rails s" ":DASHBOARD-BACK"))

(defun dashboard-front ()
  (interactive)
  (async-shell-command "cd ~/Code/Pressly/pressly-dashboard/webapp && bower install && npm install && grunt server" ":DASHBOARD-FRONT"))

(defun api ()
  (interactive)
  (async-shell-command "cd ~/Code/Pressly/pressly-api/ && bundle install && bundle exec ./bin/api start" ":API"))


(global-set-key (kbd "\C-cqb") 'builder)
(global-set-key (kbd "\C-cqf") 'feeder)
(global-set-key (kbd "\C-cqd") 'dashboard)
(global-set-key (kbd "\C-cqh") 'dashboard-front)
(global-set-key (kbd "\C-cqa") 'api)


(defun compass ()
  (interactive)
  (async-shell-command "compass watch" ":COMPASS"))

(defun grunt-server ()
  (interactive)
  (async-shell-command "grunt server" ":GRUNT"))

(defun webify ()
  (interactive)
  (async-shell-command "webify" ":WEBIFY"))

(defun update-sh ()
  (interactive)
  (async-shell-command "./update.sh" ":UPDATE"))

(global-set-key (kbd "\C-cqc") 'compass)
(global-set-key (kbd "\C-cqg") 'grunt-server)
(global-set-key (kbd "\C-cqu") 'update-sh)
(global-set-key (kbd "\C-cqw") 'webify)

(global-set-key (kbd "\C-cqs") 'sort-lines)

(add-to-list 'auto-mode-alist '("\\.hbs$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.styl$" . css-mode))

(setq magit-default-tracking-name-function 'magit-default-tracking-name-branch-only)
(global-set-key (kbd "C-c m b") 'magit-blame-mode)
(global-set-key (kbd "C-c m f") 'magit-file-log)

;; (setq erc-echo-timestamps 't
;;       erc-hide-timestamps 't
;;       erc-timestamp-use-align-to 't)

(provide 'jory)
;;; jory.el ends here
