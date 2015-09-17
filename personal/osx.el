(when (eq system-type 'darwin)

  (require 'pbcopy)
  (turn-on-pbcopy)

  (require 'ls-lisp)
  (setq ls-lisp-use-insert-directory-program nil)

  (setq dired-guess-shell-alist-user
        '(("\\.p[bgpn]m\\'" "open")
          ("\\.gif\\'" "open")
          ("\\.tif\\'" "open")
          ("\\.png\\'" "open")
          ("\\.jpe?g\\'" "open"))))
