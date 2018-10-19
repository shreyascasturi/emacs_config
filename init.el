(package-initialize)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/")))

(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-molokai t)

;; clear command with eshell.
(defun eshell/clear ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)np
    (eshell-send-input)))

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; changing comment color
(set-face-foreground 'font-lock-comment-face "indian red")

;; smooth scrolling
(setq scroll-margin 1
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
    (setq-default scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)

;; basic set ups
(show-paren-mode 1)
(global-linum-mode 1)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

(electric-pair-mode 1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; (defun my-LaTeX-mode()
;;   (add-to-list 'TeX-view-program-list '("Evince" "evince --page-index=%(outpage) %o"))
;;   (setq TeX-view-program-selection '((output-pdf "Evince")))
;;   ; Other mode specific config
;;   )
;; (add-hook 'LaTeX-mode-hook 'my-LaTeX-mode)

(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
     ;(add-to-list 'TeX-command-list '("View" "evince %g" TeX-run-command nil t :help "Run evince on your document"))
     (setq TeX-view-program-selection '((output-pdf "Evince")))))

(setq TeX-auto-save t)
(setq TeX-parse-self t)
;;(ac-config-default)
;;(add-to-list 'ac-modes 'java-mode)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(defun shell-other-window ()
  "Open a 'shell' in a new window."
  (interactive)
  (let ((buf (shell)))
    (switch-to-buffer (other-buffer buf))
    (switch-to-buffer-other-window buf)))

(require 'fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-width 2)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)



;;(load-theme 'tron t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-list
   (quote
    (("Evince"
      ("evince --page-index=%(outpage) %o")
      ""))))
 '(package-selected-packages
   (quote
    (markdown-mode solaire-modpe doom-themes magit auctex auto-complete fill-column-indicator))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
