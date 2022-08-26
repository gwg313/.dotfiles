;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Glen Goodwin"
      user-mail-address "glen.goodwin1992@gmail.com")


(when (eq system-type 'darwin) (setq
                                ns-command-modifier 'control
                                ns-option-modifier 'meta
                                ns-control-modifier 'super))

(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))


(setq-default
 delete-by-moving-to-trash t                      ; Delete files to trash
 window-combination-resize t                      ; take new window space from all other windows (not just current)
 x-stretch-cursor t)                              ; Stretch cursor to the glyph width

(setq undo-limit 80000000                         ; Raise undo-limit to 80Mb
      evil-want-fine-undo t                       ; By default while in insert all changes are one big blob. Be more granular
      auto-save-default t                         ; Nobody likes to loose work, I certainly don't
      truncate-string-ellipsis "…"                ; Unicode ellispis are nicer than "...", and also save /precious/ space
      password-cache-expiry nil                   ; I can trust my computers ... can't I?
      ;; scroll-preserve-screen-position 'always     ; Don't have `point' jump around
      scroll-margin 2)                            ; It's nice to maintain a little margin

(display-time-mode 1)                             ; Enable time in the mode-line
(global-subword-mode 1)                           ; Iterate through CamelCase words

(setq doom-fallback-buffer-name "► Doom"
      +doom-dashboard-name "► Doom")

(setq which-key-idle-delay 0.5)

(setq which-key-allow-multiple-replacements t)
(after! which-key
  (pushnew!
   which-key-replacement-alist
   '(("" . "\\`+?evil[-:]?\\(?:a-\\)?\\(.*\\)") . (nil . "◂\\1"))
   '(("\\`g s" . "\\`evilem--?motion-\\(.*\\)") . (nil . "◃\\1"))
   ))


(map! :map evil-window-map
      "SPC" #'rotate-layout
      ;; Navigation
      "<left>"     #'evil-window-left
      "<down>"     #'evil-window-down
      "<up>"       #'evil-window-up
      "<right>"    #'evil-window-right
      ;; Swapping windows
      "C-<left>"       #'+evil/window-move-left
      "C-<down>"       #'+evil/window-move-down
      "C-<up>"         #'+evil/window-move-up
      "C-<right>"      #'+evil/window-move-right)

(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :size 24)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 36)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 24)
      doom-unicode-font (font-spec :family "JuliaMono")
      doom-serif-font (font-spec :family "IBM Plex Mono" :weight 'light))


(if (eq system-type 'darwin)
(setq doom-font (font-spec :family "FiraMono Nerd Font Mono" :size 24)
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :size 36)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 24)
      doom-unicode-font (font-spec :family "JuliaMono")
      doom-serif-font (font-spec :family "IBM Plex Mono" :weight 'light))
)

(setq fancy-splash-image (concat doom-private-dir "splash/doom-emacs-color.png"))
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(add-hook! '+doom-dashboard-mode-hook (hide-mode-line-mode 1) (hl-line-mode -1))
(setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")

(setq treemacs-width 20)
(setq treemacs--width-is-locked nil)
(setq treemacs-width-is-initially-locked nil)
