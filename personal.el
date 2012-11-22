;;
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key (kbd "\C-h") 'delete-backward-char)

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

(setq confirm-kill-emacs 'y-or-n-p)   ;; Always ask before exit
;(scroll-bar-mode -1)                  ;; Don't show scrollbar
;(tooltip-mode -1)                     ;; Don't show tooltips
;(desktop-save-mode 1)                 ;; Save emacs session on quit
(setq inhibit-startup-message t)      ;; Don't show startup message
(setq inhibit-startup-screen t)       ;; Don't show startup screen
(setq inhibit-splash-screen t)        ;; Don't show splash screen

(setq whitespace-style '(face empty tabs trailing))
(define-key global-map (kbd "C-;") 'ace-jump-mode)

(require 'whitespace)
(setq whitespace-style '(face empty tabs trailing))
(global-whitespace-mode t)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Disable guru mode
(guru-mode -1)

;; Better undo
(global-undo-tree-mode)

;; Autoindent mode
;; (setq auto-indent-blank-lines-on-move nil)
;; (auto-indent-global-mode))

;; Show colors for their HEX representation
(rainbow-mode)

;; Show braces in different colors depending on nesting
(rainbow-delimiters-mode)

;; Automatically pair braces
(require 'autopair)
(electric-pair-mode -1)
(autopair-global-mode)

;; Auto complete mode
(require 'auto-complete)
(add-to-list 'ac-modes 'erlang-mode)
(global-auto-complete-mode)

;; Show line at 80 char
(require 'fill-column-indicator)
(setq-default fill-column 80)
(setq-default fci-rule-width 1)
(setq-default fci-rule-color "#686868")
(add-hook 'erlang-mode-hook 'fci-mode)
(add-hook 'prog-mode-hook 'whitespace-turn-off t)
(add-hook 'prog-mode-hook 'turn-off-guru-mode t)
(add-hook 'text-mode-hook 'turn-off-flyspell t)
(add-hook 'prog-mode-hook 'turn-off-flyspell t)
