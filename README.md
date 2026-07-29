# PeP et al. Toolbox Workshop website [![Upload](https://github.com/pep-dortmund/homepage-toolbox/actions/workflows/deploy.yml/badge.svg)](https://github.com/pep-dortmund/homepage-toolbox/actions/workflows/deploy.yml)

We use [Jupyter Book](https://jupyterbook.org/stable) which is [based on the MyST Document Engine](https://mystmd.org/guide) 
to build static html pages from MyST markdown files.

## Building and testing locally

If you want to build the site locally, install the `conda`/`mamba` environment found
in `environment.yml`:
```shell
$ mamba env create --file=environment.yml
```
Next, activate the `homepage` environment:
```shell
$ mamba activate homepage
```
You can now make changes to the website. To test your changes, build
the website using the `build.sh` bash script
```shell
$ bash build.sh
```
and start a local server using python:
```shell
$ python -m http.server -d _site
```

## Adding FAQ or Blog posts

To add new posts to the FAQ or Blog section, create a new markdown file
int `faq/_posts/` or `blog/_posts/`.

The name ideally follows the format `YYYY-MM-DD-<title>.md`.

The first part of the post needs to be a yaml metadata part like this:
```
---
title: My First Toolbox Blog Post
authors:
  - name: First Last
---
```

Then you can just use MyST markdown syntax.

To use syntax highlighting, you can use MyST highlight feature like this:

````
```python
print("Hello World")
```
````
See the [MyST documentation](https://mystmd.org/guide) for more information.
