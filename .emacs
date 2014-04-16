;; Emacs config by Robert Kallgren

;; General
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode 0)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-strach-message nil)
(global-linum-mode t)
(setq linum-format " %d ")
(show-paren-mode t)
(global-hl-line-mode 1)
(blink-cursor-mode -1)
(desktop-save-mode 1)
(normal-erase-is-backspace-mode 0)

;; Faces
(custom-set-faces
 '(default ((t (:background "default" :foreground "default"))))
 '(fringe ((t (:background "default"))))
 '(cursor ((t (:background "blue"))))
 '(region ((t (:background "gray"))))
 '(show-paren-match ((t (:background "blue"))))
 '(hl-line ((t (:background "black"))))
 '(linum ((t (:foreground "gray"))))
 '(mode-line ((t (:background "black" :foreground "default" :box (:line-width 5 :color "black")))))
 '(mode-line-inactive ((t (:inherit mode-line :box (:line-width 5 :color "black")))))
 '(vertical-border ((t (:background "default" :foreground "black"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "gray"))))
 '(font-lock-comment-face ((t (:foreground "gray"))))
)

;; Mode line
(setq-default mode-line-format '(" %b%*   %l:%c   %m"))

;; Vertical border
(set-display-table-slot standard-display-table 'vertical-border (make-glyph-code ?│))

;; Keyboard shortcuts
(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<C-S-iso-lefttab>") 'previous-buffer)
(global-set-key (kbd "M-/") 'hippie-expand)

;; SSH things
(global-set-key (kbd "M-[ c") 'forward-word)
(global-set-key (kbd "M-[ d") 'backward-word)
(global-set-key (kbd "M-[ A") 'backward-paragraph)
(global-set-key (kbd "M-[ B") 'forward-paragraph)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                    ;; personal snippets
        "~/.emacs.d/plugins/yasnippet/snippets" ;; the default collection
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.