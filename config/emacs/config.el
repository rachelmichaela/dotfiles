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

;;; Dashboard Configuration
;; - Remove footer block
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)

;;; Editor Configuration
;; - Use relative line numbers
;; - Use tabs for indentation
;; - Provide an 80-column ruler
(setq display-line-numbers-type 'relative)
(setq-default indent-tabs-mode t)
(global-display-fill-column-indicator-mode t)

;;; Perl Mode
;; - Enforce cperl-mode
;; - Use sane hash block indentation
;; - Enable cperl in flycheck
;; - Default CGI, PCGI, cpanfile and test files to Perl
(fset 'perl-mode 'cperl-mode)
(setq cperl-indent-parens-as-block t)
(add-hook 'cperl-mode-hook 'flycheck-mode)
(setq auto-mode-alist (cons '("cpanfile$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cgi$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.psgi$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.t$" . perl-mode) auto-mode-alist))

;;; Markdown Mode
;; - Add Template Toolkit files to markdown-mode
(setq auto-mode-alist (cons '("\\.tt$" . markdown-mode) auto-mode-alist))
