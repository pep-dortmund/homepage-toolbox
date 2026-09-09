# The first steps

What should you keep in mind while learning a (new) programming language?

Programming languages have a syntax that dictates
which keywords exist and what they do.
It also suggests how code should be written;
much like the grammar in a spoken language, it dictates the sequence
of words or commands that the reader (whether human or computer)
can understand.
In addition, it involves the characters used to structure sentences or code.

Compared with `C++` or `Java`, two widely used languages,
`python` uses fewer characters to structure code.
There are still a few, however, so get your
{kbd}`:`, {kbd}`{`, {kbd}`(`, {kbd}`[`, {kbd}`]`, {kbd}`)` and {kbd}`}` keys ready.

The first program typically written in a new programming language is _Hello World!_
We will do the same here and teach `python` to output something for us.

## VSCode/VSCodium
To start, open VSCode or VSCodium (from here referred to as VSC).
Do you have a Mac? Then, open {gui}`Finder`, type {kbd}`VSCodium`,
and open the application.

If you're using Windows, click on the Windows logo {icon}`ant-design:windows-filled` at the bottom of the screen,
type {kbd}`VSCode`, and click on the VSCode app.

```{image} /img/introduction/VSCode_Open.png
:alt:
:class: screenshot
:align: center
```

Now, create a folder called _ToolboxWorkshop_ on the Desktop
and create a file named _introduction.py_ inside it.
In VSC, there's a {gui}`File` menu in the top bar;
click on it, and then select {gui}`Open Folder`.

```{image} /img/introduction/VSCode_NewDir1.png
:alt:
:class: screenshot
:align: center
```

The following dialog might open in the middle of VSC.
If it does, click {gui}`Show local`.

```{image} /img/introduction/VSCode_NewDir2.png
:alt:
:class: screenshot
:align: center
```

Navigate to the Desktop in the window that appears
and create a new folder called {kbd}`ToolboxWorkshop`.
In Windows, you can use the {gui}`New folder` button for this.

```{image} /img/introduction/VSCode_NewDir3.png
:alt:
:class: screenshot
:align: center
```

Open this folder with the {gui}`Select Folder` button on the lower right.

```{image} /img/introduction/VSCode_NewDir4.png
:alt:
:class: screenshot
:align: center
```

In VSC, create a file in the left sidebar; to do so,
click on the first icon {icon}`ant-design:file-add-outlined` to the right of {gui}`TOOLBOXWORKSHOP`.
Rename the file to {kbd}`introduction.py`.
When you've entered the name, confirm it by pressing {kbd}`Enter`.

```{image} /img/introduction/VSCode_NewFile.png
:alt:
:class: screenshot
:align: center
```

## _Hello World!_

For our first `python` program, we will write code to output _Hello World!_
To do this, write the following line in `introduction.py`:
```python
print("Hello World!")
```

You might notice that the colors in VSC
differ from those in the code block. This is not an error.
This color scheme is known as _highlighting_, and it varies
by program. Therefore, it's no issue at all
if the colors differ between the code blocks here and
in VSC.
Once you get used to the colors in VSC, you'll find them quite handy,
as they make it easier to recognize structures within the code.
They also help spot typos, for example, if `print` is no longer
highlighted, because `prnit` was typed instead.

`print` is a `python` function used to output various things.
We will use it frequently in these lessons to display all sorts of output.
Anything placed within `()` is called an argument;
in this case, it is the text/[string](/introduction/variables_en/#Strings) "Hello World!"
Additional arguments can be output by separating them with a comma (`,`);
for example, `print("Hello World!", "Hello World!")`.
You can think of a `python` function as behaving like a mathematical function,
such as $$f(x) = x^2.$$
The difference is that `python` allows more than just numbers to be used as arguments.

```{image} /img/introduction/VSCode_HelloWorld.png
:alt:
:class: screenshot
:align: center
```

Your VSC should now look similar to the screenshot below.
The white circle next to the filename is important.
It indicates that the changes in the file have not yet been saved.
You can save using {kbd}`Ctrl` + {kbd}`s`, or via {gui}`File` and then {gui}`Save File`.
The keyboard shortcut for saving on your operating system is also displayed there.

:::{tip} Saving changes
Before you run a `python` file, you must save your changes;
otherwise, `python` cannot execute your newly written code.
Always keep an eye out for the white dot.
:::

## Open the terminal and run `python`
This section is more detailed in certain parts for Windows;
if you are using a different operating system,
these steps are not necessary for you.

Now, we open the terminal integrated into VSC to run our `python` file.
To do this, {kbd}`right-click` the file name in the list on the left
and then click {gui}`Open in Integrated Terminal`.

```{image} /img/introduction/VSCode_Terminal0.png
:alt:
:class: screenshot
:align: center
```

The terminal is now open at the bottom of the window.

:::{attention} Windows
If {icon}`codicon:terminal-powershell` {gui}`powershell` appears at the top right of the terminal,
you still need to [set up your terminal](/install/windows-11/#windows-11-term).

```{image} /img/introduction/VSCode_Terminal1.png
:alt:
:class: screenshot
:align: center
```

Now repeat the step using {gui}`Open in Integrated Terminal`.
:::


Type {kbd}`ls` into your terminal and run the command
by pressing {kbd}`Enter`.
{kbd}`ls` stands for `list` and displays the files contained in a folder.
You will see a list of names;
there should be `introduction.py` among them.
<!-- A find command that searches for introduction.py within a reasonable scope and navigates to the folder? -->
Now type {kbd}`python introduction.py` into your terminal and run it by pressing {kbd}`Enter`.
The output will be `Hello World!`, exactly
what we passed as an argument to `print`.

```{image} /img/introduction/VSCode_Terminal2.png
:alt:
:class: screenshot
:align: center
```

Your terminal should now look similar to the one in the screenshot.
The green text will differ.
Your username appears before the `@` (not `toolbox`),
followed by the name of your laptop or computer.
The path appears in blue after the `:`, with folders separated by `/`.
This is the prompt, and it can be customized.

:::{tip} Running `python`-scripts
Whenever the instructions say to run `python introduction.py` in the future,
it means you should type {kbd}`python introduction.py` into the terminal
and execute it by pressing {kbd}`Enter`.
You can save time by repeating the last command you ran
using the {kbd}`Up Arrow` key {icon}`bi:arrow-up-square` and {kbd}`Enter`.
:::


## Comments
In programming languages, comments are used to explain the code.
This is useful for you and for others working with your code,
such as your lab partner.
Comments can also be used to provide headings for sections of code.
For lab reports, these might include _reading in data_, 
_least-squares fitting_, and _graphical representation_.
In-line comments (or comments placed on the same line as the code) 
begin with `#`.
Longer comments begin with `"""` and end the same way.
We can therefore add comments to our current code in `introduction.py` as follows:
```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python_en/

The last included section is: Comments
"""

# Lesson: The first steps

# Subsection: Hello World!
print("Hello World!")  # prints the words Hello World! as an output
# print("Hello World!") <-- this line will be ignored
```
What do you notice about the output when you run this code?

Nothing should change.
All comments are ignored during execution,
just like the blank lines.
So, you can use both to structure your code.

Let's move on to [Lesson 2 - Variables](/introduction/variables_en).

# Complete code
At the end of each lesson, you will find the complete code for that lesson.

:::{seealso} Click here to show the complete code from for this lesson
:class: dropdown
```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python/

The included section is: Comments
"""

# Lesson: The first steps
print("Lesson 1")
# Subsection: Hello World!
print("Hello World!")  # prints the words Hello World! as an output
# print("Hello World!") <-- this line will be ignored
```
:::
