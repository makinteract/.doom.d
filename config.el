;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Andrea Bianchi"
      user-mail-address "andrea@kaist.id")

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
(setq doom-font (font-spec :family "monospace" :size 24))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


(after! org
  (setq
  org-ellipsis " ▾ "
  ;org-bullets-bullet-list '(".")
  org-todo-keywords '((sequence "TODO(t)" "INPROGRESS(i)" "|" "DONE(d)"))
  org-log-done 'time
  ;org-agenda-files (ignore-errors (directory-files +org-dir t "\\.org$" t))
  ;(setq org-fancy-priorities-list '("⚡" "⬆" "⬇" "☕"))
  ))


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

;; Customization starts here
(setq web-search-default-provider "DuckDuckGo")

;;(map! :ne "M-/" #'comment-or-uncomment-region)
(map! :ne "SPC <f8>" #'visual-line-mode)
;; (global-visual-line-mode 1)
(setq auto-fill-mode nil)
(remove-hook 'org-mode-hook #'auto-fill-mode)
;;(remove-hook 'LaTeX-mode-hook #'auto-fill-mode)
(turn-off-auto-fill)

;; nyan-cat
(nyan-mode 1)
(setq nyan-wavy-trail 't)

;; avi
(setq avy-all-windows 'all-frames)
