;;; packages.el --- chinese-pyim Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar chinese-pyim-packages
  '(
    ;; package chinese-pyims go here
    chinese-pyim
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar chinese-pyim-excluded-packages '()
  "List of packages to exclude.")

(defun chinese-pyim/init-chinese-pyim ()
  ;; (setq pyim-use-tooltip nil)
  (require 'chinese-pyim)

  )
;; For each package, define a function chinese-pyim/init-<package-chinese-pyim>
;;
;; (defun chinese-pyim/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package