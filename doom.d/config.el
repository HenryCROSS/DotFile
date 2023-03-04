;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Henry CROSS"
      user-mail-address "henry583050973@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "CaskaydiaCove Nerd Font" :size 30 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font" :size 30))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-tokyo-night)
(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org")
(setq org-agenda-files "~/Documents/org/agenda.org")
;; org mode
(after! org
  (setq org-directory "~/Documents/org/")
  (setq org-agenda-files '("~/Documents/org/agenda.org"))
  )

(remove-hook 'after-save-hook #'ws-butler-after-save)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; enable the S for normal vim edition
;; (after! evil-snipe ;; out dated
;;   (evil-snipe-mode -1))
(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

;; auto complete delay
(setq company-idle-delay 0.1
      company-minimum-prefix-length 1
      company-transformers '(
                             delete-consecutive-dups
                             company-sort-by-occurrence
                             )
      company-tooltip-limit 20)


;; disable company mode from eshell mode
(defun rmCompanyMode ()
  (company-mode -1))
(add-hook 'eshell-mode-hook 'rmCompanyMode)

(add-hook 'company-mode
          (company-tng-configure-default))

;; cc lsp by default
(setq lsp-clients-clangd-args '("-j=3"
                                "--background-index"
                                "--clang-tidy"
                                "--completion-style=detailed"
                                "--header-insertion=never"
                                "--header-insertion-decorators=0"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))

(after! cc-mode (setq c-basic-offset 4)) ; set it globally
(setq-hook! 'c++-mode-hook c-basic-offset 4) ; set it in c++-mode buffers

(after! doom-themes
  (remove-hook 'doom-load-theme-hook #'doom-themes-neotree-config))

;; stop clear trailing space after save the file
(remove-hook 'doom-first-buffer-hook
             #'ws-butler-global-mode)

(map! :n "j" #'evil-next-visual-line
      :n "k" #'evil-previous-visual-line)

(run-with-idle-timer 0.1 t #'save-some-buffers t)

(setq x-select-enable-clipboard-manager nil)

;; treesitter
(use-package! tree-sitter
  :config
  (pushnew! tree-sitter-major-mode-language-alist
            '(scss-mode . css))
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(setq split-width-threshold nil)

;; eaf
