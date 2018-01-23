(add-to-list 'load-path "~/downloads/ox-hugo")

(require 'ox)
(require 'ox-hugo)

(setq org-export-with-author nil)
(find-file "content-org/all.org")
(org-hugo-export-wim-to-md t nil nil nil)
