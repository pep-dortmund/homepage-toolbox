# PeP et al. Toolbox Workshop website [![Upload](https://github.com/pep-dortmund/homepage/actions/workflows/deploy.yml/badge.svg)](https://github.com/pep-dortmund/homepage/actions/workflows/deploy.yml)

We use jekyll to build static html pages from markdown and travis to deploy the site.

If you want to build the site locally, install ruby, node and some optional dependencies we need using your package manager and bundler using `gem`.

### Ubuntu

```
$ sudo apt install ruby-dev nodejs libxml2-dev libxslt1-dev build-essential
$ sudo gem install bundler
```

### Arch Linux

```
$ sudo pacman -S ruby nodejs libxml2 libxslt
$ sudo gem install bundler
```

### Fedora Linux

```
$ sudo dnf install ruby ruby-devel nodejs libxml2 libxslt
$ sudo gem install bundler
```

For all Linux:

And add this to your bashrc/zshrc/.profile/...:
```
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
```

### macOS

```
$ brew install ruby node
$ gem install bundler
```

## Testing locally

Install the necessary gems
```
$ bundle config set path 'vendor/bundle'
$ bundle install
```

Build and serve the site locally, automatically updates if you make changes.
You might need to reload without cache (`Shift` + `R` in Chrome).

```
$ bundle exec jekyll serve
```

## Adding FAQ or Blog posts

To add new posts to the FAQ or Blog section, create a new markdown file
int `faq/_posts/` or `blog/_posts/`.

The name needs to follow the format `YYYY-MM-DD-<title>.md`.

The first part of the post needs to be a yaml metadata part like this:
```
---
layout: post
title: My First Toolbox Blog Post
author: Firstname Lastname
---
```

Then you can just use normal markdown syntax.

To use syntax highlighting, you can use jekylls highlight feature like this:

```
{% highlight python %}
print("Hello World")
{% endhighlight %}
```
