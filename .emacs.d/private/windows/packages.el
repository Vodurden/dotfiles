;;; packages.el --- windows Layer packages File for Spacemacs
;;
;; Author: Jake Woods <jake.f.woods@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar windows-packages '(cygwin-mount))
(defvar windows-excluded-packages '())

;; For each package, define a function windows/init-<package-windows>
;;
;; (defun windows/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
(defun windows/init-cygwin-mount ()
  "Initialize cygwin mount"
  (when (eq 'windows-nt system-type)
    (use-package cygwin-mount
      :config
      (cygwin-mount-activate))))
