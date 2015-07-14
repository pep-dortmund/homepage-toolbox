#!/bin/sh

ghp-import -n ./_site && git push -fq https://$GH_TOKEN@github.com/$TRAVIS_REPO_SLUG.git gh-pages > /dev/null

echo 'toolbox.pep-dortmund.org' > ./_site/CNAME
ghp-import -n ./_site && git push -fq https://$GH_TOKEN@github.com/pep-dortmund/toolbox.pep-dortmund.org gh-pages > /dev/null

