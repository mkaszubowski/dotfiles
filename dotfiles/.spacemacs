;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     sql
     shell-scripts
     graphviz
     erlang
     yaml
     ruby
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     (markdown :variables markdown-live-preview-engine 'vmd)
     react
     javascript
     elixir
     osx
     org
     theming
     themes-megapack
     dash
     spell-checking
     )
   truncate-lines nil
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(base16-theme)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()


   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t)

  )

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   truncate-lines t
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(projects recents)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; dotspacemacs-default-theme 'base16-ocean
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes `(jbeans base16-ocean)
   ;; dotspacemacs-themes '(flatland
   ;;                       monokai
   ;;                       spacemacs-dark
   ;;                       spacemacs-light
   ;;                       solarized-light
   ;;                       solarized-dark
   ;;                       zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("M+ 1mn"
                               :size 15
                               :weight light
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-emacs-command-key "SPC"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-ex-command-key ";"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state 't
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.2
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 100
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   shell-file-name "/bin/bash"
   js2-basic-offset 2
   js-indent-level 2
   indent-tabs-mode nil
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2

   )


   (setq theming-modifications
         '((jbeans
            (default :background "#292929")
            (fringe :background "#292929")
            (helm-visible-mark :background "#292929")
            (powerline-active1 :background "#3A5159" :foreground "#ffffff")
            (powerline-active2 :background "#3A5159" :foreground "#ffffff")
            (powerline-inactive1 :background "#050505")
            (powerline-inactive2 :background "#050505")
            (mode-line-inactive :background "#050505")
            (hl-line :background "#202020")
            (linum :background "#292929")
            ))
         )
  )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

  (require 'helm-bookmark)

  ;; Powerline
  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-major-mode-off)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-line-column-off)

  (fset 'add-pipe
    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([escape 94 105 124 62 32 escape 36 97] 0 "%d")) arg)))
  (fset 'remove-pipe-normal
    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([58 115 47 124 62 32 47 47 return] 0 "%d")) arg)))
  (fset 'add-pipe-normal
    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([58 115 47 94 92 40 92 115 45 42 92 41 47 92 49 124 62 32 left left left left left left 92 115 119 left left left 92 40 right left right backspace backspace 92 40 right left right right 92 41 right right left left left left left left left left backspace right right right left 92 right right right right right right right 92 50 backspace right right 32 92 50 right backspace return] 0 "%d")) arg)))
  (fset 'expand_struct
    [?i ?d ?e ?f ?m ?o ?d ?u ?l ?e ?  escape ?w ?w ?i ?  ?d ?o escape ?l ?r return ?o ?e ?n ?d escape ?< ?< ?k ?y ?y ?p escape ?: ?s ?/ ?\\ ?\( ?\[ ?^ ?: ?\] ?* ?\\ ?\) ?: ?  ?\\ ?\( ?\[ ?^ ?, ?\\ ?n ?\] ?* ?\\ ?\( backspace ?\) ?/ ?\\ ?1 ?/ ?g return ?: ?s ?/ ?\\ ?\( ?\[ ?^ ?, ?\] ?* ?\\ ?\) ?/ ?: ?\\ ?1 ?/ ?g left left left left left left left left left left left left left left left ?  ?+ return ?> ?> ?: ?s ?/ ?, ?/ ?, ?  ?/ ?g return ?i ?d ?e backspace backspace ?@ ?f ?i ?e ?l ?d ?s ?  ?\[ escape ?l ?x ?A ?\] escape ?o ?d ?e ?f ?s ?t ?r ?u ?c ?t ?  ?@ ?f ?i ?e ?l ?d ?s escape ?k ?o ?@ ?e ?n ?f ?o ?r ?c ?e ?_ ?k ?e ?t ?s ?  backspace backspace backspace ?y ?s ?  ?@ ?f ?i ?e ?l ?d ?s escape ?k ?o escape ?k ?k ?l ?l ?i ?@ ?t ?y ?p ?e ?  ?t ?  ?: ?: ?  ?% ?_ ?_ ?M ?O ?D ?U ?L ?E ?_ ?_ ?\{ return escape ?j ?h ?x ?k ?d ?d ?> ?> ?o ?\} escape ?< ?< ?o escape ?k ?k ?: ?s ?/ ?, ?  ?/ ?, ?\\ ?n ?  ?  ?  ?  ?/ ?g return escape])
  (fset 'genserver
    [?i ?  ?u backspace backspace tab ?u ?s ?e ?  ?G ?e ?n ?S ?e ?r ?v ?e ?r return return ?@ ?n ?a ?m ?e ?  ?_ ?_ ?M ?O ?D ?U ?L ?E ?_ ?_ return return ?d ?e ?f ?  ?s ?t ?a ?r ?t ?_ ?l ?i ?n ?k ?\) ?\) backspace backspace ?\( ?\) ?  ?d ?o return ?G ?e ?n ?S ?e ?r ?v ?e ?r ?. ?s ?t ?a ?r ?t ?_ ?l ?i ?n ?k ?\( ?_ ?_ ?M ?O ?D ?L S-backspace ?U ?L ?E ?_ ?_ ?, ?  ?\[ ?\] ?, ?  ?n ?a ?m ?e ?: ?  ?@ ?n ?a ?m ?e ?\) escape ?j ?o return ?d ?e ?f ?  ?i ?n ?i ?t ?\( ?\[ ?\] ?\) ?  ?d ?o return ?\{ ?: ?o ?k ?, ?  backspace backspace backspace backspace ?o ?k ?, ?  ?\[ ?\] escape ?k ?k ?k ?k ?\s-s])

  (fset 'insert-handle-info
    [?i tab ?d ?e ?f ?  ?h ?a ?n ?d ?l ?e ?_ ?i ?n ?f ?o ?\( ?_ ?m ?s ?, backspace ?g ?, ?  ?s ?t ?a ?t ?e ?\) ?  ?d ?o return ?\{ ?: ?n ?o ?r ?e ?p ?l ?y ?, ?  ?s ?t ?a ?t ?e ?\} escape ?k])

  (fset 'insert-test
    [?i tab ?t ?e ?s ?t ?  ?\" ?\" ?  ?d ?o return escape ?k ?w ?l ?i])

  (fset 'add-spec
   [?y ?y ?P escape ?c ?i ?w ?@ ?s ?p ?e ?c escape ?/ ?\( return ?l ?d ?i ?\( ?A backspace ?: ?: ?  escape ?k ?o ?@ ?d ?o ?c ?  ?\" ?\" escape])

  (fset 'moduledoc
    [?g ?g ?o tab ?@ ?m ?o ?d ?u ?l ?e ?d ?o ?c ?  ?~ ?S ?\" ?\" ?\" escape ?h ?h ?h ?h ?h ?x ?l ?x ?l ?x ?l ?r return ?A ?\" ?\" escape ?h ?x ?k ?o])

  (fset 'format-entire-file
        [?g ?g ?g ?q ?G ?` ?`])

  (fset 'explore-directory
    [?  ?f ?f return])


  (defun new-line-with-pipe ()
    "open a new line with a pipe"
    (interactive)
    (progn
      (newline)
      (insert "|> ")
      (indent-according-to-mode)))

  (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
  (global-fci-mode 1)
  (define-key evil-normal-state-map (kbd "s-p") 'helm-projectile-find-file)
  (define-key evil-normal-state-map (kbd "s-t") 'alchemist-mix-test-at-point)
  (define-key evil-normal-state-map (kbd "s-r") 'alchemist-mix-rerun-last-test)
  (define-key evil-normal-state-map (kbd "s-e") 'alchemist-mix-test-this-buffer)
  (define-key evil-normal-state-map (kbd "s-g") 'alchemist-goto-definition-at-point)
  (define-key evil-insert-state-map (kbd "s->") 'add-pipe)
  (define-key evil-normal-state-map (kbd "s->") 'add-pipe-normal)
  (define-key evil-visual-state-map (kbd "s->") 'add-pipe-normal)
  (define-key evil-normal-state-map (kbd "s-<") 'remove-pipe-normal)
  (define-key evil-visual-state-map (kbd "s-<") 'remove-pipe-normal)
  (define-key evil-normal-state-map (kbd "s-l") 'spacemacs//layouts-persp-next-n)
  (define-key evil-normal-state-map (kbd "gQ") 'format-entire-file)
  (define-key evil-normal-state-map (kbd "s-f") 'explore-directory)
  (define-key evil-insert-state-map (kbd "C-j") 'evil-normal-state)
  (define-key elixir-mode-map [(control return)] 'new-line-with-pipe)
  (modify-syntax-entry ?_ "w")


  (defadvice alchemist-project-root (around seancribbs/alchemist-project-root activate)
    (let ((alchemist-project-mix-project-indicator ".git"))
      ad-do-it))

  (defun seancribbs/activate-alchemist-root-advice ()
    "Activates advice to override alchemist's root-finding logic"
    (ad-activate 'alchemist-project-root))

  (add-to-list 'elixir-mode-hook 'seancribbs/activate-alchemist-root-advice)

  (defun format-elixir ()
    (interactive)
      (save-buffer)
      (shell-command-to-string
       (concat
        (concat
          "/Users/maciej/dev/projects/elixir/bin/elixir "
          "/Users/maciej/dev/projects/elixir/bin/mix format ")
        buffer-file-name))
      (revert-buffer :ignore-auto :noconrim)
      )

  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "f" 'format-elixir)
  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "ig" 'genserver)
  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "ih" 'insert-handle-info)
  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "it" 'insert-test)
  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "is" 'add-spec)
  (spacemacs/set-leader-keys-for-major-mode 'elixir-mode "id" 'moduledoc)

  (defun git-push-current-origin ()
    (interactive)
    (shell-command-to-string "git push")
    )

  (spacemacs/set-leader-keys "gp" 'git-push-current-origin)
 )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defadvice evil-inner-word (around underscore-as-word activate)
   (let ((table (copy-syntax-table (syntax-table))))
     (modify-syntax-entry ?_ "w" table)
     (with-syntax-table table
       ad-do-it)))
(setq-default evil-escape-key-sequence "jk")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2b303b" "#bf616a" "#a3be8c" "#ebcb8b" "#8fa1b3" "#b48ead" "#8fa1b3" "#c0c5ce"])
 '(ansi-term-color-vector
   [unspecified "#2b303b" "#bf616a" "#a3be8c" "#ebcb8b" "#8fa1b3" "#b48ead" "#8fa1b3" "#c0c5ce"] t)
 '(custom-safe-themes
   (quote
    ("64f2981274fd8740b794bce9feee7949ed87b88fc0b4654bd98594e1aa81abcd" "c5aebf8ec9bcdc297d02b56aca6de8f4d0dec03e48979769bc4ed734421b272f" default)))
 '(evil-want-Y-yank-to-eol t)
 '(js2-strict-trailing-comma-warning nil)
 '(linum-format " %3i ")
 '(package-selected-packages
   (quote
    (flyspell-correct-helm flyspell-correct auto-dictionary sql-indent lsp-mode insert-shebang fish-mode company-shell graphviz-dot-mode helm helm-core gmail-message-mode ham-mode html-to-markdown flymd edit-server vmd-mode helm-dash dash-at-point erlang terraform-mode hcl-mode yaml-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby org-projectile org-present org-pomodoro alert log4e gntp org-download htmlize gnuplot zonokai-theme zenburn-theme zen-and-art-theme ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode seti-theme scss-mode sass-mode reverse-theme reveal-in-osx-finder restart-emacs rainbow-delimiters railscasts-theme purple-haze-theme pug-mode professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pbcopy pastels-on-dark-theme paradox osx-trash osx-dictionary orgit organic-green-theme org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-elixir noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode linum-relative link-hint light-soap-theme less-css-mode launchctl json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme inkpot-theme info+ indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio go-guru go-eldoc gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md gandalf-theme fuzzy flycheck-mix flycheck-credo flx-ido flatui-theme flatland-theme firebelly-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme emmet-mode elm-mode elisp-slime-nav dumb-jump dracula-theme django-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web company-tern company-statistics company-go column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme base16-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#292929"))))
 '(fringe ((t (:background "#292929"))))
 '(helm-visible-mark ((t (:background "#292929"))))
 '(hl-line ((t (:background "#202020"))))
 '(linum ((t (:background "#292929"))))
 '(mode-line-inactive ((t (:background "#292929"))))
 '(powerline-active1 ((t (:background "#292929"))))
 '(powerline-active2 ((t (:background "#292929"))))
 '(powerline-inactive1 ((t (:background "#171717"))))
 '(powerline-inactive2 ((t (:background "#171717"))))
 '(powerline-passive1 ((t (:background "#202020"))))
 '(powerline-passive2 ((t (:background "#202020")))))
