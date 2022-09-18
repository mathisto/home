;;; doom-tokyodark-theme.el --- inspired by VSCode's Tokyo Night theme -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: December 15, 2021 (#650)
;; Author: Mathisto <https://github.com/mathisto>
;; Maintainer:
;; Source: https://github.com/enkia/tokyo-night-vscode-theme
;;
;;; Commentary:
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-tokyodark-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-tokyodark-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-tokyodark-theme
  :type 'boolean)

(defcustom doom-tokyodark-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-tokyodark-theme
  :type 'boolean)

(defcustom doom-tokyodark-comment-bg doom-tokyodark-brighter-comments
  "If non-nil, comments will have a subtle, darker background. Enhancing their legibility."
  :group 'doom-tokyodark-theme
  :type 'boolean)

(defcustom doom-tokyodark-padded-modeline nil
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to determine the exact padding."
  :group 'doom-tokyodark-theme
  :type '(or integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-tokyodark
  "A clean, dark theme that basks in the shadows cast by the the lights of a rainy night in downtown Tokyo"

;; ## Color Palette
;; | Color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Use |
;; | ---------- | ------------------------------------------------------------ |
;; | ![#ee6d85](https://place-hold.it/15/ee6d85/ee6d85?text=+) `#ee6d85` | This keyword, HTML elements, Regex group symbol, CSS units, Terminal Red |
;; | ![#d7a65f](https://place-hold.it/15/d7a65f/d7a65f?text=+) `#d7a65f` | Number and Boolean constants, Language support constants |
;; | ![#d7a65f](https://place-hold.it/15/d7a65f/d7a65f?text=+) `#d7a65f` | Function parameters, Regex character sets, Terminal Yellow |
;; | ![#9ece6a](https://place-hold.it/15/9ece6a/9ece6a?text=+) `#9ece6a` | Strings, CSS class names |
;; | ![#95c661](https://place-hold.it/15/95c661/95c661?text=+) `#95c661` | Object literal keys, Markdown links, Terminal Green |
;; | ![#38a89d](https://place-hold.it/15/38a89d/38a89d?text=+) `#38a89d` | Regex literal strings |
;; | ![#7199ee](https://place-hold.it/15/7199ee/7199ee?text=+) `#7199ee` | Language support functions, CSS HTML elements |
;; | ![#7dcfff](https://place-hold.it/15/7dcfff/7dcfff?text=+) `#7dcfff` | Object properties, Regex quantifiers and flags, Markdown headings, Terminal Cyan, Markdown code, Import/export keywords |
;; | ![#2ac3de](https://place-hold.it/15/2ac3de/2ac3de?text=+) `#2ac3de` | Function names, CSS property names, Terminal Blue |
;; | ![#a485dd](https://place-hold.it/15/a485dd/a485dd?text=+) `#a485dd` | Control Keywords, Storage Types, Regex symbols and operators, HTML Attributes, Terminal Magenta |
;; | ![#a0a8cd](https://place-hold.it/15/a0a8cd/a0a8cd?text=+) `#a0a8cd` | Variables, Class names, Terminal White |
;; | ![#a9b1d6](https://place-hold.it/15/a9b1d6/a9b1d6?text=+) `#a9b1d6` | Editor Foreground |
;; | ![#bb9af7](https://place-hold.it/15/bb9af7/bb9af7?text=+) `#bb9af7` | Markdown Text, HTML Text |
;; | ![#cfc9c2](https://place-hold.it/15/cfc9c2/cfc9c2?text=+) `#cfc9c2` | Parameters inside functions (semantic highlighting only) |
;; | ![#565f89](https://place-hold.it/15/565f89/565f89?text=+) `#565f89` | Comments |
;; | ![#06080a](https://place-hold.it/15/06080a/06080a?text=+) `#06080a` | Terminal Black |
;; | ![#24283b](https://place-hold.it/15/24283b/24283b?text=+) `#24283b` | Editor Background (Storm) |
;; | ![#11121d](https://place-hold.it/15/11121d/11121d?text=+) `#11121d` | Editor Background (Night) |

  ;; name        default   256       16
  ((bg         '("#11121d" nil       nil            ))
   (bg-alt     '("#06080a" nil       nil            ))
   (base0      '("#06080a" "#06080a" "black"        ))
   (base1      '("#51587a" "#51587a" "brightblack"  ))
   (base2      '("#61698b" "#61698b" "brightblack"  ))
   (base3      '("#71799d" "#71799d" "brightblack"  ))
   (base4      '("#8189af" "#8189af" "brightblack"  ))
   (base5      '("#9099c0" "#9099c0" "brightblack"  ))
   (base6      '("#a0aad2" "#a0aad2" "brightblack"  ))
   (base7      '("#b0bae3" "#b0bae3" "brightblack"  ))
   (base8      '("#a0a8cd" "#a0a8cd" "white"        ))
   (fg-alt     '("#a9b1d6" "#a9b1d6" "brightwhite"  ))
   (fg         '("#a0a8cd" "#a0a8cd" "white"        ))

   (grey       base4)
   (red        '("#ee6d85" "#ee6d85" "red"          ))
   (orange     '("#d7a65f" "#d7a65f" "brightred"    ))
   (green      '("#95c661" "#95c661" "green"        ))
   (teal       '("#7199ee" "#7199ee" "brightgreen"  ))
   (yellow     '("#d7a65f" "#d7a65f" "yellow"       ))
   (blue       '("#2ac3de" "#2ac3de" "brightblue"   ))
   (dark-blue  '("#565f89" "#565f89" "blue"         ))
   (magenta    '("#a485dd" "#a485dd" "magenta"      ))
   (violet     '("#bb9af7" "#bb9af7" "purple"))
   (cyan       '("#38a89d" "#38a89d" "brightcyan"   ))
   (dark-cyan  '("#7dcfff" "#7dcfff" "cyan"         ))
   ; Additional custom colors
   (dark-green '("#9ece6a" "#9ece6a" "green"        ))
   (brown      '("#cfc9c2" "#cfc9c2" "yellow"       ))

   ;; face categories -- required for all themes
   (highlight      cyan)
   (vertical-bar   (doom-lighten bg 0.05))
   (selection      base0)
   (builtin        red)
   (comments       (if doom-tokyodark-brighter-comments base5 base1))
   (doc-comments   (doom-lighten (if doom-tokyodark-brighter-comments base5 base1) 0.25))
   (constants      orange)
   (functions      blue)
   (keywords       magenta)
   (methods        blue)
   (operators      dark-cyan)
   (type           base8)
   (strings        dark-green)
   (variables      base8)
   (numbers        orange)
   (region         base0)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   (-modeline-bright doom-tokyodark-brighter-modeline)
   (-modeline-pad
    (when doom-tokyodark-padded-modeline
      (if (integerp doom-tokyodark-padded-modeline) doom-tokyo-night-padded-modeline 4)))

   (modeline-fg     nil)
   (modeline-fg-alt base5)

   (modeline-bg
    (if -modeline-bright
	base3
	`(,(doom-darken (car bg) 0.15) ,@(cdr base0))))
   (modeline-bg-l
    (if -modeline-bright
	base3
	`(,(doom-darken (car bg) 0.1) ,@(cdr base0))))
   (modeline-bg-inactive   (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(car bg) ,@(cdr base1))))


  ;; --- Extra Faces ------------------------
  (
   ((line-number-current-line &override) :foreground base8)
   ((line-number &override) :foreground comments :background (doom-darken bg 0.025))

   (font-lock-comment-face
    :foreground comments
    :background (if doom-tokyodark-comment-bg (doom-lighten bg 0.05)))
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   ;;; Doom Modeline
   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))
   (doom-modeline-buffer-path :foreground base8 :weight 'normal)
   (doom-modeline-buffer-file :foreground brown :weight 'normal)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight))
   (mode-line-buffer-id
    :foreground highlight)

   ;;; Indentation
   (whitespace-indentation :background bg)
   (whitespace-tab :background bg)

   ;;; Ivy
   (ivy-subdir :foreground blue)
   (ivy-minibuffer-match-face-1 :foreground green :background bg-alt)
   (ivy-minibuffer-match-face-2 :foreground orange :background bg-alt)
   (ivy-minibuffer-match-face-3 :foreground red :background bg-alt)
   (ivy-minibuffer-match-face-4 :foreground yellow :background bg-alt)

   ;;; Elscreen
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   ;;; Solaire
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;;; Telephone
   (telephone-line-accent-active
    :inherit 'mode-line
    :background (doom-lighten bg 0.2))
   (telephone-line-accent-inactive
    :inherit 'mode-line
    :background (doom-lighten bg 0.05))
   (telephone-line-evil-emacs
    :inherit 'mode-line
    :background dark-blue)

   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground fg)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground cyan)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground teal)

   ;;; Treemacs
   (treemacs-root-face :foreground magenta :weight 'bold :height 1.2)
   (doom-themes-treemacs-root-face :foreground magenta :weight 'ultra-bold :height 1.2)
   (doom-themes-treemacs-file-face :foreground fg-alt)
   (treemacs-directory-face :foreground base8)
   (treemacs-file-face :foreground fg)
   (treemacs-git-modified-face :foreground green)
   (treemacs-git-renamed-face :foreground yellow)

   ;;; Magit
   (magit-section-heading :foreground blue)
   (magit-branch-remote   :foreground orange)
   (magit-diff-our :foreground (doom-darken red 0.2) :background (doom-darken red 0.7))
   (magit-diff-our-highlight :foreground red :background (doom-darken red 0.5) :weight 'bold)
   (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-darken red 0.7))
   (magit-diff-removed-highlight :foreground red :background (doom-darken red 0.5) :weight 'bold)

   ;; --- Major-Mode Faces -------------------
   ;;; elisp
   (highlight-quoted-symbol :foreground yellow)

   ;;; js2-mode
   (js2-function-param :foreground yellow)
   (js2-object-property :foreground green)

   ;;; typescript-mode
   (typescript-this-face :foreground red)
   (typescript-access-modifier-face :foreground brown)

   ;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-text :foreground violet)
   (rjsx-attr :foreground magenta :slant 'italic :weight 'medium)
   (rjsx-tag-bracket-face :foreground (doom-darken red 0.3))

   ;;; css-mode / scss-mode
   (css-property             :foreground blue)
   (css-selector             :foreground teal)
   (css-pseudo-class         :foreground orange)

   ;;; markdown-mode
   (markdown-markup-face :foreground violet)
   (markdown-header-face :inherit 'bold :foreground dark-cyan)
   (markdown-blockquote-face :foreground violet :background (doom-lighten bg 0.04))
   (markdown-table-face :foreground violet :background (doom-lighten bg 0.04))
   ((markdown-code-face &override) :foreground dark-cyan :background (doom-lighten bg 0.04))

   ;;; org-mode
   (org-hide :foreground hidden)
   (org-block :background (doom-darken base2 0.65))
   (org-block-begin-line :background (doom-darken base2 0.65) :foreground comments :extend t)
   (solaire-org-hide-face :foreground hidden)

   ;;; web-mode
   (web-mode-json-context-face :foreground brown)
   (web-mode-json-key-face :foreground teal)
   ;;;; Block
   (web-mode-block-delimiter-face :foreground yellow)
   ;;;; Code
   (web-mode-constant-face :foreground constants)
   (web-mode-variable-name-face :foreground variables)
   ;;;; CSS
   (web-mode-css-pseudo-class-face :foreground orange)
   (web-mode-css-property-name-face :foreground blue)
   (web-mode-css-selector-face :foreground teal)
   (web-mode-css-function-face :foreground yellow)
   ;;;; HTML
   (web-mode-html-attr-engine-face :foreground yellow)
   (web-mode-html-attr-equal-face :foreground operators)
   (web-mode-html-attr-name-face :foreground magenta)
   (web-mode-html-tag-bracket-face :foreground (doom-darken red 0.3))
   (web-mode-html-tag-face :foreground red))


  ;; --- extra variables ---------------------
  ;; ()
  )

;;; doom-tokyodark-theme.el ends here
