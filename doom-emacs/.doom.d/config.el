;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jeremy Kitchen"
      user-mail-address "kitchen@kitchen.io")

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
(setq doom-font (font-spec :family "SFMono Nerd Font" :size 14))
(setq doom-variable-pitch-font (font-spec :family "SF Pro Display" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'solarized-dark)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")

;; ----- Line numbers
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(require 'display-line-numbers)
(setq display-line-numbers-type t)

;; set line numbers only on prog-mode / conf-mode a la dotspacemacs-line-numbers :enabled-for-modes
;; https://github.com/syl20bnr/spacemacs/issues/8919
;; first, we undo the add-hook! from doom-emacs default:
(remove-hook! '(prog-mode-hook text-mode-hook conf-mode-hook)
           #'display-line-numbers-mode)

;; then we add it back to the modes we want
(add-hook! '(prog-mode-hook conf-mode-hook)
           #'display-line-numbers-mode)
;; basically, I don't want it for org-mode, and org-mode is text-mode, I may
;; want to have it enabled for other text-modes later but this is fine for now


;; ----- more stuff
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

;; sets the frame title to buffer name * project-name, booya
;; I'd like it to be the project-relative filename if the buffer is visiting a file, but the biggest thing I use right now is
;; the project name to see which minimized frame has the project I want (ansible, org, etc)
(setq frame-title-format
      '(""
        "%b"
        (:eval
         (let ((project-name (projectile-project-name)))
           (unless (string= "-" project-name)
             (format (if (buffer-modified-p)  " ◉ %s" "  ●  %s") project-name))))))

;; this makes it so BOL/OEL movements in vim respect visual line mode.
(setq evil-respect-visual-line-mode t)
(add-hook! '(prog-mode-hook text-mode-hook conf-mode-hook)
           #'turn-on-visual-line-mode)
