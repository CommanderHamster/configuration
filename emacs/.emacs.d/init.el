;; Use the Marmalade Package Manager
(require 'package)
(require 'hippie-exp)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


;; Ensure packages
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar my-packages '(ack-and-a-half starter-kit starter-kit-eshell starter-kit-lisp starter-kit-js starter-kit-bindings groovy-mode nrepl clojure-mode)
  "A list of packages to ensure are installed at launch.")
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;maybe add later
;; yasnippet-bundle


;; Enable groovy highlighting
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;; Paren balancing everywhere
(show-paren-mode 1)


;; Tomorrow-Night theme
(load-file "~/.emacs.d/themes/tomorrow-night-theme.el")

;; Moves temp files to ~/.saves directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Enable auto-complete mode (haven't tested with new copy)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict/")
(ac-config-default)




;; Set Mappings
;;(global-set-key) 30 min
