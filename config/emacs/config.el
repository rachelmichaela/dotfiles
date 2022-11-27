;;; General configuration
;; - Define identity for Git et al
;; - Set Doom theme to Dracula
;; - Set local org file directory to home subdirectory
;; - Disable exit confirmation messages
(setq user-full-name "Rachel Michaela"
      user-mail-address "hacking@rami.org.il")
(setq doom-theme 'doom-dracula)
(setq org-directory "~/org/")
(setq confirm-kill-emacs nil)

;;; Dashboard Configuration
;; - Remove footer block
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)

;;; Editor Configuration
;; - Use relative line numbers
;; - Use tabs for indentation
;; - Use a tab width of 4 columns
;; - Provide an 80-column ruler
;; - Add modes to EditorConfig indentation list
(setq display-line-numbers-type 'relative)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(global-display-fill-column-indicator-mode t)
(after! editorconfig
  (add-to-list 'editorconfig-indentation-alist
	       '(cperl-mode cperl-indent-level))
  (add-to-list 'editorconfig-indentation-alist
	       '(LaTeX-mode latex-indent-level)))

;;; Perl Mode
;; - Enforce cperl-mode
;; - Use sane hash block indentation
;; - Enable cperl in flycheck
;; - Default CGI, PCGI, cpanfile and test files to Perl
;; - Explicitly enforce tab indentation
(fset 'perl-mode 'cperl-mode)
(setq cperl-indent-parens-as-block t)
(add-hook 'cperl-mode-hook 'flycheck-mode)
(setq auto-mode-alist (cons '("cpanfile$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cgi$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.psgi$" . perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.t$" . perl-mode) auto-mode-alist))
(setq cperl-indent-level 4)
(setq cperl-tab-always-indent t)

;;; Markdown Mode
;; - Add template toolkit files to markdown mode
(setq auto-mode-alist (cons '("\\.tt$" . markdown-mode) auto-mode-alist))
