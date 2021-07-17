#!/bin/bash


# download installer

cd ~/.local
curl -L http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xz

# create profile
echo "selected_scheme scheme-basic" > toolbox.profile

# install LaTeX
TEXLIVE_INSTALL_PREFIX=~/.local/texlive ./install-tl-*/install-tl -profile toolbox.profile

# add to PATH
echo 'export PATH="$HOME/.local/texlive/2021/bin/x86_64-linux:$PATH"' >> $HOME/.bashrc

# install packages
./texlive/2021/bin/x86_64-linux/tlmgr install babel \
       	babel-english \
	babel-french \
	babel-german \
       	beamer \
	biber \
	biblatex \
	blindtext \
	bookmark \
	booktabs \
	caption \
	carlisle \
	circuitikz \
	csquotes \
	enumitem \
	environ \
	epstopdf-pkg \
	eso-pic \
	extsizes \
	fancyvrb \
	fira \
	firamath \
	firamath-otf \
	float \
	fontawesome5 \
	fontspec \
	infwarerr \
	koma-script \
	latex \
	latex-bin \
	latexmk \
	listings \
	lstaddons \
	luacode \
	lualatex-math \
	luatex \
	luatex85 \
	luatexbase \
	mathtools \
	metalogo \
	mhchem \
	microtype \
	mleftright \
	mwe \
	ncctools \
	oberdiek \
	pdflscape \
	pgfopts \
	placeins \
	siunitx \
	standalone \
	standalone \
	tabu \
	tabulary \
	tcolorbox \
	texdoc \
	threeparttable \
	tikz-feynman \
	trimspaces \
	type1cm \
	unicode-math \
	varwidth \
	xits \
	xkeyval \
	xpatch \
	xstring

# set options
./texlive/2021/bin/x86_64-linux/tlmgr option autobackup -- -1
./texlive/2021/bin/x86_64-linux/tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet

