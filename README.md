# PeP et al. Toolbox Workshop website

We use jekyll to build static html pages from markdown and travis to deploy the site.

If you want to build the site locally, install ruby, node and some optional dependencies we need using your package manager and bundler using `gem`.

### Ubuntu

```
$ sudo apt install ruby-dev nodejs-legacy libxml2-dev libxslt-dev
$ sudo gem install bundler
```


### Arch Linux

```
$ sudo pacman -S ruby nodejs libxml2 libxslt
$ sudo gem install bundler
```

### macOS

```
$ brew install ruby node
$ gem install bundler
```

## Testing locally

Install the necessary gems
```
$ bundle install --path vendor/bundle
```

Build and serve the site locally, automatically updates if you make changes.
You might need to reload without cache (`Shift` + `R` in Chrome).

```
$ bundle exec jekyll serve
```
