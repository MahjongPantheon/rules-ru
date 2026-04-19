#!/bin/bash

mkdir /usr/share/fonts/extra_fonts
mv ${GITHUB_WORKSPACE}/fonts/* /usr/share/fonts/extra_fonts/
fc-cache -fv

# Main rules file
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape rules.tex || true)
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape rules.tex || true) # second pass to generate proper ToC

# Rules variations file
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape variations.tex || true)

# Referee guide file
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape referees.tex || true)
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape referees.tex || true) # second pass to generate proper ToC

# Tournaments guide file
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape tournaments.tex || true)
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape tournaments.tex || true) # second pass to generate proper ToC

# Duplicate file
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape duplicate_mahjong.tex || true)
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape duplicate_mahjong.tex || true) # second pass to generate proper ToC

# Appenfix file
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape appendix.tex || true)
(lualatex -synctex=1 -interaction=nonstopmode -shell-escape appendix.tex || true) # second pass to generate proper ToC
