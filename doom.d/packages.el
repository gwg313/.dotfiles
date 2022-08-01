(package! spray :pin "74d9dcfa2e8b38f96a43de9ab0eb13364300cb46")

(package! aas :recipe (:host github :repo "ymarco/auto-activating-snippets")
  :pin "3076cefea0f6ae9d7757f13c27b5602e007b58ec")
(package! laas :recipe (:host github :repo "tecosaur/LaTeX-auto-activating-snippets"))

(package! org-super-agenda :pin "f5e80e4d0da6b2eeda9ba21e021838fa6a495376")

(package! doct
  :recipe (:host github :repo "progfolio/doct")
  :pin "67fc46c8a68989b932bce879fbaa62c6a2456a1f")

(package! org-pretty-table
  :recipe (:host github :repo "Fuco1/org-pretty-table") :pin "87772a9469d91770f87bfa788580fca69b9e697a")

(package! org-fragtog :pin "0151cabc7aa9f244f82e682b87713b344d780c23")

(package! org-appear :recipe (:host github :repo "awth13/org-appear")
  :pin "6ee49875f8bdefafbde849f5628d673e9740cf8c")

(package! org-pretty-tags :pin "5c7521651b35ae9a7d3add4a66ae8cc176ae1c76")

(package! org-ol-tree :recipe (:host github :repo "Townk/org-ol-tree")
  :pin "207c748aa5fea8626be619e8c55bdb1c16118c25")

(package! engrave-faces :recipe (:host github :repo "tecosaur/engrave-faces"))

;; Extra Functionality

(package! ox-gfm :pin "99f93011b069e02b37c9660b8fcb45dab086a07f")

(package! org-ref)

(package! ob-julia :recipe (:host github :repo "nico202/ob-julia" :files ("*.el" "julia")))

(package! org-transclusion :recipe (:host github :repo "nobiot/org-transclusion")
  :pin "daa18df6de26b74badab0372e8a64fbde6a7be71")

(package! org-graph-view :recipe (:host github :repo "alphapapa/org-graph-view") :pin "13314338d70d2c19511efccc491bed3ca0758170")

(package! org-chef :pin "5b461ed7d458cdcbff0af5013fbdbe88cbfb13a4")

(package! org-pandoc-import :recipe
  (:host github :repo "tecosaur/org-pandoc-import" :files ("*.el" "filters" "preprocessors")))

(package! graphviz-dot-mode :pin "3642a0a5f41a80c8ecef7c6143d514200b80e194")

(package! gitconfig-mode
	  :recipe (:host github :repo "magit/git-modes"
			 :files ("gitconfig-mode.el")))
(package! gitignore-mode
	  :recipe (:host github :repo "magit/git-modes"
			 :files ("gitignore-mode.el")))
(package! org-roam-ui :recipe (:host github :repo "org-roam/org-roam-ui" :files ("*.el" "out")) :pin "cd1aefd56f648d32a25aae672ac1ab90893c0133")
(package! websocket :pin "fda4455333309545c0787a79d73c19ddbeb57980") ; dependency of `org-roam-ui'

(package! quarto-emacs
	  :recipe (:host github :repo "quarto-dev/quarto-emacs"))

(package! company-tabnine :recipe (:host github :repo "TommyX12/company-tabnine"))
