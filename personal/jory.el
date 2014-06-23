;;; jory.el --- JORY!!!
;;; Commentary:
;;; Code:

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

(global-set-key (kbd "\C-cqs") 'sort-lines)

(global-rainbow-delimiters-mode)

(provide 'jory)
