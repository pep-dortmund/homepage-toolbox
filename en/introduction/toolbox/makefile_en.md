---
layout: install
permalink: /introduction/makefile_en/
title:
---

## The Structure of the Makefile

Now, we'll discuss the makefile and explain the rules
already contained within it, as well as the rest.

- ```make
  TEXFILE = vXXX
  ```
  Here, we create the variable `TEXFILE` to store the name of the main `.tex` file.
  When we want to use the variable later, we write `$(TEXFILE)`.
  `build/$(TEXFILE).pdf` then becomes `build/vXXX.pdf`.
- ```make
  all: build/$(TEXFILE).pdf
  ```
  It's common practice to set `all` as the initial target.
  In our case, that target is the PDF generated using LaTeX. 
  Even though the makefile includes `python` scripts,
  the files they produce are not the final objective of the lab course.
  After all, we're required to submit a report, not just individual plots.
- ```make
  build/plot.pdf: plot.py ../matplotlibrc ../header-matplotlib.tex | build
    TEXINPUTS=$$(pwd)/..: MATPLOTLIBRC=../matplotlibrc python plot.py
  ```
  Now let's look at the first rule in the makefile.
  All rules follow this structure. 
  First comes the target file, then the files needed 
  to create the target file (separated by a colon),
  and on the next line, indented by a tab,
  the command to be executed to create the target file. 
  The `recipe` is always executed if one of the `prerequisites`
  has a later access date than the `target`.
  ```make
  target: prerequisites
    recipe
  ```
  In this rule, `build/plot.pdf` is created. 
  This requires `plot.py`, the `python` script that carries out the evaluation, 
  and the two configuration files `matplotlibrc` and `header-matplotlib.tex`. 
  These allow you to use LaTeX within the `matplotlib` plots. 
  Both are in the main folder of the repository and therefore `../` 
  must be added before the filenames so that they can be found. 
  You can find more about LaTeX in `matplotlib` in the 
  [LaTeX slides](https://toolbox.pep-dortmund.org/files/archive/current/latex.pdf){:target="_blank"} 
  in the _TeX section in matplotlib in TeX_. 
  In addition, you should also write your data files here, 
  with a relative path to the makefile, e.g. `data/quader.txt`. 
  The last thing on this line is `| build`. To save, 
  `python` needs the `build` folder. The access date of this doesn't matter. 
  For this reason, it's behind the pipe `|`. 
  Here, it is only checked whether the folder exists.

  The `recipe` consists of several components. 
  First, `python` is informed of the paths to the configuration files:
  `TEXINPUTS=$$(pwd)/..:` points to `header-matplotlib.tex`,
  and `MATPLOTLIBRC=../matplotlibrc` points to `matplotlibrc`. 
  The remainder of the line is the command `python plot.py`.
- ```make
  build/$(TEXFILE).pdf: build/plot.pdf
  ```
  This line is a way to assign a dependency to a file
  without writing a full rule. 
  `build/plot.pdf` is included in the build process,
  so the file must exist before we build 
  the main document using LaTeX.
- If you want to add another `python` script,
  you can add the following lines to your makefile. 
  The filenames used here are `<fit>`;
  replace these five characters with your own filenames.
  ```make
  build/<fit>.pdf: <fit>.py data/<fit>.py ../matplotlibrc ../header-matplotlib.tex | build
    TEXINPUTS=$$(pwd)/..: MATPLOTLIBRC=../matplotlibrc python <fit>.py
  ```
  You can then extend the line 
  `build/$(TEXFILE).pdf: build/plot.pdf` accordingly.
  With the backslash `\`, 
  the additional file can be placed on a new line.
  But, with more files, the line becomes longer
  and harder to read.
  ```make
    build/$(TEXFILE).pdf: build/plot.pdf \
      build/<fit>.pdf
  ```
- ```make
  build/$(TEXFILE).pdf: FORCE | build
    TEXINPUTS=..: \
    BIBINPUTS=..: \
    max_print_line=1048576 \
    latexmk \
      --lualatex \
      --output-directory=build \
      --interaction=nonstopmode \
      --halt-on-error \
    $(TEXFILE).tex
  ```
  This is the long LaTeX rule. 
  It includes everything discussed in the
  [`make` slides](https://toolbox.pep-dortmund.org/files/archive/current/make.pdf){:target="_blank"}. 
  The `prerequisites` here differ from those for the `python` rules. 
  We discussed `| build` in the context of the `python` rule,
  but `FORCE` is new here. 
  It's a dependency that is never satisfied.
  Further down in the Makefile, we also see a line
  containing only `FORCE:`. 
  This ensures the `recipe` is always executed.
  This is intentionally written
  since we are calling `latexmk` rather than `lualatex`. 
  You will also notice that we haven't specified anywhere
  which `.tex` files belong to this rule. 
  We don't need to because `latexmk` handles that automatically
  once it identifies the main file. 
  Let's go through the individual lines of the `recipe`:
  - `TEXINPUTS=..: \`:
    The `header.tex` file is located in the repository's main folder.
    To ensure `latexmk` finds it,
    we extend the default search path (`:`).
    which includes the current folder and all subfolders,
    to also include the main folder. 
    Using `\` allows us to visually split the line into several
    separate lines, though everything from `TEXINPUTS` to
    `$(TEXFILE).tex` is executed as a single line.
  - `BIBINPUTS=..: \`:
    We also extend the search path for bibliography files,
    since `lit.bib` and `programme.bib` are now located
    in the main folder. 
    This is because `latexmk` detects when you are using `biber`
    and executes everything in the correct order.
  - `max_print_line=1048576 \`:
    With this line, we increase the number of characters
    allowed on a single line when running LaTeX. 
    This makes the output look _nicer_ and less choppy.
  - `latexmk \` starts `latexmk` with the following arguments:
    - `--lualatex`: Uses `lualatex` as the TeX engine.
    - `--output-directory=build \`:
      All generated files are saved in the `build` folder.
    - `--interaction=nonstopmode \`: If errors occur,
      `lualatex`'s interactive error-handling mode
      is disabled.
    - `--halt-on-error \`: If errors occur,
      the process is stopped.
    - `$(TEXFILE).tex`: The file to be built.
- ```make
  build:
    mkdir -p build
  ```
  We have already discussed the `build` folder in the rules.
  This is where it is created. 
  It has no dependencies,
  so the first line ends after the colon `:`. 
  The `-p` flag ensures that no error message
  is displayed if the folder already exists.
  Further, if we want to create a chain of folders
  (such as `build/figures`), all folders in the chain are created.
- ```make
  clean:
    rm -rf build
  ```
  It's good practice to have a command that returns the project
  to the state it was in before `make` was run.
  Since everything generated is stored in the `build` folder,
  we only need to delete that folder.
  We use the `-rf` flags
  because we are deleting a folder (`-r`)
  and do not want an error message displayed
  if the object to be deleted does not exist (`-f`).
- ```make
  FORCE:
  ```
  As described in the LaTeX rule, this is an
  always up-to-date `target`.
- ```make
  .PHONY: all clean
  ```
  This is the final rule and is set so that `make` 
  knows the listed `targets` do not produce files, 
  and (even if files with those names do exist) so that
  the rules will still be executed.

### Running the makefile

If you want to use your `Makefile`, you have several options:
1. `make`: This command ensures that everything runs so that the latest version
   of the `prerequisites` listed in the `all` `target` is generated.
2. `make clean`: Use this to clean up your experiment folder.
3. `make build/plot.pdf`: Are you working on the plot or another `python` script
   and want to view the results? You can then specify the corresponding `target` 
   as an argument after `make`.