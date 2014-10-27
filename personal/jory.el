;;; jory.el --- JORY!!!
;;; Commentary:
;;; Code:

(prelude-require-packages '(dired-rainbow rainbow-identifiers editorconfig ag))

(mapc 'require
      '(prelude-emacs-lisp
        prelude-coffee
        prelude-css
        prelude-erc
        prelude-ido
        prelude-js
        prelude-key-chord
        prelude-org
        prelude-scss
        prelude-shell
        prelude-web))

(setq enable-recursive-minibuffers t
      visible-bell t
      abbrev-mode t)

;;; By default ag-arguments includes "--smart-case", but that makes ag
;;; ignore .gitignore files underneath the top directory.

(setq ag-arguments '("--nogroup" "--column" "--"))

(defalias 'projectile-ack 'projectile-ag)
(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "\C-cqs") 'sort-lines)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

(menu-bar-mode -1)

(provide 'jory)
