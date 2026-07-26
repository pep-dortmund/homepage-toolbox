---
layout: install
permalink: /introduction/git-template_en/
title:
---

## `git`: The template repository

We've made a template for the lab reports in this practical course.
This means you don't have to manually copy everything 
from the slides and notebooks into your report.
To make effective use of the template, you need a GitHub account.
If you don't have one yet, you can create one
[here](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2Feducation&source=header){:target="_blank"}.

When using Git, it's easier to work with SSH keys instead of passwords.
At the end of the [Git slides](https://toolbox.pep-dortmund.org/files/archive/current/git.pdf){:target="_blank"},
you will find instructions on how to set up SSH keys for authentication with GitHub.

To use the template, follow
[this link to the repository](https://github.com/pep-dortmund/toolbox-workshop-protocol-template){:target="_blank"}.
Click the green _Use this template_ button on the right side of the screen.
In the dialog box that appears, select _Create a new repository_.

<p align="center">
  <img alt="" src="/img/toolbox/template_0.png" style="max-width:80%;" />
</p>

You'll need to enter a few details on the following page.

1. Select `pep-dortmund/toolbox-workshop-protocol-template` as the _Repository template_.
2. The _Owner_ field will display your GitHub username (not `chrbeckm`, that’s just the person writing this guide).
3. Enter a name for your repository in the text field below _Repository name*_. 
It's important that the name isn't already taken; GitHub will indicate this with a green checkmark. 
For example, you could use the name `lab_course_2025_26`,
or choose something like `beginnerpractical_20xx_xx` and replace the `x`s with the relevant years. 
A good name makes it easier to locate the repository later.
4. _Public_ or _Private_: You can choose whether your repository is public,
meaning it can be viewed by anyone on the internet, or private,
meaning it can only be viewed by you and invited GitHub users.
5. Finally, click _Create repository_.

<p align="center">
  <img alt="" src="/img/toolbox/template_1.png" style="max-width:60%;" />
</p>

Wait a moment for your repository to be created.
Then, you will be automatically redirected to your repository.

<p align="center">
  <img alt="" src="/img/toolbox/template_2.png" style="max-width:40%;" />
</p>

After loading, your repository will look similar to the one on the left.
A background process is currently removing some files from your repository
that you don't need, but which we require in the template repository.
The files `.github/workflows` and `environment.yml` have been removed.
Additionally, the content of `README.md` has been moved to `notes.md`,
allowing you to write your own lines in `README.md`.

<p align="center">
  <img alt="" src="/img/toolbox/template_3.png" style="max-width:100%;" />
</p>