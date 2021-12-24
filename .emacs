(require 'package)
(setq package-list '(auto-complete dash-functional evil f flycheck goto-chg ht dash lv markdown-mode modern-cpp-font-lock monokai-theme pkg-info epl popup rainbow-delimiters s soothe-theme spinner try undo-tree use-package bind-key which-key yasnippet zweilight-theme))

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/")))
(package-initialize)


; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))



(require 'yasnippet)
(yas-global-mode 1)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(ac-config-default)



(load-theme 'monokai t)
(electric-pair-mode t)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(show-paren-mode 1)
(global-linum-mode 1)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rainbow-delimiters monokai-theme zweilight-theme yasnippet which-key use-package try spinner soothe-theme modern-cpp-font-lock markdown-mode lv ht flycheck f evil dash-functional auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
