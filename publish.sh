#!/bin/sh

echo 'toolbox.pep-dortmund.de'  > ./_site/CNAME
ghp-import -n ./_site && git push -fq https://$GH_TOKEN@github.com/pep-dortmund/toolbox.pep-dortmund.de  gh-pages > /dev/null

echo 'toolbox.pep-dortmund.org' > ./_site/CNAME
ghp-import -n ./_site && git push -fq https://$GH_TOKEN@github.com/pep-dortmund/toolbox.pep-dortmund.org gh-pages > /dev/null
