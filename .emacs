(package-initialize)
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/")))
(package-initialize)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(show-paren-mode 1)
(global-linum-mode 1)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(electric-pair-mode 1)

(evil-mode 1)
(require 'evil)

(load-theme 'soothe t)

