;;; General configuration
;; - Define identity for Git et al
;; - Set Doom theme to default
;; - Set local org file directory to home subdirectory
;; - Disable exit confirmation messages
(setq user-full-name "Rachel Michaela"
      user-mail-address "hacking@rami.org.il")
(setq doom-theme 'doom-one)
(setq org-directory "~/org/")
(setq confirm-kill-emacs nil)

;;; Editor Configuration
;; - Use relative line numbers
;; - Use tabs for indentation
;; - Provide an 80-column ruler
(setq display-line-numbers-type 'relative)
(setq-default indent-tabs-mode t)
(global-display-fill-column-indicator-mode t)
