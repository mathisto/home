(require-macros :lib.macros)
(require-macros :lib.advice.macros)
(local windows (require :windows))
(local emacs (require :emacs))
(local vim (require :vim))
(local {: concat : logf} (require :lib.functional))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; WARNING
;; Make sure you are customizing ~/.spacehammer/config.fnl and not
;; ~/.hammerspoon/config.fnl
;; Otherwise you will lose your customizations on upstream changes.
;; A copy of this file should already exist in your ~/.spacehammer directory.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Actions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fn activator [app-name]
  "
  A higher order function to activate a target app. It's useful for quickly
  binding a modal menu action or hotkey action to launch or focus on an app.
  Takes a string application name
  Returns a function to activate that app.

  Example:
  (local launch-emacs (activator \"Emacs\"))uuu
  (launch-emacs)
  "
  (fn activate []
    (windows.activate-app app-name)))

(fn yo-yabai [message]
  (hs.execute (.. "yabai -m " message)))
(fn yabai-focus [target]
  (yo-yabai (.. "window --focus " target)))
(fn yabai-space [index]
  (yo-yabai (.. "space --focus " index)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; If you would like to customize this we recommend copying this file to
;; ~/.spacehammer/config.fnl. That will be used in place of the default
;; and will not be overwritten by upstream changes when spacehammer is updated.
(local music-app :YouTube)
(local return {:key :space :title :Back :action :previous})

;; In karabiner, make the following simple modification mappings:
;; caps_lock -> f18
;; right command -> f19
;; right option -> f20

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Yabai Window Managment
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;aa
(local window-management
       [{:key :h :title "West" :action (yabai-focus :west)}
        {:key :j :title "South" :action (yabai-focus :south)}
        {:key :k :title "North" :action (yabai-focus :north)}
        {:key :l :title "East" :action (yabai-focus :east)}
        {:key :r :title "Recent" :action (yabai-focus :recent)}
        {:key :p :title "Previous" :action (yabai-focus "prev || yabai -m space --focus last")}
        {:key :n :title "Next" :action (yabai-focus "next || yabai -m space --focus first")}

        ;; Use yabai's "Space Commands" to focus our 1-10
        ;; mission control spaces
        {:key :1 :title "Space 1" :action (yabai-space 1)}
        {:key :2 :title "Space 2" :action (yabai-space 2)}
        {:key :3 :title "Space 3" :action (yabai-space 3)}
        {:key :4 :title "Space 4" :action (yabai-space 4)}
        {:key :5 :title "Space 5" :action (yabai-space 5)}
        {:key :6 :title "Space 6" :action (yabai-space 6)}
        {:key :7 :title "Space 7" :action (yabai-space 7)}
        {:key :8 :title "Space 8" :action (yabai-space 8)}
        {:key :9 :title "Space 9" :action (yabai-space 9)}
        {:key :0 :title "Space 10" :action (yabai-space 10)}])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Main Menu & Config
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(local menu-items [{:key :w
                    :title :+windows
                    :enter "windows:enter-window-menu"
                    :exit "windows:exit-window-menu"
                    :items window-management}])

(local common-keys [{:mods [:cmd] :key :space :action "lib.modal:activate-modal"}
                    {:mods [:hyper] :key :space :action (activator "Alfred 5")}
                    {:mods [:hyper] :key :e :title :Emacs :action (activator :Emacs)}
                    {:mods [:hyper] :key :b :title :Browser :action (activator :Vivaldi)}
                    {:mods [:hyper] :key :f :title "File Manager" :action (activator :Finder)}
                    {:mods [:hyper] :key :i :title :iTerm :action (activator :iTerm)}
                    {:mods [:hyper] :key :s :title :Slack :action (activator :Slack)}
                    {:mods [:hyper] :key :v :title :Neovim :action (activator :Neovide)}
                    {:mods [:hyper] :key :m :title music-app :action (activator music-app)}])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; App Specific Config
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(local apps [])

(local config {:title "Main Menu"
               :items menu-items
               :keys common-keys
               :enter (fn [] (windows.hide-display-numbers))
               :exit (fn [] (windows.hide-display-numbers))
               :apps apps
               :hyper {:key :F18}
               ;; TODO: Set up tab-mode yabai bindings with this f18 mode key
               :modules {:windows {:center-ratio "80:50"}}})

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Exports
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

config
