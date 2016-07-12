#!/bin/sh

echo 'toolbox.pep-dortmund.org'  > ./_site/CNAME
ghp-import -n ./_site && git push -fq git@github.com:pep-dortmund/toolbox.pep-dortmund.org  gh-pages
