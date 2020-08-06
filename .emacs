(require 'package)
(add-to-list 'package-archives '("melpa-staple" . "http://melpa.org/packages/"))
(package-initialize)

;; ;; execute below to install dependencies
;; (package-refresh-contents)
;; (package-install 'use-package)
;; (package-install 'flycheck)
;; (package-install 'lsp-mode)
;; (package-install 'lsp-ui)
;; (package-install 'company)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (company-lsp lsp-ui lsp-mode flycheck use-package))))
 ;; 

(require 'use-package)
(use-package lsp-mode
  :ensure t

  :config
  (define-key lsp-mode-map [remap xref-find-definitions] 'lsp-ui-peek-find-definitions)
  (define-key lsp-mode-map [remap xref-find-references] 'lsp-ui-peek-find-references)

  :hook
  (python-mode . lsp)
  (fortran-mode . lsp))


;; (require 'use-package)
;; (use-package lsp-mode
;;   :ensure t

;;   :custom
;;   (lsp-ui-doc-enable nil "Disable auto display of documentation")
;;   (lsp-ui-doc-include-signature t "Add signatures to documentation")
;;   (lsp-ui-doc-position (quote top) "Placement of documentation popup")
;;   (lsp-signature-doc-lines 10 "Limit lines for signature display")
;;   (lsp-ui-sideline-show-hover t "Show hover text in sideline")

;;   :config
;;   (define-key lsp-mode-map [remap xref-find-definitions] 'lsp-ui-peek-find-definitions)
;;   (define-key lsp-mode-map [remap xref-find-references] 'lsp-ui-peek-find-references)
  
;;   :bind
;;   ("C-c d" . 'lsp-describe-thing-at-point)
;;   ("C-c f" . 'lsp-format-buffer)

;;   :hook
;;   (python-mode . lsp)
;;   (fortran-mode . lsp))
