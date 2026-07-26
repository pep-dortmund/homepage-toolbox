---
layout: install
permalink: /introduction/variables_en/
title:
---
<script
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
  type="text/javascript">
</script>
# Different variable types

Next, we'll discuss the concept of variables.
Variables are objects with a name and a value.

## Numbers
Sticking with the previous example of mathematical functions, let's start with numbers.
Add these lines to the end of your `introduction.py` file:
```python
x = 5
print(x)
```
Here, a variable called  `x` is created and assigned the value 5.
Then, we output the variable using `print`.

If your terminal is still at the bottom of the window, you can click once
in the last line.
You can use the up arrow key to recall the last command entered
and run it again by pressing `Enter`.
If your terminal is closed, the steps to reopen it can be found
[here](/introduction/first_steps_en/#Terminal){:target="_blank"}.
You should now see this output:
```
Hello World!
5
```

Of course, a single variable isn't everything, so let's introduce a few more.
Add these lines to the end of your `introduction.py` script.
```python
y = 3
thisisavariable = 4
hereIsAnother = 9.81
this_is_a_multiplier = 2.1e12
```
With these lines, we created four new variables.
`y` is a variable name we also recognize from mathematics,
but in `python` we can choose other identifiers as well, as shown in the other two lines.
The name should be a single, continuous string (meaning it contains no spaces and does not start with a number).
It is always advisable to choose a _descriptive_ name; examples relevant to the lab course include
`nr_of_measurements`, `temperature_gold`, and `lengthRod1`.
In this guide, whenever appropriate (and provided we aren't just using `a`, `b`, `x`, or `y`)we will use
[snake_case](https://en.wikipedia.org/wiki/Naming_convention_(programming)#Examples_of_multiple-word_identifier_formats){:target="_blank"}, e.g., `this_is_a_multiplier`.

For non-integer numbers or those in scientific notation, we use a period as the decimal
separator, as with `hereIsAnother`.
To avoid having to type a large number of zeros, we can use `e` notation.
With this method, we specify the number first, followed by the power of ten after the `e`.
Thus, we have defined
`this_is_a_multiplier`$$ = 2.1 * 10^{12}$$ in this way.

Displaying the values ​​of multiple variables can become cluttered.
To better show them, we use `f-strings`, which are capable of much more
(which we'll also demonstrate in the workshop), but here we'll stick
to the basics.
The following syntax allows us to display both the name and the value of a variable.
Add this line to the end of your file and run it again.
```python
print(f"{x = }")
print(f"{hereIsAnother = }")
```
As the name suggests, `f-strings` require an `f` and a string.
You can see the `f` in both `print` functions, right after the opening parentheses.
Strings are collections of characters, and we will look at them in the section
[strings](/introduction/variables_en/#Strings) immediately afterwards.
For now, we only need to know that strings in Python begin and end with a `"`
character.
In `f-strings`, we use curly braces `{}` to output the value of the variable
contained within them. The `=` ensures that the name is displayed first,
followed by the value.

### Arithmetic operations
As in mathematics, we can use basic arithmetic operations in Python.
The appropriate symbols are `+`, `-`, `*` and `/`.
Exponents are written as `**` in Python.
Modulo and floor division are special features of programming languages,
and the symbols `%` and `//` are used for these.

You can copy the following lines of code to the end of your `introduction.py` 
script again, but feel free to try out your own ideas as well.
```python
print("Rechenmethoden")
# Addition
print(f"{4 + 2 = }")
print(f"{8 + 4 + 5 = }")
# Subtraction
print(f"{4 - 2 = }")
print(f"{5 - 8 = }")
# Multiplication
print(f"{4 * 2 = }")
print(f"{5 * 8 = }")
# Division
print(f"{4 / 2 = }")
print(f"{5 / 8 = }")
# Exponential
print(f"{4**2 = }")
print(f"{2**(-1) = }")
```
These arithmetic operations should be quite familiar.
For the next two, we'll look first at the code and the output,
and then discuss them in more detail.
```python
# Modulo
print(f"{4 % 1 = }")    # = 0
print(f"{4 % 2 = }")    # = 0
print(f"{4 % 3 = }")    # = 1
print(f"{4 % 4 = }")    # = 0
print(f"{4 % 5 = }")    # = 4
# Floor division with remainders / Euclidean division
print(f"{3 // 1 = }")   # = 3
print(f"{3 // 2 = }")   # = 1
print(f"{3 // 4 = }")   # = 0
```
Modulo (`%`) gives the remainder left over after division.
4 is divisible by 1, 2, and 4 without a remainder;
4 divides by 3 once, leaving a remainder of 1.
Similarly, 4 divides by 5 zero times, leaving a remainder of 4.
Floor division (`//`) returns the number of times the divisor divides the dividend.
As with "normal" division, 1 divides 3 three times.
2 divides 3 only once, and 4 not at all.


## <a id="Strings"></a>Strings
Strings are variables that contain a sequence of characters.
In most cases, these are letters.
This can be something like "Hello World!" (as in the _Hello World!_ example), 
but it can also be much more.

Before the next example code, let's have a look at string addition, 
and we'll explain it after the example.
Add this code to the end of the file and run it.
```python
print("Strings")
club_name = "PeP et al. e.V."
event = "Toolbox Workshop"
year = "2025"
print(event)
string_addition = club_name + event + year
print(string_addition)
```
Strings in `python` are marked with quotation marks, much like direct speech in text.
The first line of the new output is the content of the variable `event`.
The last line of output is the result of string addition,
because in `python`, adding strings together means sticking them together end-to-end.
Since the result doesn't look quite right (it's missing spaces), 
we add these three lines at the end.
What differences do you notice in the output?
```python
string_addition = club_name + " " + event + " " + year
print(string_addition)
print(club_name, event, year)
```
Unlike the first `string_addition` output, there are now spaces between
the individual variables. We did this using the space strings `" "`.
So, we can always combine strings, regardless of whether they come
as variables or as strings within the line.
The final output looks like the `string_addition` with spaces.
This is because `print` inserts spaces between the arguments by default.
In this case, the arguments are the three string variables, separated by commas.

## <a id="Lists"></a>Lists
With the variables introduced so far, we can use individual numbers 
or strings of characters in our program code.
However, if we measure something, creating and using a separate variable for each reading
quickly becomes cumbersome, even with just a few data points.
For this reason, we have lists. These allow us to store multiple values.
As with any other variable, we must assign a name to the list. 
Let's assume here that we want to store the names of elements from an experiment.
Therefore, we'll call it `elements` and store the names of several elements in it.
```python
elements = ["gold", "silver", "copper"]
```
The fact that `elements` is a list
is indicated by the square brackets `[]`.
The individual elements of the list are placed between the brackets
and separated by commas.
If we now output the list, we get
```python
print(f"{elements = }")
# elements = ['gold', 'silver', 'copper']
```
### Indexing
Since this only allows us to output the entire list, let's now look at
how to retrieve individual elements from the list.
This is called indexing. Just like the command creating the list,
it uses square brackets. Consequently, to get the first element of the list, we write
```python
print(f"{elements[1] = }")
```
When we run this, we get `elements[1] = 'silver'`.

If you don't have any programming experience yet, this is surprising.
The first element of the list is actually `gold`,
so why does `python` output `silver`?
In almost all programming languages, counting starts at 0,
so `elements[1]` is the second element in our "normal" way of counting.
For the list `elements`, we can use the indices 0, 1, and 2,
but also -1, -2, and -3.
We can use the following code to output the first and last elements.
```python
print(f"{elements[0] = }", f"{elements[-3] = }")
print(f"{elements[2] = }", f"{elements[-1] = }")
```
We can retrieve not only individual elements from a list,
but also slices (or parts) of lists. To do this, instead of just putting a single number
inside the square brackets, we use `[start_index:end_index+1]`.
The following lines output three list slices; can you figure out
what the output will be before running the code?
```python
print(f"{elements[0:2] = }")
print(f"{elements[-3:-1] = }")
print(f"{elements[2:] = }")
```
The first line outputs a list containing the elements 
from index 0 up to (but not including) index 2.
The second line yields the same list slice,
since we are indexing using negative indices here.
In the third line, we see only a single number before the colon.
This notation provides a shorthand for indexing when we want to start from the beginning
or go to the end of the list. We can also obtain the entire list using `elements[:]`.

### Replacing and extending
As with other variables, we can overwrite individual elements of the list.
Let's assume that for the experiment, we work with titanium instead of silver.
In that case, we can replace the entry.
```python
elements[1] = "titanium"
print(f"{elements = }")
```
If we realize that we did perform a measurement with silver after all,
we can extend the list using the `.append()` function.
```python
elements.append("silver")
print(f"{elements = }")
```
As with numbers and strings, let's look at what happens with `+` and `*` when using lists.
`+` combines lists, but the original lists remain unchanged.
`*` multiplies lists, again without altering the original list.
```python
print(f"{elements+elements[:2] = }")
print(f"{elements * 2 = }")
print(f"{elements = }")
```

Let's move on to [Lesson 3 - Control Structures](/introduction/control_structures).

# Complete code
At the end of each lesson, you will find the complete code for that lesson.

```python
"""
This file contains the code for the python introduction of the Toolbox Workshop.
site: https://toolbox.pep-dortmund.org/introduction/python_en/

The included section is: variables
"""

# Lection: Different variable types
print("Lektion 2")

x = 5
print(x)

y = 3
thisisavariable = 4
hereIsAnother = 9.81
this_is_a_multiplicator = 2.1e12

print(f"{x = }")
print(f"{hereIsAnother = }")

print("Arithmetic operations")
# Addition
print(f"{4 + 2 = }")
print(f"{8 + 4 + 5 = }")
# Subtraction
print(f"{4 - 2 = }")
print(f"{5 - 8 = }")
# Multiplication
print(f"{4 * 2 = }")
print(f"{5 * 8 = }")
# Division
print(f"{4 / 2 = }")
print(f"{5 / 8 = }")
# Exponential
print(f"{4**2 = }")
print(f"{2**(-1) = }")

# Modulo division
print(f"{4 % 1 = }")    # = 0
print(f"{4 % 2 = }")    # = 0
print(f"{4 % 3 = }")    # = 1
print(f"{4 % 4 = }")    # = 0
print(f"{4 % 5 = }")    # = 4
# Eloor division with remainders / Euclidean division
print(f"{3 // 1 = }")   # = 3
print(f"{3 // 2 = }")   # = 1
print(f"{3 // 4 = }")   # = 0

print("Strings")
club_name = "PeP et al. e.V."
event = "Toolbox Workshop"
year = "2025"
print(event)
string_addition = club_name + event + year
print(string_addition)

string_addition = club_name + " " + event + " " + year
print(string_addition)
print(club_name, event, year)

print("Lists")
elements = ["gold", "silver", "copper"]
print(f"{elements = }")
print(f"{elements[1] = }")

print(f"{elements[0] = }", f"{elements[-3] = }")
print(f"{elements[2] = }", f"{elements[-1] = }")

print(f"{elements[0:2] = }")
print(f"{elements[-3:-1] = }")
print(f"{elements[2:] = }")

elements[1] = "titan"
print(f"{elements = }")

elements.append("silver")
print(f"{elements = }")

print(f"{elements+elements[:2] = }")
print(f"{elements * 2 = }")
print(f"{elements = }")
```
