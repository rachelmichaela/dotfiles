;; (setq user-full-name ""
;;       user-mail-address "")
(setq doom-font (font-spec :family "Ubuntu Mono"
                           :size 13))
(setq doom-theme 'doom-manegarm)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")
(setq-default indent-tabs-mode t)
(setq confirm-kill-emacs nil)
(add-hook 'window-setup-hook #'toggle-frame-maximized)
