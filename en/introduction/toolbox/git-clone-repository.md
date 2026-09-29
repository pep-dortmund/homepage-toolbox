# `git`: Cloning a repository

To clone a repository, go to the repository's GitHub page
and click on {gui}`<> Code`.
If you have set up your SSH keys, you can now click on {gui}`SSH`
(underlined in orange in the screenshot)
and then click on the button with two squares to the right of the text line.

```{image} /img/toolbox/template_4.png
:alt:
:align: center
```

Now, open your terminal and use `cd` to navigate to the folder
where you want to clone the repository.
Alternatively, navigate to the folder using your file explorer
and use the {gui}`Open terminal here` function
(via {kbd}`right-click` or {kbd}`Ctrl`-{kbd}`click` on macOS).
You can now clone your repository locally using
```shell
git clone git@github.com:chrbeckm/lab_course_2025_26.git
```

**Important: make sure you replace `git@github.com:chrbeckm/lab_course_2025_26.git` with
the link you copied.**
